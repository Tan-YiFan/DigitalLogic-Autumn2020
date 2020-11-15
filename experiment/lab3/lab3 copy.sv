module lab3 (
    (*keep="true"*)input logic [3:0]a, b, cin,
    (*keep="true"*)output logic [3:0]c_ripple, c_ahead,
    (*keep="true"*)output logic cout_ripple, cout_ahead
    // c = a + b
);
    ripple_adder ripple_adder(.a, .b, .cin, .c(c_ripple), .cout(cout_ripple));
    ahead_adder ahead_adder(.a, .b, .cin, .c(c_ahead), .cout(cout_ahead));
endmodule

(*keep="true"*)module full_adder (
    (*keep="true"*)input logic a, b, cin,
    (*keep="true"*)output logic c, cout
);
    assign c = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

(*keep="true"*)module ripple_adder (
    (*keep="true"*)input logic [3:0]a, b,
    (*keep="true"*)input logic cin,
    (*keep="true"*)output logic [3:0]c,
    (*keep="true"*)output logic cout
);
    // TODO: Add logic here; Only use full_adder instants here
    (*keep="true"*)logic [3:0]cin_temp, cout_temp;
    assign cin_temp = {cout_temp[2:0], cin};
    for (genvar i = 0; i < 4; i++) begin
        full_adder full_adder(.a(a[i]), .b(b[i]), .cin(cin_temp[i]), .c(c[i]), .cout(cout_temp[i]));
    end
    assign cout = cout_temp[3];
    // logic [4:0] p, q;
    // assign {cout, c} = {1'b0, a} + {1'b0, b} + {4'b0, cin};
endmodule

// module ahead_adder (
//     input logic [3:0]a, b,
//     input logic cin,
//     output logic [3:0]c,
//     output logic cout
// );
//     // TODO: Add logic here

// endmodule

(*keep="true"*)module gp_fulladder(
    (*keep="true"*)input logic A,
    (*keep="true"*)input logic B,
    (*keep="true"*)input logic Cin,
    (*keep="true"*)output logic S,
    (*keep="true"*)output logic G,P
);
    assign S = A ^ B ^ Cin;
    assign G = A & B;
    assign P = A ^ B;
    
endmodule
(*keep="true"*)module chain(
    (*keep="true"*)input logic [3:0]G,
    (*keep="true"*)input logic [3:0]P,
    (*keep="true"*)input logic Cin,
    (*keep="true"*)output logic C1,C2,C3,C4
);
    assign C1 = G[0] | (P[0] & Cin);
    assign C2 = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    assign C3 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
    assign C4 = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin); 
endmodule
(*keep="true"*)module ahead_adder(
    (*keep="true"*)input logic [3:0]a,
    (*keep="true"*)input logic [3:0]b,
    (*keep="true"*)input logic cin,
    (*keep="true"*)output logic [3:0]c,
    (*keep="true"*)output logic cout
    );
    (*keep="true"*)logic [3:0]G;
    (*keep="true"*)logic [3:0]P;
//    assign G = A & B;
//    assign P = A ^ B;
    (*keep="true"*)logic C1,C2,C3;
    chain f(G,P,cin,C1,C2,C3,cout);
    gp_fulladder gp0(a[0],b[0],cin,c[0],G[0],P[0]),
                 gp1(a[1],b[1],C1,c[1],G[1],P[1]),
                 gp2(a[2],b[2],C2,c[2],G[2],P[2]),
                 gp3(a[3],b[3],C3,c[3],G[3],P[3]);
endmodule
