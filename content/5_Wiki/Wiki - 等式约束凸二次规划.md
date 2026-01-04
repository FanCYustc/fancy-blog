---
aliases: 
info: 
date: 2025-06-13-星期五 09:35
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 凸优化
  - 统计算法
  - 运筹学
id: wiki20250613093516
banner: "![[astrowalk.gif]]"
---
---
## Def 1 KKT 系统

考虑如下优化问题，

$$
\begin{array} { r l } { \operatorname* { m i n } } & { { } f ( x ) = ( 1 / 2 ) x ^ { \top } P x + q ^ { \top } x + r } \\ { \mathrm { s . t . } } & { { } A x = b } \end{array}
$$

其中 $P\in \mathbb{S}_{+}^{n}$, $A \in \mathbb { R } ^ { p \times n }$ . 该问题不仅本身具有重要性, 同时也是扩展 **Newton 方法**[[Wiki - 牛顿算法]]处理等式约束问题的基础. 此时最优性条件为

$$
A x ^ { \star } = b , \quad P x ^ { \star } + q + A ^ { \top } \nu ^ { \star } = 0 ,
$$

我们可以将其写为

$$
\left[ \begin{array} { c c } { \boldsymbol { P } } & { \boldsymbol { A } ^ { \top } } \\ { \boldsymbol { A } } & { \boldsymbol { 0 } } \end{array} \right] \left[ \begin{array} { c } { \boldsymbol { x } ^ { \star } } \\ { \boldsymbol { \nu } ^ { \star } } \end{array} \right] = \left[ \begin{array} { c } { - \boldsymbol { q } } \\ { \boldsymbol { b } } \end{array} \right]
$$

这组 $n + p$ 个变量 $x ^ { \star } , \nu ^ { \star }$ 的 $n + p$ 个线性方程称为等式约束优化问题的 **KKT 系统**. 系数矩阵称为 KKT 矩阵.

[[Wiki - KKT条件]]

## Pro 1 解的属性

如果 KKT 矩阵非奇异 [[Wiki - 可逆线性映射]] $( P \succ 0$ 时满足), 存在唯一最优的 $( x ^ { \star } , \nu ^ { \star } )$ .

如果 KKT 矩阵奇异, 但 KKT 系统有解, 任何解都构成最优对 $( x ^ { \star } , \nu ^ { \star } )$ .

如果 KKT 系统无解, 二次优化问题或者无下界或者无解. 

KKT 矩阵的非奇异性： 之前曾假定 $P \in \mathbb { S } _ { + } ^ { n }$ ， $\operatorname { r a n k } ( \mathrm { A } ) = p \leq n .$ [[Wiki - 矩阵的秩]] 在该假定下对 KKT 矩阵的非奇异性有若干等价条件:

-  $\mathcal { N } ( P ) \cap \mathcal { N } ( A ) = \{ 0 \}$ ，即 $P$ 和 $A$ 没有共同的非平凡零空间 [[Wiki - 线性映射的像空间和核]].  
- $A x = 0 , x \neq 0 \Rightarrow x ^ { \top } P x > 0$ ，即 $P$ 在 $A$ 的零空间是正定的 [[Wiki - 正定矩阵]].  
-  $F ^ { \top } P F \succ 0$ ，其中 $F \in \mathbb { R } ^ { n \times ( n - p ) }$ 是满足 $\mathcal { R } ( F ) = \mathcal { N } ( A )$ 的矩阵.



