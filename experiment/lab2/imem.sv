module Imem (
    input 
    output instruction_t instr
);
    
    logic [255:0][31:0]imem;
    assign imem = {
        32'hdeadbeef,
        32'hdeadbeef
    }
endmodule