module top (
    input logic clk, resetn,
    input logic [15:0]SW,
    output logic [7:0]AN,
    output logic [6:0]A2G
);
    
    logic [10:0] counter;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            counter <= '0;
        end else begin
            counter <= counter + 1;
        end
    end
    
    logic [15:0][6:0] outs;

    assign AN = SW[7:0] & (8'h1 << counter[8:6]);
    assign A2G = outs[{SW[15], counter[8:6]}];

    for (genvar i = 0; i < 15; i++) begin
        if ( i[0] ) begin
            lab4 lab4_inst1(.in(i[2:0]), .out_138(outs[i]));
        end else begin
            lab4 lab4_inst2(.in(i[2:0]), .out_151(outs[i]));
        end
    end
    
    
endmodule
