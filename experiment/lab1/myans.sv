(* keep = "true" *)module ans (
    input logic [3:0]in1,
    input logic [4:0]in2,
    input logic [15:0]in3, in4,
    output logic [15:0]ans1,
    output logic [31:0]ans2,
    output logic [3:0]ans3,
    output logic [3:0]ans4
);
    ans_decoder4_16 ans_sim1(.in(in1), .out(ans1));
    ans_decoder5_32 ans_sim2(.in(in2), .out(ans2));
    ans_encoder16_4 ans_sim3(.in(in3), .out(ans3));
    ans_priority_encoder16_4 ans_sim4(.in(in4), .out(ans4));
endmodule


module ans_decoder4_16 (
    input logic [3:0]in,
    output logic [15:0]out
);
    // TODO: write your code here
    assign out = 16'b1 << in;
    
endmodule

module ans_decoder5_32 (
    input logic [4:0]in,
    output logic [31:0]out
);
    assign out = 32'b1 << in;
endmodule

module ans_encoder16_4 (
    input logic [15:0]in,
    output logic [3:0]out
);
    // TODO: add logic here
    always_comb begin
        out = '0;
        for (int i = 0; i < 16; i++) begin
            if (in[i]) begin
                out = 4'(i);
            end
        end
    end
    
endmodule

module ans_priority_encoder16_4(
    input logic [15:0]in,
    output logic [3:0]out
);
    // TODO: add logic here
    always_comb begin
        out = '0;
        for (int i = 0; i < 16; i++) begin
            if (in[i]) begin
                out = 4'(i);
            end
        end
    end
endmodule