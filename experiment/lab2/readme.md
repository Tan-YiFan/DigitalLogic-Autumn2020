# lab2注意事项

`DEADLINE: 2020-11-3 23:59:59`

## 新建项目

先新建一个项目。

然后在点击`Tools --> Run Tcl Script`，运行本目录下的 `sources.tcl`添加文件。

![image-20200928180047576](C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20200928180047576.png)

随后，在 `lab2.sv`中填写代码。

## 需要完成的代码

你需要完成`lab2.sv`。

```verilog
module lab2 (
    input logic [31:0]instr,
    output logic [7:0]aluout
);
    // TODO: add signal declaration here

    decoder myDecoder(
        // TODO: add ports here
    );

    alu myALU(
        // TODO: add ports here
    );

endmodule

module decoder (
    // TODO: add port declaration here

);
    // TODO: add logic here

endmodule

module alu (
    // TODO: add port declaration here
);
    // TODO: add logic here

endmodule

```



## 仿真

仿真文件`sim.sv`集成了本实验的测试。

调试`decoder`模块时，只能通过看波形图的方式检查。

当你开始调试`ALU`时，请把`debug_en`设为`1'b1`。

```verilog
// TODO: to debug alu, set this to 1'b1
    assign debug_en = 1'b0;
```

开始仿真后，点击 `Run all`， 使仿真跑完：![image-20200928181318535](C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20200928181318535.png)

当你修改过源文件后，点击`relaunch simulation`重新发起仿真。

![image-20201012092759280](C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20201012092759280.png)

## 上板

`11月2日`的实验课上板。你可以提前 `generate bitstream`，下节实验课上直接 `program device`。

