`include "mips.svh"
module decoder (
    input word_t raw_instr,
    output decoded_instr_t decoded_instr
);
    raw_op_t raw_op;
    assign raw_op = raw_instr[31:26];

    raw_func_t raw_func;
    assign raw_func = raw_instr[5:0];
    control_t ctl;
    decoded_op_t op;
    always_comb begin
        ctl = '0;
        op = ADDU;
        unique case(raw_op)
            
            OP_RT: begin
                unique case(raw_func)
                    F_ADDU: begin
                        op = ADDU;
                        ctl.alufunc = ALU_ADDU;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_SUBU: begin
                        op = SUBU;
                        ctl.alufunc = ALU_SUBU;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_SLT: begin
                        op = SLT;
                        ctl.alufunc = ALU_SLT;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_SLTU: begin
                        op = SLTU;
                        ctl.alufunc = ALU_SLTU;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_AND: begin
                        op = AND;
                        ctl.alufunc = ALU_AND;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_NOR: begin
                        op = NOR;
                        ctl.alufunc = ALU_NOR;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_OR: begin
                        op = OR;
                        ctl.alufunc = ALU_OR;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_XOR: begin
                        op = XOR;
                        ctl.alufunc = ALU_XOR;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_SLL: begin
                        op = SLL;
                        ctl.alufunc = ALU_SLL;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                        ctl.shamt_valid = 1'b1;
                    end
                    F_SRA: begin
                        op = SRA;
                        ctl.alufunc = ALU_SRA;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                        ctl.shamt_valid = 1'b1;
                    end
                    F_SRL: begin
                        op = SRL;
                        ctl.alufunc = ALU_SRL;
                        ctl.regwrite = 1'b1;
                        ctl.alusrcb = REGB;
                    end
                    F_JR: begin
                        op = JR;
                        ctl.jump = 1'b1;
                        ctl.jr = 1'b1;
                        ctl.alufunc = ALU_PASSA;
                    end
                    default: begin
                        op = RESERVED;
                    end
                endcase
            end
            OP_ADDIU: begin
                op = ADDU;
                ctl.alufunc = ALU_ADDU;
                ctl.regwrite = 1'b1;
                ctl.alusrcb = IMM;
            end
            OP_SLTI: begin
                op = SLT;
                ctl.alufunc = ALU_SLT;
                ctl.regwrite = 1'b1;
                ctl.alusrcb = IMM;
            end
            OP_SLTIU: begin
                op = SLTU;
                ctl.alufunc = ALU_SLTU;
                ctl.regwrite = 1'b1;
                ctl.alusrcb = IMM;
            end
            OP_ANDI: begin
                op = AND;
                ctl.alufunc = ALU_AND;
                ctl.regwrite = 1'b1;
                ctl.zeroext = 1'b1;
                ctl.alusrcb = IMM;
            end
            OP_ORI: begin
                op = OR;
                ctl.alufunc = ALU_OR;
                ctl.regwrite = 1'b1;
                ctl.zeroext = 1'b1;
                ctl.alusrcb = IMM;
            end
            OP_LUI: begin
                op = LUI;
                ctl.alufunc = ALU_LUI;
                ctl.regwrite = 1'b1;
                ctl.alusrcb = IMM;
            end
            OP_BEQ: begin
                op = BEQ;
                ctl.branch = 1'b1;
            end
            OP_BNE: begin
                op = BNE;
                ctl.branch = 1'b1;
            end
            OP_J: begin
                op = J;
                ctl.jump = 1'b1;
            end
            OP_JAL: begin
                op = JAL;
                ctl.jump = 1'b1;
                ctl.regwrite = 1'b1;
                ctl.is_link = 'b1;
            end
            OP_LW: begin
                op = LW;
                ctl.regwrite = 1'b1;
                ctl.memread = 1'b1;
                ctl.alusrcb = IMM;
            end
            OP_SW: begin
                op = SW;
                ctl.memwrite = 1'b1;
                ctl.alusrcb = IMM;
            end
            default: begin
                op = RESERVED;
            end
        endcase
    end
    
    creg_addr_t rs, rt, rd, writereg;
    assign rs = raw_instr[25:21];
    assign rt = raw_instr[20:16];
    assign rd = raw_instr[15:11];
    assign writereg = (ctl.is_link) ? 5'b11111 : 
                      (raw_op == OP_RT ? rd : rt);

    word_t extended_imm;
    assign extended_imm = ctl.zeroext ? 
                         {16'b0, raw_instr[15:0]} : 
                         {{16{raw_instr[15]}}, raw_instr[15:0]};
    // packing
    assign decoded_instr.ctl = ctl;
    assign decoded_instr.op = op;
    assign decoded_instr.rs = rs;
    assign decoded_instr.rt = rt;
    assign decoded_instr.rd = rd;
    assign decoded_instr.extended_imm = extended_imm;
    assign decoded_instr.writereg = writereg;

endmodule
