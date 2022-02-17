# 高级语法（2）：parameter

引入**元件例化**的语法，有很多好处。

然而，已有的模块设计语法，缺乏flexibility。

适用同一算法`int`和`long long`的加法器，需要写两个。

为了使模块代码具有更高的复用性，引入参数`parameter`。

```verilog
module adder #(
	parameter int N,
    parameter logic [31:0] W = 32'd100000,
    parameter type element_t = logic[31:0]
)(
    input logic[N-1:0] a, b,
    output logic[N-1:0] c
);
    assign c = a + b;
endmodule

module top #(
    parameter logic SIM = 1'b0
)(input logic clk, resetn
 );
    
    logic [31:0] a, b, c;
    
    adder #(.N(32), .element_t(logic [63:0])) adder_inst1(.a, .b, .c);
    
    logic [15:0] d, e, f;
    adder adder_inst2(.a(d), .b(e), .c(f));
endmodule

module sim();
    top #(.SIM(1'b1)) top_inst (.clk, .resetn);
    // -DDEBUG
endmodule
```

`parameter`也可用于全局常量声明。作为一句语句，它以分号结尾。

```verilog
parameter logic[5:0] OP_ADDI = 6'b000010;

always_comb begin
    unique case(op)
        OP_ADDI: begin
            
        end
    endcase
end
```

