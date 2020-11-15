`ifndef __REF_SVH
`define __REF_SVH

typedef logic[31:0] instruction_t;
typedef logic[7:0] byte_t;
typedef logic[5:0] op_t; // instr[31:26], before decode
typedef logic[5:0] func_t;
typedef logic[2:0] shamt_t;


// op
parameter OP_ALU_REF = 6'b000000;
parameter OP_LW_REF = 6'b100011;
parameter OP_SW_REF = 6'b101011;
parameter OP_J_REF = 6'b000010;
parameter OP_BEQ_REF = 6'b000100;
parameter OP_BNE_REF = 6'b000101;

// funct
parameter F_ADD_REF = 6'b100000;
parameter F_SUB_REF = 6'b100010;
parameter F_SLT_REF = 6'b101010;
parameter F_AND_REF = 6'b100100;
parameter F_NOR_REF = 6'b100111;
parameter F_OR_REF = 6'b100101;
parameter F_XOR_REF = 6'b100110;
parameter F_NOT_REF = 6'b101111;
parameter F_SLL_REF = 6'b000000;
parameter F_SRL_REF = 6'b000010;
parameter F_SRA_REF = 6'b000011;

typedef enum logic [3:0] {
    ADD_REF, SUB_REF, SLT_REF, 
    AND_REF, NOR_REF, OR_REF,
    XOR_REF, NOT_REF, SLL_REF,
    SRL_REF, SRA_REF, LW_REF,
    SW_REF, J_REF, BEQ_REF,
    BNE_REF
} decoded_op_t;

typedef enum logic [3:0] {
    ALU_ADD_REF, ALU_SUB_REF, ALU_SLT_REF,
    ALU_AND_REF, ALU_NOR_REF, ALU_OR_REF,
    ALU_XOR_REF, ALU_NOT_REF, ALU_SLL_REF,
    ALU_SRL_REF, ALU_SRA_REF
} alufunc_t;

typedef struct packed {
    decoded_op_t op;
    alufunc_t alufunc;
    logic memread;
    logic memwrite;
    logic branch_taken;
} decode_data_t;


`endif
