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

    logic memwrite, memread;
    word_t dmem_addr;
    mycpu mycpu(
        .clk, .resetn,
        .pcF(inst_sram_addr),
        .raw_instr(inst_sram_rdata),

        .memwrite, .memread,
        .dmem_addr,
        .dmem_wdata(data_sram_wdata),
        .dmem_rdata(
            inst_sram_addr == 32'hbfc007f8 ? 32'h12340000 : 
            inst_sram_addr == 32'hbfc00814 ? 32'h00005678 : 32'h0000aaaa
        ),
        .*
    );
    assign inst_sram_en = 1'b1;
    assign inst_sram_wen = '0;
    assign inst_sram_wdata = '0;

    assign data_sram_en = memwrite | memread;
    assign data_sram_wen = {4{memwrite}};
    assign data_sram_addr[27:0] = dmem_addr[27:0];
    always_comb begin
        unique case(dmem_addr[31:28])
            4'd8: data_sram_addr[31:28] = '0;
            4'd9: data_sram_addr[31:28] = 4'd1;
            4'd10: data_sram_addr[31:28] = '0;
            4'd11: data_sram_addr[31:28] = 4'd1;
            default: begin
                data_sram_addr[31:28] = dmem_addr[31:28];
            end
        endcase
    end
    
endmodule
