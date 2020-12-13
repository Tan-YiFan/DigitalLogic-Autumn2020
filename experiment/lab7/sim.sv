module sim (
    
);
    logic clk, resetn;
    logic [15:0] SW;

    top #(.SIM(1'b1)) top_inst(.clk, .resetn, .SW);

    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        #100 resetn = 1'b1;
    end

    always #5 clk = ~clk;

    
endmodule
