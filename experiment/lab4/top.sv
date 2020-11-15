module top (
    input logic clk, resetn,
    input logic [15:0]SW,
    output logic [7:0]AN,
    output logic [6:0]A2G
);
    
    logic [20:0] counter;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            counter <= '0;
        end else begin
            counter <= counter + 1;
        end
    end
    
    logic [15:0][6:0] outs;
    logic [3:0] temp;
    assign temp = {SW[15], counter[15:13]};
    assign AN = ~(SW[7:0] & (8'h1 << counter[15:13]));
    assign A2G = outs[temp];

    for (genvar i = 0; i < 16; i++) begin
        if ( i[0] ) begin
            lab4 lab4_inst1(.in(i[3:0]), .out_use138(outs[i[3:0]]));
        end else begin
            lab4 lab4_inst2(.in(i[3:0]), .out_use151(outs[i[3:0]]));
        end
    end
    
    
endmodule
