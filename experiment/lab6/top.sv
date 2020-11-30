`include "lab6.svh"
module top (
    input logic clk, resetn,
    input logic [15:0] SW,
    output logic LED16_G, LED16_R, LED17_G, LED17_R,
    output logic [6:0]A2G,
    output logic [7:0]AN
);
    logic [10:0] counter;
    logic [7:0][6:0] segs;

    logic [7:0][3:0] raw_segs; // TODO: drive these signals

    always_ff @(posedge clk) begin
        if (~resetn) begin
            counter <= '0;
        end else begin
            counter <= counter + 1;
        end
    end
    
    for (genvar i = 0; i < 8; i++) begin
        seg7 seg7_inst (.in(raw_segs[i]), .out(segs[i]));
    end

    assign A2G = segs[counter[10:8]];
    assign AN[7:0] = ~({7'b0, resetn} << counter[10:8]);

    logic [1:0] red, yellow, green; // TODO: drive these signals
    assign LED16_G = green[0] | yellow[0];
    assign LED16_R = red[0] | yellow[0];
    assign LED17_G = green[1] | yellow[1];
    assign LED17_R = red[1] | yellow[1];

    // TODO: drive these signals
    lab6 lab6_inst(.clk, .resetn, .has_car(SW[0]), .hour(raw_segs[5:4]), .minute(raw_segs[3:2]), .second(raw_segs[1:0]), .*);
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