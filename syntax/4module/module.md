# 电路语句（二）：元件例化语句

需求：

* 层次化设计、功能区分

* 代码复用
* 黑盒

## 1 模块声明

```verilog
module adder (
	// inputs and outputs declaration
    input logic [3:0] a, b,
    output logic [3:0] c
);
    // circuit code
    assign c = a + b;
endmodule
```

## 2 电路语句：元件例化

```verilog
logic [3:0] b, c;
//logic [4:0] c;
adder adder_inst0(.a(4'b0010), .*); // assign c = b + 4'b0010;
// modulename instancename(.portname1(value1), .portname2, .*);
// adder adder_inst1(.a[0]());
```

