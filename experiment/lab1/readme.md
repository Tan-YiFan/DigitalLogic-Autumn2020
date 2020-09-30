# lab1注意事项

## 新建项目

先新建一个项目。

然后在点击`Tools --> Run Tcl Script`，运行本目录下的 `sources.tcl`添加文件。

![image-20200928180047576](C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20200928180047576.png)

随后，在 `lab1.sv`中填写代码。

## 仿真

仿真文件`sim.sv`集成了本实验要完成的4个模块的调试。

如果只想调试某一个模块（比如其他模块还没写），在 `sim.sv`中修改debug enable信号，把不想调试的模块的debug信号置为`1'b0`：

```verilog
// TODO: modify the debug enable to 1'b0 if you don't want to debug the module
assign debug_decoder4_16 = 1'b1;
assign debug_decoder5_32 = 1'b1;
assign debug_encoder16_4 = 1'b1;
assign debug_priority_encoder16_4 = 1'b1;
```

开始仿真后，点击 `Run all`， 使仿真跑完：![image-20200928181318535](C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20200928181318535.png)

## 上板

下一次实验课上板。你可以提前 `generate bitstream`，下节实验课上直接 `program device`。

