module ram2 (
    input logic clk, 
    input logic wen,
    input logic [3:0] addr,
    input logic [3:0] din,
    output logic [3:0] qout
);
    logic [15:0][3:0] ram;
    for (genvar i = 0; i < 16; i++) begin
        always_ff @(posedge clk) begin
            if (wen && i[3:0] == addr) begin
                ram[i] <= din;
            end
        end
    end
    assign qout = ram[addr];
    
endmodule
