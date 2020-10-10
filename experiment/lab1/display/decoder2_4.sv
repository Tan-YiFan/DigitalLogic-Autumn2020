module decoder2_4 (
    input logic [1:0] in,
    output logic [3:0] out,
    input logic en
);
    
endmodule

module decoder2_4ver1 (
    input logic [1:0] in,
    output logic [3:0] out,
    input logic en
);
    assign out[3] = en & in[1] & in[0];
    assign out[2] = en & in[1] & ~in[0];
    assign out[1] = en & ~in[1] & in[0];
    assign out[0] = en & ~in[1] & ~in[0];
    
endmodule

module decoder2_4ver2 (
    input logic [1:0] in,
    output logic [3:0] out,
    input logic en
);
    always_comb begin
        unique case(in) begin
            2'd0: out = 4'b0001 & {4{en}};
            2'd1: out = 4'b0010 & {4{en}};
            2'd2: out = 4'b0100 & {4{en}};
            2'd3: out = 4'b1000 & {4{en}};
            default: begin
                out = '0;
            end
        end
    end
    
endmodule

module decoder2_4ver3 (
    input logic [1:0] in,
    output logic [3:0] out,
    input logic en
);
    always_comb begin
        out = '0;
        unique case(in) begin
            2'd0: out[0] = 1'b1;
            2'd1: out[1] = 1'b1;
            2'd2: out[2] = 1'b1;
            2'd3: out[3] = 1'b1;
            default: begin
                out[0] = 1'b0;
            end
        end
        if (en == 1'b0) begin
            out = '0;
        end
    end
    
endmodule
