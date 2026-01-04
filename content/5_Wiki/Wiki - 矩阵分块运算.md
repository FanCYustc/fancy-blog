---
aliases: 
info: 分块矩阵的运算性质
date: 2023-04-08-星期六 13:34
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230408133455
banner: "![[astrowalk.gif]]"
---
---
#线性代数/矩阵 

## Def1
矩阵分块后大部分矩阵运算性质依然保留

准对角矩阵、准上下三角阵（**只对方阵有**）

## Pro1 分块运算性质

**前提是运算有意义**

矩阵的分块运算具有以下性质:
(1) 设 $A=(A_{i j})_{r\times s},B=(B_{i j})_{r\times s},$ 则 $A+B=(A_{ij}+B_{ij})_{r\times s};$

(2) 设 $A=(A_{i j})_{r\times s},$ 则 $\lambda A=(\lambda A_{ij})_{r\times s};$

(3) 设 $A=(A_{i j})_{r\times s},B=(B_{i j})_{s\times t},$ 则 $AB=(C_{ij})_{r\times t},$ 其中 $C_{ij}=\sum_{k=1}^s A_{ik}B_{kj};$

$\left(4\right)$ 设 $A=(A_{ij})_{r\times s},$ 则 $A^{\mathrm{T}}=(A_{ji}^{\mathrm{T}})_{s\times r};$

(5) 设 $A=(A_{ij})_{r\times s}$ 是复方阵, 则 $\overline{A}=(\overline{A_{ij}})_{r\times s}.$

(6) 设 $A=(A_{ij})_{r\times r}$ 且每个 A; 都是方阵, 则 $\operatorname{tr}(A)=\sum\limits_{i=1}^{r}\operatorname{tr}(A_{ii}).$

(7) 当 $A_{1},\cdots,A_{r r}$ 都可逆时，$(\operatorname{diag}(A_{11}\cdots,A_{r r}))^{-1}=\operatorname{diag}(A_{11}^{-1},\cdots,A_{r r}^{-1})$


[[Wiki - 矩阵的加法和数乘]]

[[Wiki - 矩阵的转置和共轭]]

[[Wiki - 逆矩阵]]

[[Wiki - 矩阵的乘法]]

[[Wiki - 矩阵的迹]]
