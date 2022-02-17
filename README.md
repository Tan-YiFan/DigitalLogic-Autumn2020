# 复旦大学 数字逻辑与部件设计实验 2020秋



这是复旦大学2020秋季学期《数字逻辑与部件设计》实验部分的代码仓库。



本仓库包含以下几个目录：

* `experiment` 是实验发布内容和参考实现。前几个实验是组合逻辑实验，我写了一个简单的测试框架：用 SystemVerilog 写出参考电路（模块名为`*ans*`），给出很多组测试输入，比较待测电路和参考电路的输出值。参考电路以 Vivado 生成的网表文件（`.v`后缀的文件）给出。如果需要阅读参考电路，请跳过所有 `.v` 后缀的文件。

  发布包中有 Vivado 项目工程文件，用 Vivado 2018.3 打开。项目工程文件已选好实验板类型，添加好项目文件，只需在指定的源文件里写好电路即可开始 Simulation 与 Generate Bitstream。

* `notes` 是实验文档的 markdown 源码。

* `syntax` 是 SystemVerilog 常用语法的讲解，可配合我录的视频 [SystemVerilog常用语法简介](https://www.bilibili.com/video/BV1XA41177of) 来学习（部分实验也有视频讲解）。

* `.vscode` 里有我使用的 SystemVerilog 代码 snippet，内容是部分语法的自动补全。在 Visual Studio Code 里编写 SystemVerilog 时，可以使用它。

