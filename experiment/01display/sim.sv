module sim (
    
);
    logic clk, resetn;
    logic [7:0]sw;
    logic[7:0][6:0]segs;
    controller controller(.*);
    always #5 clk = ~clk;
    // clk_gen clk_gen(.clk_out(clk));
    
    initial begin
        clk = 0;
        resetn = '0;
        #50 resetn = '1;

        
    end
endmodule