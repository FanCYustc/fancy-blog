---
aliases: []
info: 行列式运算性质
date: 2023-04-08-星期六 21:44
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230408214405
banner: "![[astrowalk.gif]]"
---
#线性代数/行列式 

## Pro1

- 交换两行/列，行列式变号
- 将 A 的一行乘上 $\lambda$ 得到 B，$\det(B)=\lambda \det(A)$
- 若 $a_{ij}=b_{ij}+c_{ij}$，A, B, C **其余行相同**，则 $\det(A)=\det(B)+\det(C)$
- 若有两行成比例，则 $\det(A)=0$
- 将一行常数倍加到另一行上，行列式不变
[[Wiki - 行列式的定义#Pro1 行列式函数的性质]]


## 范德蒙行列式

$$
\Delta \left( {{a_1},{a_2}, \ldots {a_n}} \right) = \left| {\begin{array}{*{20}{c}}1&{{a_1}}& \ldots &{a_1^{n - 1}}\\1&{{a_2}}& \ldots &{a_2^{n - 1}}\\ \vdots & \vdots && \vdots \\1&{{a_n}}& \ldots &{a_n^{n - 1}}\end{array}} \right| = \mathop \prod \limits_{1 \le i < j \le n} \left( {{a_j} - {a_i}} \right)
$$

### Proof

归纳：
$$
\begin{array}{*{20}{c}}{{\Delta _n} = \left| {\begin{array}{*{20}{c}}1&{{a_1} - {a_n}}& \ldots &{a_1^{n - 2}\left( {{a_1} - {a_n}} \right)}\\1&{{a_2} - {a_n}}& \ldots &{a_2^{n - 2}\left( {{a_2} - {a_n}} \right)}\\ \vdots & \vdots && \vdots \\1&0& \ldots &0\end{array}} \right| = {{\left( { - 1} \right)}^{n + 1}}\cdot\mathop \prod \limits_{i = 1}^{n - 1} \left( {{a_i} - {a_n}} \right){\Delta _{n - 1}}}\\{ = \mathop \prod \limits_{i = 1}^{n - 1} \left( {{a_n} - {a_i}} \right){\Delta _{n - 1}}}\end{array}
$$


## Pro2 重要技巧

推论：对任意方阵 A，存在 T，当 t>T 时，有（A + t I） 可逆[[Wiki - 行列式与可逆]]

证明： 其为关于 t 的 n 次多项式，首项系数为 1

### 应用

当 A 不可逆时变成关于 t 的函数，利用可逆[[Wiki - 逆矩阵]]的性质，再由连续性令 $t\to 0$  [[Wiki - 函数的连续性]]

