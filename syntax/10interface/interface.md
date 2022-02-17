# 高级语法（4）：抽象接口interface

电路图清晰地标明了元件的每位输入是从哪个元件的输出得到的，而元件例化语句无法做到这一点：

* 元件例化语句不标出信号是作为输入还是输出
* 信号相关模块的例化代码可能隔了很远

同时，模块接口部分的代码，在语法上也有可改进的地方：

* 不同模块可能复用一部分接口
* 添加一个接口，需要修改多处代码

interface语法可以解决这一些问题，其语法形式与模块类似，具体为：

```verilog
interface interface_name(input logic d, output logic e);
    // signals
    logic c;
    
    // modports
    modport modport_name1(input c, d, output e);
    modport modport_name2(output c);
endinterface

// module
module module_name(
	interface_name.modport_name1 variable_name // input logic c, d, output logic e
);
    // use `variable_name` like a struct
    logic d;
    assign d = variable_name.c;
    
    assign variable_name.e = d;
endmodule

module top();
    // instantiate an interface involves declaring the singals inside it
    interface_name intf_inst(.d(), .e());
    // logic c, d, e
    module_name instance_name(.variable_name(intf_inst.modport_name1));
    
    interface_name intf_inst2(.d(), .e());
endmodule
```

把interface的声明放到头文件里，可以大幅减少源代码量。

Verilator暂不支持interface语法。

