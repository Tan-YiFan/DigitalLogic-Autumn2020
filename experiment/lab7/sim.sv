module sim (
    
);
    logic clk, resetn;
    logic [15:0] SW;
    logic [15:0] LED;
    top #(.SIM(1'b1)) top_inst(.clk, .resetn, .SW, .LED);

    parameter logic[3:0]x = 4'b1010;
    parameter logic[3:0]y = 4'b0111;
    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        #100 resetn = 1'b1;

        // TODO: add something here


        $finish;
    end

    always #5 clk = ~clk;

    
endmodule
