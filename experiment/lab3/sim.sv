module sim (
    
);
    logic debug_ripple, debug_ahead;
    // TODO: If you don't want to debug, set the debug enable to 1'b0
    assign debug_ripple = 1'b1;
    assign debug_ahead = 1'b1;

    logic clk, resetn;
    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        resetn = 1'b1;
        #100 resetn = 1'b0;
    end

    logic [3:0] a, b;
    logic cin;

    logic [3:0] c_ref, c_ripple, c_ahead;
    logic cout_ref, cout_ripple, cout_ahead;
    logic [9:0] counter, counter_nxt;
    lab3 lab3_sim(.*);
    always_ff @(posedge clk) begin
        if ( ~resetn ) begin
            counter <= '0;
        end else begin
            counter <= counter_nxt;
        end
    end
    
    always_comb begin
        counter_nxt = counter;
        if (counter_nxt != 9'h100 
            && (({cref, cout_ref} === {c_ripple, cout_ripple}) || ~debug_ripple)
            && (({cref, cout_ref} === {c_ahead, cout_ahead}) || ~debug_ahead)
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
    always_ff @(posedge clk) begin
        if ( ~resetn ) begin
            
        end else if ( counter_nxt == 9'h100 ) begin
            $display("PASS!");
            $finish;
        end else if (~(({cref, cout_ref} === {c_ripple, cout_ripple})  || ~debug_ripple)) begin
            $display("[%d ns]: a = 0x%x, b = 0x%x, cin = 0x%x\n Ripple adder: \n Expect c = 0x%x, cout = 0x%x\n Got c = 0x%x, cout = 0x%x",
                    $time, a, b, cin, c_ref, cout_ref, c_ripple, cout_ripple);
            $finish;
        end else if (~(({cref, cout_ref} === {c_ahead, cout_ahead}) || ~debug_ahead)) begin
            $display("[%d ns]: a = 0x%x, b = 0x%x, cin = 0x%x\n Ahead adder: \n Expect c = 0x%x, cout = 0x%x\n Got c = 0x%x, cout = 0x%x",
                    $time, a, b, cin, c_ref, cout_ref, c_ahead, cout_ahead);
            $finish;
        end
    end
    
endmodule
