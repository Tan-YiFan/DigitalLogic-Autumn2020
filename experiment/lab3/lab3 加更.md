# 超前进位加法器

类比：前缀和

超前进位的要点：求进位Carry[4:0]

```verilog
assign carry[0] = cin;
assign carry[1] = G[1] | (P[1] & cin);
```

我看到了三种求`carry[2]`的写法：

```verilog
// assign carry[2] = G[2] | (P[2] & carry[1]);
// assign carry[2] = G[2] | (P[2] & (G[1] | (P[1] & cin)));
   assign carry[2] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & cin);
```

![image-20201104165010510](C:\Users\JimmyTan\AppData\Roaming\Typora\typora-user-images\image-20201104165010510.png)