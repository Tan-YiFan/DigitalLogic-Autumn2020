`include "mips.svh"

module regfile (
    input logic clk,
    input creg_addr_t ra1, ra2, wa3,
    input logic we,
    input word_t wd,
    output word_t rd1, rd2
);
    word_t [CREG_NUM-1:0] regs, regs_nxt;

    always_ff @(posedge clk) begin
        regs <= regs_nxt;
    end
    
    always_comb begin
        regs_nxt = regs;
        for (int i = 1; i < CREG_NUM; i++) begin
            for (int j = 1; j < CREG_NUM; j++) begin
                if (we && wa3 == i[4:0] && i == j) begin
                    regs_nxt[j] = wd;
                end
            end
        end
        
    end
    
    
    assign rd1 = (ra1 == 5'b0) ? 32'b0 : regs[ra1];
    assign rd2 = (ra2 == 5'b0) ? 32'b0 : regs[ra2];
endmodule
