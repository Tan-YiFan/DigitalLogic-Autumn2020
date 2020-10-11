`include "ref.svh"
module ans (
    input instruction_t instr,
    output data_t aluout,
    output decoded_op_t decoded_op,
    output logic is_alu
);

    // decoder
    decode_data_t decode_data;

    op_t op;
    assign op = instr[31:26];

    func_t func;
    assign func = instr[5:0];

    byte_t imm1, imm2;
    assign imm1 = instr[25:18];
    assign imm2 = instr[17:10];

    shamt_t shamt;
    assign shamt = instr[9:7];

    decoder_ref decoder_ref(.instr, 
                            .decode_data, 
                            .is_alu);

    alu_ref alu_ref(.src1(imm1), 
                    .src2(imm2),
                    .shamt(shamt),
                    .alufunc(decode_data.alufunc),
                    .aluout(aluout));

    assign decoded_op = decode_data.op;
endmodule

module decoder_ref (
    input instruction_t instr,
    output decode_data_t decode_data,
    output logic is_alu
);
    byte_t imm1, imm2;
    assign imm1 = instr[25:18];
    assign imm2 = instr[17:10];
    always_comb begin
        decode_data = '0;
        is_alu = '0;
        unique case(op)
            OP_ALU_REF: begin
                is_alu = 1'b1;
                unique case(funct)
                    F_ADD_REF: begin
                        decode_data.op = ADD_REF;
                        decode_data.alufunc = ALU_ADD_REF;
                    end
                    F_SUB_REF: begin
                        decode_data.op = SUB_REF;
                        decode_data.alufunc = ALU_SUB_REF;
                    end
                    F_SLT_REF: begin
                        decode_data.op = SLT_REF;
                        decode_data.alufunc = ALU_SLT_REF;
                    end
                    F_AND_REF: begin
                        decode_data.op = AND_REF;
                        decode_data.alufunc = ALU_AND_REF;
                    end
                    F_NOR_REF: begin
                        decode_data.op = NOR_REF;
                        decode_data.alufunc = ALU_NOR_REF;
                    end
                    F_OR_REF: begin
                        decode_data.op = OR_REF;
                        decode_data.alufunc = ALU_OR_REF;
                    end
                    F_XOR_REF: begin
                        decode_data.op = XOR_REF;
                        decode_data.alufunc = ALU_XOR_REF;
                    end
                    F_NOT_REF: begin
                        decode_data.op = NOT_REF;
                        decode_data.alufunc = ALU_NOT_REF;
                    end
                    F_SLL_REF: begin
                        decode_data.op = SLL_REF;
                        decode_data.alufunc = ALU_SLL_REF;
                    end
                    F_SRL_REF: begin
                        decode_data.op = SRL_REF;
                        decode_data.alufunc = ALU_SRL_REF;
                    end
                    F_SRA_REF: begin
                        decode_data.op = SRA_REF;
                        decode_data.alufunc = ALU_SRA_REF;
                    end
                    default: begin
                        is_alu = 1'b0;
                    end
                endcase
            end
            OP_LW_REF: begin
                decode_data.op = LW_REF;
                decode_data.memread = 1'b1;
            end
            OP_SW_REF: begin
                decode_data.op = SW_REF;
                decode_data.memwrite = 1'b1;
            end
            OP_J_REF: begin
                decode_data.op = J_REF;
                decode_data.branch_taken = 1'b1;
            end
            OP_BEQ_REF: begin
                decode_data.op = BEQ_REF;
                decode_data.branch_taken = imm1 == imm2;
            end
            OP_BNE_REF: begin
                decode_data.op = BNE_REF;
                decode_data.branch_taken = imm1 != imm2;
            end
            default: begin
                
            end
        endcase
    end
endmodule

module alu_ref (
    input byte_t src1, src2,
    input shamt_t shamt,
    input alufunc_t alufunc,
    output byte_t aluout
);
    always_comb begin
        unique case(alufunc)
            ALU_ADD_REF: begin
                aluout = src1 + src2;
            end
            ALU_SUB_REF: begin
                aluout = src1 - src2;
            end
            ALU_SLT_REF: begin
                aluout = signed'(src1) < signed'(src2);
            end
            ALU_AND_REF: begin
                aluout = src1 & src2;
            end
            ALU_NOR_REF: begin
                aluout = ~(src1 | src2);
            end
            ALU_OR_REF: begin
                aluout = src1 | src2;
            end
            ALU_XOR_REF: begin
                aluout = src1 ^ src2;
            end
            ALU_NOT_REF: begin
                aluout = ~src1;
            end
            ALU_SLL_REF: begin
                aluout = src1 << shamt;
            end
            ALU_SRL_REF: begin
                aluout = src1 >> shamt;
            end
            ALU_SRA_REF: begin
                aluout = signed'(src1) >>> shamt;
            end
            default: begin
                aluout = '0;
            end
        endcase
    end
endmodule
