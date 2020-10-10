module encoder4_2 (
    input logic [3:0] in,
    output logic [1:0] out
);
    
endmodule

module encoder4_2ver1 (
    input logic [3:0] in,
    output logic [1:0] out
);
    assign out[1] = (~in[3] & in[2] & ~in[1] & ~in[0]) | 
                    (in[3] & ~in[2] & ~in[1] & ~in[0]);
    assign out[0] = (~in[3] & ~in[2] & in[1] & ~in[0]) | 
                    (in[3] & ~in[2] & ~in[1] & ~in[0]);
endmodule

module encoder4_2ver2 (
    input logic [3:0] in,
    output logic [1:0] out
);
    always_comb begin
        unique case(in) begin
            4'b0001: out = 2'b00;
            4'b0010: out = 2'b01;
            4'b0100: out = 2'b10;
            4'b1000: out = 2'b11;
            default: begin
                out = '0;
            end
        end
    end
    
endmodule
