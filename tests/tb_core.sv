`timescale 1ns / 1ps

module tb_core;
    reg clk = 0;
    always #5 clk = ~clk;
    reg rst_n = 0;
    reg [31:0] dividend = 0;
    reg [15:0] divisor = 1;
    reg valid = 0;
    wire [31:0] quotient;
    wire [15:0] remainder;
    wire out_valid;
    reg [2:0] sync_in = 0;
    wire [2:0] sync_out;
    reg passed = 0;
    integer checked = 0;
    integer i, j;
    reg [31:0] expected_q [0:32];
    reg [15:0] expected_r [0:32];
    reg expected_valid [0:32];
    reg [46:0] history1 = 0, history2 = 0, history3 = 0;

    unsigned_divider divider (
        .clk(clk), .rst_n(rst_n), .dividend(dividend), .divisor(divisor),
        .din_valid(valid), .merchant(quotient), .remainder(remainder),
        .dout_valid(out_valid)
    );
    lag_module #(.LAG1(6), .LAG2(47), .LAG3(47)) delays (
        .clk(clk), .rst_n(rst_n),
        .in_signal1(sync_in[0]), .in_signal2(sync_in[1]), .in_signal3(sync_in[2]),
        .out_signal1(sync_out[0]), .out_signal2(sync_out[1]), .out_signal3(sync_out[2])
    );

    // Arithmetic reference uses simulator / and %, independent of the RTL algorithm.
    always @(posedge clk) begin
        if (!rst_n) begin
            for (j = 0; j <= 32; j = j + 1) expected_valid[j] = 0;
            history1 = 0;
            history2 = 0;
            history3 = 0;
        end else begin
            for (j = 32; j > 0; j = j - 1) begin
                expected_q[j] = expected_q[j-1];
                expected_r[j] = expected_r[j-1];
                expected_valid[j] = expected_valid[j-1];
            end
            expected_q[0] = dividend / divisor;
            expected_r[0] = dividend % divisor;
            expected_valid[0] = valid;
            history1 = {history1[45:0], sync_in[0]};
            history2 = {history2[45:0], sync_in[1]};
            history3 = {history3[45:0], sync_in[2]};
        end
        #1;
        if (out_valid !== expected_valid[32]) $fatal(1, "Divider valid latency/reset");
        if (out_valid) begin
            if (quotient !== expected_q[32] || remainder !== expected_r[32])
                $fatal(1, "Divider arithmetic mismatch");
            checked = checked + 1;
        end
        if (sync_out !== {history3[46], history2[46], history1[5]})
            $fatal(1, "Sync delay mismatch");
    end

    initial begin
        repeat (3) @(negedge clk);
        rst_n = 1;
        for (i = 0; i < 800; i = i + 1) begin
            // Restart with outstanding operations to check valid-pipeline flushing.
            rst_n = (i != 400);
            dividend = i * 32'h9e3779b9;
            divisor = (i % 65535) + 1;
            case (i % 8)
                0: dividend = 0;
                1: divisor = 1;
                2: dividend = 32'hffffffff;
                3: divisor = 16'hffff;
            endcase
            valid = (i % 7 != 0);
            sync_in = {i % 13 == 0, i % 5 == 0, i % 3 == 0};
            @(negedge clk);
        end
        valid = 0;
        sync_in = 0;
        repeat (50) @(negedge clk);
        if (checked < 600) $fatal(1, "Too few arithmetic results checked");
        passed = 1;
        $display("PASS: %0d divider results, valid bubbles, reset and sync delays", checked);
        $finish;
    end

    initial begin
        #20000;
        $fatal(1, "Simulation timeout");
    end
endmodule
