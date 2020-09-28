module top (
    input logic clk, resetn,
    output logic LED16_G, LED16_R, LED17_G,
    output logic LED
);
    logic [3:0]top1_in;
    logic [4:0]top2_in;
    logic [15:0]top3_in, top4_in;

    logic [15:0]top1_out;
    logic [31:0]top2_out;
    logic [3:0]top3_out, top4_out;

    logic [15:0]ans1;
    logic [31:0]ans2;
    logic [3:0]ans3;
    logic [3:0]ans4;


    
    decoder4_16 top1(.in(top1_in), .out(top1_out));
    decoder5_32 top2(.in(top2_in), .out(top2_out));
    encoder16_4 top3(.in(top3_in), .out(top3_out));
    priority_encoder16_4 top4(.in(top4_in), .out(top4_out));

    ans_decoder4_16 ans_top1(.in(top1_in), .out(ans1));
    ans_decoder5_32 ans_top2(.in(top2_in), .out(ans2));
    ans_encoder16_4 ans_top3(.in(top3_in), .out(ans3));
    ans_priority_encoder16_4 ans_top4(.in(top4_in), .out(ans4));
endmodule
