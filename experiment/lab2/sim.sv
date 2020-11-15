`include "ref.svh"
module sim (
    
);
    logic debug_en;

    // TODO: to debug alu, set this to 1'b1
    assign debug_en = 1'b0;

    instruction_t instr;
    byte_t aluout_ans, aluout, aluout_check;
    // decode_data_t decode_data_ans;
    logic [3:0] temp1, temp2;
    decoded_op_t decoded_op;
    assign decoded_op = decoded_op_t'(temp1);
    alufunc_t alufunc;
    assign alufunc = alufunc_t'(temp2);
    logic memread;
    logic memwrite;
    logic branch_taken;
    logic is_alu;

    ans sim_ans(.instr,
                .aluout(aluout_ans),
                .is_alu,
                .decoded_op(temp1),
                .alufunc(temp2),
                .*
                );
    lab2 sim_lab2(.instr,
                  .aluout(aluout));

    assign aluout_check = (debug_en) ? aluout : aluout_ans;
    logic[8:0] counter, counter_nxt;
    logic clk, resetn;
    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        resetn = 1'b0;
        #100 resetn = 1'b1;
    end
    always_ff @(posedge clk) begin
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

    always_ff @(posedge clk) begin
        if (~resetn) begin
            
        end else if (counter == 9'h100) begin
            $display("PASS!\n");
            $finish;
        end
        else if (~(~is_alu || (aluout_ans === aluout_check))) begin
            $display("[%d ns]: ALUOUT expected 0x%x, got 0x%x!\n",
                        $time, aluout_ans, aluout_check);
            $finish;
        end
    end
    
    

    imem imem(.instr, .id(counter[7:0]));
endmodule
