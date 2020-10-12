`include "ref.svh"
module top (
    input logic clk, resetn,
    output logic LED16_G, LED16_R, LED17_G
);

    instruction_t instr;
    byte_t aluout_ans, aluout, aluout_check;
    logic is_alu;

    ans sim_ans(.instr,
                .aluout(aluout_ans),
                .is_alu
                );
    lab2 sim_lab2(.instr,
                  .aluout(aluout));

    assign aluout_check = aluout;
    logic[8:0] counter, counter_nxt;

    logic [15:0]clk_counter;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            clk_counter <= '0;
            
        end
        else begin
            clk_counter <= clk_counter + 1;
        end
    end
    always_ff @(posedge clk_counter[6], negedge resetn) begin
        if ( ~resetn ) begin
            counter <= '0;
        end else begin
            counter <= counter_nxt;
        end
    end
    always_comb begin
        counter_nxt = counter;
        if (counter != 9'h100 && (~is_alu || (aluout_ans === aluout_check))) begin
            counter_nxt = counter_nxt + 1;
        end
    end

    always_ff @(posedge clk_counter[6], negedge resetn) begin
        if (~resetn) begin
            {LED16_G, LED16_R, LED17_G} <= '0;
        end else if (counter == 9'h100) begin
            {LED16_G, LED17_G} <= '1;
        end
        else if (~(~is_alu || (aluout_ans === aluout_check))) begin
            {LED16_R, LED17_G} <= '1;
        end
    end
    
    

    imem imem(.instr, .id(counter[7:0]));

endmodule
