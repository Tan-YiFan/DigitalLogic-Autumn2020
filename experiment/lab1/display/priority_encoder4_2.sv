module priority_encoder4_2 (
    input logic [3:0] in,
    output logic [1:0] out
);
    
endmodule

module priority_encoder4_2ver1 (
    input logic [3:0] in,
    output logic [1:0] out
);
    always_comb begin
        if (in[3]) begin
            out = 2'b11;
        end else if (in[2]) begin
            out = 2'b10;
        end else if (in[1]) begin
            out = 2'b01;
        end else if (in[0]) begin
            out = 2'b00;
        end else begin
            out = 2'b00;
        end
    end
    
endmodule

module priority_encoder4_2 (
    input logic [3:0] in,
    output logic [1:0] out
);
    always_comb begin
        priority case(1'b1) begin
            in[3]: out = 2'b11;
            in[2]: out = 2'b10;
            in[1]: out = 2'b01;
            in[0]: out = 2'b00;
            default: begin
                out = 2'b00;
            end
        end
    end
    
endmodule
