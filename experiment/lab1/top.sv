module top (
    input logic clk, resetn,
    output logic LED16_G, LED16_R, LED17_G,
    output logic LED
);
    decoder4_16 top1();
    decoder5_32 top2();
    encoder16_4 top3();
    priority_encoder16_4 top4();
endmodule
