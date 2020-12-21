`include "lab6.svh"
module lab6 #(
    parameter logic SIM = 1'b0
)(
    input logic clk, resetn,

    input logic has_car,
    output logic [1:0] red, yellow, green,

    output logic [1:0][3:0] hour, minute, second
);
    logic one_second;
    add_counter #(.N(SIM ? 100 : 2_000_000)) one_second_gen 
    (.clk, .resetn, .en(1'b1), .carry(one_second));

    logic [3:0] carry;
    add_counter #(.N(10), .W(4)) second_gen_0 
    (.clk, .resetn, .en(one_second), .counter(second[0]), .carry(carry[0]));
    add_counter #(.N(6), .W(4)) second_gen_1 
    (.clk, .resetn, .en(carry[0]), .counter(second[1]), .carry(carry[1]));
    add_counter #(.N(10), .W(4)) minute_gen_0 
    (.clk, .resetn, .en(carry[1]), .counter(minute[0]), .carry(carry[2]));
    add_counter #(.N(6), .W(4)) minute_gen_1 
    (.clk, .resetn, .en(carry[2]), .counter(minute[1]), .carry(carry[3]));
    logic [4:0] hour_temp;
    add_counter #(.N(24), .W(5)) hour_gen
    (.clk, .resetn, .en(carry[3]), .counter(hour_temp));
    assign hour[0] = hour_temp % 10;
    assign hour[1] = hour_temp / 10;

    logic one_s, three_s;
    add_counter #(.N(SIM ? 10 : 100_000_000)) one_s_gen
    (.clk, .resetn(resetn & has_car), .en(1'b1), .carry(one_s));
    add_counter #(.N(3), .W(2)) three_s_gen
    (.clk, .resetn(resetn & has_car), .en(one_s), .carry(three_s));

    typedef enum logic[1:0] {
        HG, HY, FG, FY
    } state_t;
    
    state_t state, state_nxt;
    assign red[0] = state == FG || state == FY;
    assign red[1] = state == HG || state == HY;
    assign yellow[0] = state == HY;
    assign yellow[1] = state == FY;
    assign green[0] = state == HG;
    assign green[1] = state == FG;
    always_ff @(posedge clk) begin
        if (~resetn) begin
            state <= state_t'('0);
        end else if (~has_car) begin
            state <= state_t'('0);
        end else begin
            state <= state_nxt;
        end
    end
    always_comb begin
        state_nxt = state;
        unique case(state)
            HG: begin
                if (three_s) begin
                    state_nxt = HY;
                end
            end
            HY: begin
                if (one_s) begin
                    state_nxt = FG;
                end
            end
            FG: begin
                if (three_s) begin
                    state_nxt = FY;
                end
            end
            FY: begin
                if (one_s) begin
                    state_nxt = HG;
                end
            end
            default: begin
                
            end
        endcase
    end
    
endmodule

module add_counter #(
    parameter int N = 100_000_000,
    parameter logic[10:0] W = 30
)(
    input logic clk, resetn,
    input logic en,
    output logic [W - 1:0]counter,
    output logic carry
);
    always_ff @(posedge clk) begin
        if (~resetn) begin
            counter <= '0;
        end else if(en) begin
            counter <= counter + 1;
            if (counter == N - 1) begin
                counter <= '0;
            end
        end
    end
    assign carry = (counter == N - 1) && en;
endmodule
