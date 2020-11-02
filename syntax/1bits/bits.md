# 二进制

数字电路中，万物皆为二进制

## 常量

```verilog
1'b1
1'b0
16'habcd
4'd10
```

## 变量

```verilog
logic a;
logic [3:0]b;
logic [31:0][31:0]c;
```

## 组合/位绑定

```verilog
{a, 1'b1}
{a, b}
{16{1'b1}}
{a, {16{b}}}
```

