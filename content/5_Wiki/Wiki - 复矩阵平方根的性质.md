---
aliases: square root of complex matrix
info: 平方根的相关性质
date: 2023-08-09-星期三 15:25
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230809152518
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 #线性代数/矩阵 

[[Wiki - 正定变换#Def 2 square root]]

**所有复数都有平方根，但不是所有复矩阵都有平方根**

## Pro 1

若 N 是幂零变换 [[Wiki - 幂零变换]]，则 $I+N$ 有平方根

即对角线全为 1 的上三角矩阵有平方根

### Proof

母函数法：$\sqrt{ 1+x }=1+\frac{1}{2}x+a_{2}x^{2}+\cdots$

验证 $I+\frac{1}{2}N+a_{2}N^{2}+\dots+a_{m-1}N^{m-1}$ 是 $I+N$ 的平方根（后续都为 0）

## Pro 2

变换 T 可逆，则 T 有平方根 [[Wiki - 可逆线性映射]]

