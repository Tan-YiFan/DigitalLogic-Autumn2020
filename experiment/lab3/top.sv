module top (
    input logic clk, resetn,
    output logic LED16_G, LED16_R, LED17_G
);
    logic [3:0] a, b;
    logic cin;

    logic [3:0] c_ref, c_ripple, c_ahead;
    logic cout_ref, cout_ripple, cout_ahead;
    logic [9:0] counter, counter_nxt;
    lab3 lab3_top(.*);

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
        if (counter_nxt != 9'h100 
            && ({cref, cout_ref} === {c_ripple, cout_ripple})
            && ({cref, cout_ref} === {c_ahead, cout_ahead})
            ) begin
            counter_nxt = counter_nxt + 1;
        end
    end
    assign a = counter[3:0];
    assign b = counter[7:4];
    assign cin = counter[8];
    assign c_ref = a + b + {3'b0, cin};

    logic [4:0] c_ext;
    assign c_ext = {1'b0, a} + {1'b0, b} + {4'b0, cin};
    assign cout_ref = c_ext[4];

    always_ff @(posedge clk_counter[6], negedge resetn) begin
        if ( ~resetn ) begin
            {LED16_G, LED16_R, LED17_G} <= '0;
        end else if ( counter_nxt == 9'h100 ) begin
            {LED16_G, LED17_G} <= '1;
        end else if (~({cref, cout_ref} === {c_ripple, cout_ripple})) begin
            {LED16_R, LED17_G} <= '1;
        end else if (~({cref, cout_ref} === {c_ahead, cout_ahead})) begin
            {LED16_R, LED17_G} <= '1;
        end
    end
    
endmodule
