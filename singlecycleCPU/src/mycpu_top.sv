module mycpu_top(
    input logic clk,
    input logic resetn,  //low active
    input logic[5:0] ext_int,  //interrupt,high active

    output logic inst_sram_en,
    output logic[3:0] inst_sram_wen,
    output logic [31:0] inst_sram_addr,
    output logic [31:0] inst_sram_wdata,
    input logic [31:0] inst_sram_rdata,
    
    output logic data_sram_en,
    output logic [3:0] data_sram_wen,
    output logic [31:0] data_sram_addr,
    output logic [31:0] data_sram_wdata,
    input logic [31:0] data_sram_rdata,

    //debug
    output logic [31:0] debug_wb_pc,
    output logic [3:0] debug_wb_rf_wen,
    output logic [4:0] debug_wb_rf_wnum,
    output logic [31:0] debug_wb_rf_wdata
);



endmodule
