`timescale 1ns / 1ps

module udp_gmii_transmitter(
    input            reset_n,
    input            gmii_tx_en,
    input   [7:0]    gmii_txd,     // This is your manually packed data
    input            gmii_rx_clk,

    // Outputs to connect with UDP_Sender
    output reg [47:0] remote_mac,
    output reg [31:0] remote_ip,
    output reg [15:0] remote_port,
    output reg [15:0] data_length,
    output reg        one_pkt_done,
    output reg [7:0]  gmii_tx_data_out // New output for passing gmii_txd to the sender
);

// Internal signals for packet processing
reg [15:0] length_counter;
reg        processing_pkt;

// Data processing logic
always @(posedge gmii_rx_clk or negedge reset_n) begin
    if (!reset_n) begin
        remote_mac     <= 48'h00_00_00_00_00_00;
        remote_ip      <= 32'h00_00_00_00;
        remote_port    <= 16'h0000;
        data_length    <= 16'h0000;
        one_pkt_done   <= 1'b0;
        length_counter <= 16'h0000;
        processing_pkt <= 1'b0;
        gmii_tx_data_out <= 8'h00;
    end else if (gmii_tx_en) begin
        // Start processing the packet
        processing_pkt <= 1'b1;
        length_counter <= length_counter + 1;

        // Output the current gmii_txd to gmii_tx_data_out
        gmii_tx_data_out <= gmii_txd;

        // Example: fill in packet fields (adjust as needed)
        if (length_counter == 1) remote_mac <= 48'hB0_47_E9_8D_DD_3A;
        if (length_counter == 2) remote_ip <= 32'hC0_A8_01_70;
        if (length_counter == 3) remote_port <= 16'd5678;             // Example port number

        // Signal that a packet is done when a certain length is reached
        if (length_counter >= 100) begin
            one_pkt_done   <= 1'b1;
            data_length    <= length_counter;
            length_counter <= 16'h0000; // Reset for the next packet
            processing_pkt <= 1'b0;
        end else begin
            one_pkt_done <= 1'b0;
        end
    end else begin
        processing_pkt <= 1'b0;
        one_pkt_done <= 1'b0;
        gmii_tx_data_out <= 8'h00; // Clear the output when gmii_tx_en is not active
    end
end

endmodule
