module decoder4_16 (
    input logic [3:0]in,
    output logic [15:0]out
);
    // TODO: write your code here
    
endmodule

module decoder5_32 (
    input logic [4:0]in,
    output logic [31:0]out
);
    decoder4_16 decoder1(
        // TODO: add ports here
        
    );

    decoder4_16 decoder2(
        // TODO: add ports here

    );
endmodule

module encoder16_4 (
    input logic [15:0]in,
    output logic [3:0]out
);
    // TODO: add logic here
    
endmodule

module priority_encoder16_4(
    input logic [15:0]in,
    output logic [3:0]out
);
    // TODO: add logic here

endmodule