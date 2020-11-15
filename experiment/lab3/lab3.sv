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
    logic [3:0]G, P;
    logic [4:0]CO;
    assign G = a & b;
    assign P = a ^ b;
    
    assign CO[0] = cin;
    // assign CO[1]= G[0] | (cin&P[0]);
    // assign CO[2]= G[1] | (P[1]&G[0]) | (&P[1:0]&cin);
    // assign CO[3]= G[2] | (P[2]&G[1]) | (&P[2:1]&G[0]) | (&P[2:0]&cin);
    // assign CO[4]= G[3] | (P[3]&G[2]) | (&P[3:2]&G[1]) | (&P[3:1]&G[0]) | (&P[3:0]&cin);
    logic temp; // One product item
    always_comb begin
        for (int i = 1; i <= 4; i++) begin
            CO[i] = G[i - 1];
            for (int j = i - 1; j >= 0; j--) begin
                temp = (j == 0) ? cin : G[j - 1];
                for (int k = i - 1; k >= j; k--) begin
                    temp &= P[k];
                end
                CO[i] |= temp;
            end
        end
    end
    
    // for (genvar i = 1; i <= 4; i++) begin
    //     carry_gen #(.BIT(i)) carry_gen_inst(.cin, .G(G[i - 1:0]), .P(P[i - 1:0]), .cout(CO[i]));
    // end
    
    assign c = a ^ b ^ CO;
    assign cout = CO[4];
endmodule
module carry_gen 
    #(parameter BIT = 1)
    (
    input logic cin,
    input logic [BIT-1:0]G, P,
    output logic cout
);
    logic [BIT - 1 + 1:0] products;
    assign cout = |products;
    for (genvar i = 0; i <= BIT; i++) begin
        case(i)
            0: assign products[i] = &P & cin;
            BIT: assign products[i] = G[i - 1];
            default: begin
                assign products[i] = G[i - 1] & (&P[BIT-1:i]);
            end
        endcase
    end
endmodule