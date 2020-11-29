module top (
    input logic clk, resetn,
    output logic[15:0] LED,
    output logic[7:0] AN,
    output logic[6:0] A2G,
    input logic[7:0] SW,
    output logic LED16_R, LED16_G,
    output logic LED17_R, LED17_G
);

    logic [1:0] led_rg0, led_rg1;
    assign LED16_G = led_rg0 == 2'd2;
    assign LED16_R = led_rg0 == 2'd1;
    assign LED17_G = led_rg1 == 2'd2;
    assign LED17_R = led_rg1 == 2'd1;

    logic [10:0] counter;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            counter <= '0;
        end else begin
            counter <= counter + 1;
        end
    end
    soc_lite_top soc_lite_top_inst(
        .clk, .resetn,
        .led(LED),
        .led_rg0, .led_rg1,
        // .num_csn(AN),
        // .num_a_g(A2G),
        .switch(SW),
        .btn_key_row('0),
        .btn_step('0)
    );

    logic [7:0][6:0] segs;
    for (genvar i = 0; i < 8; i++) begin
        seg7 seg7_inst(.in(soc_lite_top_inst.confreg.num_data[(i*4+3):(i*4)]), .out(segs[i]));
    end
    assign A2G = segs[counter[10:8]];
    assign AN = ~({7'b0, resetn} << counter[10:8]);
endmodule

module seg7 (
    input logic [3:0]in,
    output logic [6:0]out
);
    always_comb begin
        unique case(in)
            4'h0: out = 7'b1000000;
            4'h1: out = 7'b1111001;
            4'h2: out = 7'b0100100;
            4'h3: out = 7'b0110000;
            4'h4: out = 7'b0011001;
            4'h5: out = 7'b0010010;
            4'h6: out = 7'b0000010;
            4'h7: out = 7'b1111000;
            4'h8: out = 7'b0000000;
            4'h9: out = 7'b0010000;
            4'hA: out = 7'b0001000;
            4'hB: out = 7'b0000011;
            4'hC: out = 7'b1000110;
            4'hD: out = 7'b0100001;
            4'hE: out = 7'b0000110;
            4'hF: out = 7'b0001110;
            default: out = 7'b1000000;
        endcase
    end
    
endmodule