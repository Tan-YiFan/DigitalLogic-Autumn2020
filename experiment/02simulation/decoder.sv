module decoder (
    input logic [3:0]b,
    output logic [3:0]gray
);
    assign gray[3] = 1'b0;
    assign gray[2:0] = b[3:1] ^ b[2:0];
endmodule
