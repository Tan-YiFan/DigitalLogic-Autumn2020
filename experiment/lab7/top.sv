module top #(
    parameter logic SIM = 1'b0
) (
    input logic clk, resetn,
    input logic [15:0]SW,
    output logic [15:0]LED
);
    logic clk_lab7; // use this clk
    logic clk_1hz;
    generate if (SIM) begin
        assign clk_lab7 = clk;
    end else begin
        assign clk_lab7 = clk_1hz;
    end
    endgenerate
    clkdiv clkdiv_inst(.clk, .resetn, .clk_1hz);

    lab7 lab7_inst(
        .clk(clk_lab7),
        // TODO: ADD PORTS HERE
    );

endmodule

module clkdiv (
    input logic clk, resetn,
    output logic clk_1hz
);
    logic [30:0] counter, counter_nxt;
    always_ff @(posedge clk) begin
        if ( ~resetn ) begin
            counter <= '0;
        end else begin
            counter <= counter_nxt;
        end
    end

    always_comb begin
        counter_nxt = counter;
        if (counter > 31'd100_000_000) begin
            counter_nxt = '0;
        end else begin
            counter_nxt = counter_nxt + 1;
        end
    end
    assign clk_1hz = counter[26];
    
endmodule
