module top (
    input logic CLK100MHZ, CPU_RESETN,
    output logic [7:0] AN,
    output logic [6:0] A2G,
    input logic [7:0] SW,
    output logic [7:0] LED
);
    
    assign LED = SW;
    logic[7:0][6:0]segs;
    controller ctler(
        .clk(CLK100MHZ),
        .resetn(CPU_RESETN),
        .sw(SW),
        .segs
    );
    logic [19:0] an_ctl;
    always_ff @(posedge CLK100MHZ, negedge CPU_RESETN) begin
        if (~CPU_RESETN) begin
            an_ctl <= '0;
        end else begin
            an_ctl <= an_ctl + 1;
        end
    end
    assign AN = ~(8'b1 << an_ctl[19:17]);
    assign A2G = segs[an_ctl[19:17]];

endmodule
 