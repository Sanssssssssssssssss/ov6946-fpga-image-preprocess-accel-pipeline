`timescale 1ns / 1ps
module rgb2gmii (
    input              pixel_clk,       // 74.25 MHz Pixel clock for sampling
    input              fast_clk,        // 371 MHz clock for fast data sending
    input              rst_n,           // Active low reset
    input              vs_in,           // Vertical Sync
    input              hs_in,           // Horizontal Sync
    input              de_in,           // Data Enable
    input      [7:0]   r_in,            // Red channel
    input      [7:0]   g_in,            // Green channel
    input      [7:0]   b_in,            // Blue channel
    output reg         one_pkt_done,    // Data packet done signal, maintains high for longer duration
    output reg [7:0]   wrdata,          // 8-bit data output for UDP
    output reg         wrreq            // Write request signal
);

    parameter START_COL = 487;
    parameter END_COL = START_COL + 400;
    parameter START_ROW = 163;
    parameter END_ROW = START_ROW + 400;
    parameter HOLD_CYCLES = 800;        // Duration to hold one_pkt_done high

    reg [11:0] row_cnt = 0;
    reg [11:0] col_cnt = 0;
    reg [1:0] rgb_mux_state = 0;        // MUX state to control RGB output order
    reg send_enable = 0;                // Control signal to enable sending RGB data for each row
    reg send_in_progress = 0;           // Sending in progress flag
    reg [9:0] done_hold_counter = 0;    // Counter to hold one_pkt_done high for specific duration

    // Valid pixel region determination
    wire sample_valid = (de_in && row_cnt >= START_ROW && row_cnt < END_ROW &&
                         col_cnt >= START_COL && col_cnt < END_COL);

    // Row and column counters and send_enable control based on pixel clock
    always @(posedge pixel_clk or negedge rst_n) begin
        if (!rst_n) begin
            row_cnt <= 0;
            col_cnt <= 0;
            one_pkt_done <= 0;
            send_enable <= 0;
            done_hold_counter <= 0;
        end else begin
            if (vs_in) begin
                row_cnt <= 0;
            end else if (hs_in) begin
                row_cnt <= row_cnt + 1;
                col_cnt <= 0;
                one_pkt_done <= 1;               // Start one_pkt_done high at row end
                send_enable <= 1;                // Enable data sending for the entire row
                done_hold_counter <= HOLD_CYCLES; // Load hold counter with required cycles
            end else if (de_in) begin
                col_cnt <= col_cnt + 1;
                if (!sample_valid) begin
                    send_enable <= 0;            // Clear send_enable if out of valid region
                end
            end

            // Control the one_pkt_done hold duration
            if (done_hold_counter > 0) begin
                done_hold_counter <= done_hold_counter - 1;
                one_pkt_done <= 1;
            end else begin
                one_pkt_done <= 0;               // Clear one_pkt_done after hold duration
            end
        end
    end

    // Fast clock domain: sending RGB data in sequence
    always @(posedge fast_clk or negedge rst_n) begin
        if (!rst_n) begin
            wrdata <= 8'h00;
            wrreq <= 0;
            rgb_mux_state <= 0;
            send_in_progress <= 0;
        end else if (send_enable && !send_in_progress) begin
            send_in_progress <= 1;               // Start sending RGB data for one pixel
            wrreq <= 1;                          // Indicate data is ready to send
            case (rgb_mux_state)
                2'b00: wrdata <= r_in;           // Red channel
                2'b01: wrdata <= g_in;           // Green channel
                2'b10: wrdata <= b_in;           // Blue channel
            endcase
            rgb_mux_state <= rgb_mux_state + 1;

            // Reset state after Blue channel and disable sending until next pixel
            if (rgb_mux_state == 2'b10) begin
                rgb_mux_state <= 0;
                send_in_progress <= 0;           // Finish sending one pixel
            end
        end else begin
            wrreq <= 0;                          // No data to send when not in valid region
        end
    end
endmodule
