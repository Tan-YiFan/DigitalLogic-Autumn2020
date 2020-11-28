`include "mips.svh"

module mycpu (
    input logic clk, resetn,
    input word_t raw_instr,
    output word_t pcF,

    output word_t dmem_addr,
    output logic memread, memwrite,
    output word_t dmem_wdata,
    input word_t dmem_rdata
);

    decoded_instr_t decoded_instr;
    decoder decoder(
        .raw_instr,
        .decoded_instr
    );

    word_t alusrca, alusrcb; // TODO
    word_t aluout;
    alu alu(
        .a(alusrca),
        .b(alusrcb),
        .alufunc(decoded_instr.ctl.alufunc),
        .c(aluout)
    );

    word_t wd; // TODO
    word_t rd1, rd2;
    regfile regfile(
        .clk,
        .ra1(decoded_instr.rs), // read address
        .ra2(decoded_instr.rd),
        .wa3(decoded_instr.writereg), // write address
        .we(decoded_instr.ctl.regwrite), // write enable
        .wd(wd), // write data
        .rd1(rd1), // read data
        .rd2(rd2)
    );

    // program counter
    word_t pc_nxt; 
    word_t pcbranchD, pcjumpD, pcjrD;
    word_t pcplus4F, pcplus4D;
    logic branch_taken; 
    always_ff @(posedge clk) begin
        if (~resetn) begin
            pcF <= 32'hbfc0_0000;
            pcplus4D <= '0;
        end else begin
            pcF <= pc_nxt;
            pcplus4D <= pcplus4F;
        end
    end
    
    // calculate pc_nxt
    always_comb begin
        pc_nxt = pcplus4F;
        if (branch_taken) begin
            pc_nxt = pcbranchD;
        end
        if (decoded_instr.ctl.jump) begin
            pc_nxt = pcjumpD;
        end
        if (decoded_instr.ctl.jr) begin
            pc_nxt = pcjrD;
        end
    end
    assign pcplus4F = pcF + 4;
    assign pcjumpD = {
        pcplus4D[31:38], raw_instr[25:0], 2'b00
    };
    assign pcjrD = rd1;
    assign pcbranchD = pcplus4D + {
        decoded_instr.extended_imm[29:0], 2'b00
    };
    assign branch_taken = (
        decoded_instr.ctl.branch && (
            (decoded_instr.op == BEQ && rd1 == rd2)||
            (decoded_instr.op == BNE && rd1 != rd2)
        )
    );

    assign dmem_addr = aluout;
    assign memread = decoded_instr.ctl.memread;
    assign memwrite = decoded_instr.ctl.memwrite;
    assign dmem_wdata = rd2;

    assign wd = decoded_instr.ctl.is_link ? 
            pcplus4D + 4 : (
                decoded_instr.ctl.memread ? dmem_rdata : aluout
            );

    assign alusrca = decoded_instr.ctl.shamt_valid ? {
        '0, raw_instr[10:6]
    } : rd1;
    assign alusrcb = decoded_instr.ctl.alusrcb == REGB ? rd2 : decoded_instr.extended_imm;
endmodule
