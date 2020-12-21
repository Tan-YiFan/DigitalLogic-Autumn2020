module top (
    input logic clk, resetn,
    input logic [15:0] SW,
    output logic [15:0] LED
);

// clk is 100MHz

logic clk_1hz;
clock_convert clock_convert_inst0(.clk_100mhz(clk), .resetn, .clk_1hz(clk_1hz));

// TODO: add circuit codes here

endmodule
