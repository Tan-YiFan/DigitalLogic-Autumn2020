module lab3 (
    input logic [3:0]a, b, cin,
    output logic [3:0]c_ripple, c_ahead,
    output logic cout_ripple, cout_ahead
    // c = a + b
);
    ripple_adder ripple_adder(.a, .b, .cin, .c(c_ripple), .cout(cout_ripple));
    ahead_adder ahead_adder(.a, .b, .cin, .c(c_ahead), .cout(cout_ahead));
endmodule

module full_adder (
    input logic a, b, cin,
    output logic c, cout
);
    
endmodule


module ripple_adder (
    input logic [3:0]a, b,
    input logic cin,
    output logic [3:0]c,
    output logic cout
);
    // TODO: Add logic here; Only use full_adder instants here

endmodule

module ahead_adder (
    input logic [3:0]a, b,
    input logic cin,
    output logic [3:0]c,
    output logic cout
);
    // TODO: Add logic here

endmodule
