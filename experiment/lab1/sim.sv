module sim (
    
);
    logic debug_decoder4_16;
    logic debug_decoder5_32;
    logic debug_encoder16_4;
    logic debug_priority_encoder16_4;

    // TODO: modify the debug enable to 1'b0 if you don't want to debug the module
    assign debug_decoder4_16 = 1'b1;
    assign debug_decoder5_32 = 1'b1;
    assign debug_encoder16_4 = 1'b1;
    assign debug_priority_encoder16_4 = 1'b1;

    logic [3:0]sim1_in;
    logic [4:0]sim2_in;
    logic [15:0]sim3_in, sim4_in;
    logic en;

    logic [15:0]sim1_out, sim1_tmp;
    logic [31:0]sim2_out, sim2_tmp;
    logic [3:0]sim3_out, sim4_out, sim3_tmp, sim4_tmp;

    logic [15:0]ans1;
    logic [31:0]ans2;
    logic [3:0]ans3;
    logic [3:0]ans4;

    assign sim1_out = debug_decoder4_16 ? sim1_tmp : ans1;
    assign sim2_out = debug_decoder5_32 ? sim2_tmp : ans2;
    assign sim3_out = debug_encoder16_4 ? sim3_tmp : ans3;
    assign sim4_out = debug_priority_encoder16_4 ? sim4_tmp : ans4;
    
    decoder4_16 sim1(.in(sim1_in), .out(sim1_tmp), .en);
    decoder5_32 sim2(.in(sim2_in), .out(sim2_tmp));
    encoder16_4 sim3(.in(sim3_in), .out(sim3_tmp));
    priority_encoder16_4 sim4(.in(sim4_in), .out(sim4_tmp));

    ans ans_inst(.in1(sim1_in), .in2(sim2_in), .in3(sim3_in), .in4(sim4_in), .*);

    logic clk, resetn;
    always #5 clk = ~clk;
    logic [16:0]counter, counter_nxt;
    assign sim1_in = counter[3:0];
    assign sim2_in = counter[4:0];
    assign sim3_in = 16'b1 << counter[3:0];
    assign sim4_in = counter[15:0];
    assign en = counter[4];
    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        #100 resetn = 1'b1;
    end

    always_ff @(posedge clk) begin
        if ( ~resetn ) begin
            counter <= '0;
        end else begin
            counter <= counter_nxt;
        end
    end
    
    always_comb begin
        counter_nxt = counter;
        if (counter < 17'h10000 && sim1_out == ans1 && sim2_out == ans2 && sim3_out == ans3 && (sim4_in == 16'b0 || sim4_out == ans4) ) begin
            counter_nxt = counter_nxt + 1;
        end
    end
    
    always_ff @(posedge clk) begin
        if (~resetn) begin
            
        end else if (counter == 17'h10000) begin
            $display("PASS!\n");
            $finish;
        end else if (sim1_out != ans1) begin
            $display("[%d ns]: Decoder4_16 expected 0x%x, got 0x%x!\n", $time, ans1, sim1_out);
            $finish;
        end else if (sim2_out != ans2) begin
            $display("[%d ns]: Decoder5_32 expected 0x%x, got 0x%x!\n", $time, ans2, sim2_out);
            $finish;
        end else if (sim3_out != ans3) begin
            $display("[%d ns]: Encoder16_4 expected 0x%x, got 0x%x!\n", $time, ans3, sim3_out);
            $finish;
        end else if (sim4_out != ans4) begin
            $display("[%d ns]: Priority_encoder16_4 expected 0x%x, got 0x%x!\n", $time, ans4, sim4_out);
            $finish;
        end else if (counter_nxt == counter) begin
            $display("Unknown error!");
            $finish;
        end
    end
    
endmodule
