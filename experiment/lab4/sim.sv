module sim (
    
);
    logic clk, resetn;
    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        #100 resetn = 1'b1;
    end
    always #5 clk = ~clk;
    logic [4:0] counter, counter_nxt;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            counter <= '0;
        end else begin
            counter <= counter_nxt;
        end
    end
    logic [3:0]in;
    logic [6:0]out_138, out_151, out_ans;
    assign in = counter[3:0];

    lab4 lab4_inst(.*);
    ans ans_inst(.in, .out(out_ans));

    always_comb begin
        counter_nxt = counter;
        if ((counter != 5'h10) && (out_138 == out_ans) && (out_151 == out_ans)) begin
            counter_nxt = counter_nxt + 1;
        end
    end
    
    always_ff @(posedge clk) begin
        if (~resetn) begin
            
        end else if (counter == 5'h10`) begin
            $display("PASS!\n");
            $finish;
        end else if (~(out_138 === out_ans)) begin
            $display("[%d ns]: Seg_138 (input 0x%x) expected 0x%x, got 0x%x!\n", $time, in, out_ans, out_138);
            $finish;
        end else if (~(out_151 === out_ans)) begin
            $display("[%d ns]: Seg_151 (input 0x%x) expected 0x%x, got 0x%x!\n", $time, in, out_ans, out_151);
            $finish;
        end
    end
    
endmodule
