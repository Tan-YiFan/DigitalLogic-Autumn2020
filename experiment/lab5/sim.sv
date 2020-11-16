module sim (
    
);

logic clk_1hz, clk_100mhz, resetn;
always #500_000_000 clk_1hz = ~clk_1hz;
always #5 clk_100mhz = ~clk_100mhz;

initial begin
    clk_1hz = '0;
    clk_100mhz = '0;
    resetn = 1'b1;
    #100 resetn = 1'b0;
end

// TODO: declare variables here

initial begin
    // TODO: add input drives here

end

// TODO: add module instantiation and other circuit codes here


endmodule
