module sim (
    
);
    logic clk, resetn;

    initial begin
        clk = '0;
        resetn = '0;
        #100 resetn = '1;
    end
    always #5 clk = ~clk;

    logic has_car;

    initial begin
        has_car = 1'b0;
    end

    always #1000 has_car = ~has_car;
    lab6 #(.SIM(1'b1)) lab6_inst(.clk, .resetn, .has_car);
endmodule
