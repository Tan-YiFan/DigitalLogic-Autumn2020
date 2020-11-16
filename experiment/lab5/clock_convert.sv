module clock_convert (
    input logic clk_100mhz,
    input logic resetn,
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
    assign clk_1hz = (counter > 31'd100_000_000);
    
endmodule
