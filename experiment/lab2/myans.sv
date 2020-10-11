`include "ref.svh"
module ans (
    input instruction_t instr,
    output data_t aluout,
    output decoded_op_t decoded_op,
    output logic check
);
    decode_data_t decode_data;

    op_t op;
    assign op = instr[31:26];

    func_t func;
    assign func = instr[5:0];

    data_t imm1, imm2;
    assign imm1 = instr[25:18];
    assign imm2 = instr[17:10];

    shamt_t shamt;
    assign shamt = instr[9:7];

    always_comb begin
        decode_date = '0;
        unique case(op)
            OP_ALU_REF: begin
                unique case(funct)
                    F_ADD_REF: begin
                        
                    end
                    F_SUB_REF: begin
                        
                    end
                    F_SLT_REF: begin
                        
                    end
                    F_AND_REF: begin
                        
                    end
                    F_NOR_REF: begin
                        
                    end
                    F_OR_REF: begin
                        
                    end
                    F_XOR_REF: begin
                        
                    end
                    F_NOT_REF: begin
                        
                    end
                    F_SLL_REF: begin
                        
                    end
                    F_SRL_REF: begin
                        
                    end
                    F_SRA_REF: begin
                        
                    end
                    default: begin
                        
                    end
                endcase
            end
            OP_LW_REF: begin
                
            end
            OP_SW_REF: begin
                
            end
            OP_J_REF: begin
                
            end
            OP_BEQ_REF: begin
                
            end
            OP_BNE_REF: begin
                
            end
            default: begin
                
            end
        endcase
    end
    always_comb begin
        unique case(decode_data.alufunc)
            ALU_ADD_REF: begin
                
            end
            ALU_SUB_REF: begin
                
            end
            ALU_SLT_REF: begin
                
            end
            ALU_AND_REF: begin
                
            end
            ALU_NOR_REF: begin
                
            end
            ALU_OR_REF: begin
                
            end
            ALU_XOR_REF: begin
                
            end
            ALU_NOT_REF: begin
                
            end
            ALU_SLL_REF: begin
                
            end
            ALU_SRL_REF: begin
                
            end
            ALU_SRA_REF: begin
                
            end
            default: begin
                
            end
        endcase
    end
    
endmodule
