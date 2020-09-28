module top (
    input logic clk, resetn,
    output logic LED16_G, LED16_R, LED17_G
);
    logic [3:0]top1_in;
    logic [4:0]top2_in;
    logic [15:0]top3_in, top4_in;
    logic en;
    
    logic [15:0]top1_out;
    logic [31:0]top2_out;
    logic [3:0]top3_out, top4_out;

    logic [15:0]ans1;
    logic [31:0]ans2;
    logic [3:0]ans3;
    logic [3:0]ans4;

    decoder4_16 top1(.in(top1_in), .out(top1_out), .en(en));
    decoder5_32 top2(.in(top2_in), .out(top2_out));
    encoder16_4 top3(.in(top3_in), .out(top3_out));
    priority_encoder16_4 top4(.in(top4_in), .out(top4_out));

    ans ans_inst_top(.in1(top1_in), .in2(top2_in), .in3(top3_in), .in4(top4_in), .*);

    logic [16:0]counter, counter_nxt;
    assign top1_in = counter[3:0];
    assign top2_in = counter[4:0];
    assign top3_in = 16'b1 << counter[3:0];
    assign top4_in = counter[15:0];
    assign en = counter[4];
    logic [15:0]clk_counter;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            clk_counter <= '0;
            
        end
        else begin
            clk_counter <= clk_counter + 1;
        end
    end
    
    always_ff @(posedge clk_counter[5], negedge resetn) begin
        if ( ~resetn ) begin
            counter <= '0;
            {LED16_G, LED16_R, LED17_G} <= '0;
        end else begin
            counter <= counter_nxt;
            if (counter == 17'h10000) begin
                LED16_G <= 1'b1;
                LED17_G <= 1'b1;
            end else if (counter == counter_nxt) begin
                LED16_R <= 1'b1;
                LED17_G <= 1'b1;
            end
        end
    end
    
    always_comb begin
        counter_nxt = counter;
        if (counter < 17'h10000 && top1_out == ans1 && top2_out == ans2 && top3_out == ans3 && (top4_in == 16'b0 || top4_out == ans4) ) begin
            counter_nxt = counter_nxt + 1;
        end
    end
endmodule
