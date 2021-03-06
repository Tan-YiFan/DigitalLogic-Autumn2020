# Lab1 译码器与编码器

[TOC]

## 高电平有效/低电平有效

用二进制所表示的信息，`0`不一定表示`false`，`1`不一定表示`true`。

人们约定了一种表示信息的习惯，对于某类信息，大家都用`1`表示`true`（高电平有效）或都用`0`表示`true`（低电平有效）

sv的`if`认为`1`是`true`，所以有两种写法：

```verilog
// reset: high effective
if (reset) begin

end

// resetn: low effective
if (~resetn) begin

end
```

本实验采用高电平有效的约定。

## 2-4 Decoder With Enable Bit

$$
n \ bits \ input; \
2^n \ bits \ output
$$

| en   | in[1] | in[0] | out[3] | out[2] | out[1] | out[0] |
| ---- | ----- | ----- | ------ | ------ | ------ | ------ |
| 0    | x     | x     | 0      | 0      | 0      | 0      |
| 1    | 0     | 0     | 0      | 0      | 0      | 1      |
| 1    | 0     | 1     | 0      | 0      | 1      | 0      |
| 1    | 1     | 0     | 0      | 1      | 0      | 0      |
| 1    | 1     | 1     | 1      | 0      | 0      | 0      |

### x

| en   | in[1] | in[0] | out[3] | out[2] | out[1] | out[0] |
| ---- | ----- | ----- | ------ | ------ | ------ | ------ |
| 0    | 0     | 0     | 0      | 0      | 0      | 0      |
| 0    | 0     | 1     | 0      | 0      | 0      | 0      |
| 0    | 1     | 0     | 0      | 0      | 0      | 0      |
| 0    | 1     | 1     | 0      | 0      | 0      | 0      |

## 4-2 Encoder

$$
2^n\ bits\ input;\ n\ bits\ output
$$

| in[3]  | in[2] | in[1] | in[0] | out[1] | out[0] |
| ------ | ----- | ----- | ----- | ------ | ------ |
| 0      | 0     | 0     | 1     | 0      | 0      |
| 0      | 0     | 1     | 0     | 0      | 1      |
| 0      | 1     | 0     | 0     | 1      | 0      |
| 1      | 0     | 0     | 0     | 1      | 1      |
| others |       |       |       | x      | x      |

## 4-2 Priority Encoder

| in[3] | in[2] | in[1] | in[0] | out[1] | out[2] |
| ----- | ----- | ----- | ----- | ------ | ------ |
| 1     | x     | x     | x     | 1      | 1      |
| 0     | 1     | x     | x     | 1      | 0      |
| 0     | 0     | 1     | x     | 0      | 1      |
| 0     | 0     | 0     | 1     | 0      | 0      |
| 0     | 0     | 0     | 0     | x      | x      |

