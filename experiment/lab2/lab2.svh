`ifndef __LAB2_SVH
`define __LAB2_SVH

// fixed encoding

parameter OP_ALU = 6'b000000;

parameter F_ADD = 6'b100000;
parameter F_SUB = 6'b100010;

// flexible encoding

typedef enum logic [3:0] {
    ALU_ADD, ALU_SUB, RES
} myALUfunc_t;


`endif
