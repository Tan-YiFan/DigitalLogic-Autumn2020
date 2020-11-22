`ifndef __MIPS_SVH
`define __MIPS_SVH

// op
parameter OP_RT    =       6'b000000;
parameter OP_ADDIU =       6'b001001;
parameter OP_SLTI  =       6'b001010;
parameter OP_SLTIU =       6'b001011;
parameter OP_ANDI  =       6'b001100;
parameter OP_LUI   =       6'b001111;
parameter OP_BEQ   =       6'b000100;
parameter OP_BNE   =       6'b000101;
parameter OP_J     =       6'b000010;
parameter OP_JAL   =       6'b000011;
parameter OP_LW    =       6'b100011;
parameter OP_SW    =       6'b101011;

// funct
parameter F_ADDU   =       6'b100001;
parameter F_SUBU   =       6'b100011;
parameter F_SLT    =       6'b101010;
parameter F_SLTU   =       6'b101011;
parameter F_AND    =       6'b100100;
parameter F_NOR    =       6'b100111;
parameter F_OR     =       6'b100101;
parameter F_XOR    =       6'b100110;
parameter F_SLL    =       6'b000000;
parameter F_SRA    =       6'b000011;
parameter F_SRL    =       6'b000010;
parameter F_JR     =       6'b001000;

typedef logic[31:0] word_t;
typedef logic[5:0] raw_func_t;
typedef logic[5:0] raw_op_t;

typedef logic[4:0] shamt_t;

typedef enum logic [3:0] {
    ALU_ADDU, ALU_SUBU, ALU_AND, ALU_OR, ALU_NOR,
    ALU_SLL, ALU_SRA, ALU_SRL, ALU_XOR, ALU_LUI,
    ALU_SLT, ALU_SLTU, ALU_PASSA, ALU_PASSB
} alufunc_t;

typedef enum logic {
    REGB, IMM
} alusrcb_t;

typedef struct packed {
    alufunc_t alufunc;
    logic memread;
    logic memwrite;
    logic regwrite;
    alusrcb_t alusrcb;
    logic jump;
    logic jr;
    logic branch;
    logic zeroext;
    logic shamt_valid;
    logic is_link;
} control_t;

typedef enum logic [4:0] {
    ADDU, RESERVED, BEQ, BNE, J, JAL, 
    LW, SW, SUBU, SLT, SLTU, 
    AND, NOR, OR, XOR, SLL, SRA, SRL, 
    JR, LUI
} decoded_op_t;

typedef logic[4:0] creg_addr_t;
typedef struct packed {
    decoded_op_t op;
    control_t ctl;
    creg_addr_t rs, rt, rd;
    creg_addr_t writereg;
    word_t extended_imm;
} decoded_instr_t;

`endif

