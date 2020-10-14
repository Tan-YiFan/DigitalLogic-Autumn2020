`include "lab2.svh"
module lab2 (
    input logic [31:0]instr,
    output logic [7:0]aluout
);
    // TODO: add signal declaration here

    decoder myDecoder(
        // TODO: add ports here
        .instr
    );

    alu myALU(
        // TODO: add ports here
    );

endmodule

module decoder (
    // TODO: add port declaration here
    input logic [31:0] instr,
    output myALUfunc_t alufunc,
    output logic [7:0] imm1, imm2,
    output logic [2:0] shamt
);
    // TODO: add logic here
    assign imm1 = instr[25:18];
    assign imm2 = instr[17:10];
    assign shamt = instr[9:7];
    
    /*
        ADD: 4'b0000;
        SUB: 4'b0001;
    */
    
    always_comb begin
        alufunc = RES;
        unique case(instr[31:26])
            OP_ALU: begin
                unique case(instr[5:0])
                    F_ADD: begin
                        alufunc = ALU_ADD;
                    end
                    F_SUB: begin
                        alufunc = ALU_SUB;
                    end
                    default: begin
                        
                    end
                endcase
            end
            default: begin
                
            end
        endcase
    end
    
endmodule

module alu (
    // TODO: add port declaration here
);
    // TODO: add logic here

endmodule
