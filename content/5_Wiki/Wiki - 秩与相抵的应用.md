---
aliases: 
info: 有关秩的不等式
date: 2023-05-18-星期四 15:28
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230518152857
banner: "![[astrowalk.gif]]"
---
---
#线性代数/矩阵 

[[Wiki - 矩阵的秩]]

[[Wiki - 矩阵相抵]]

## Pro1

$$
\begin{array}{*{20}{c}}{rank\left( {\begin{array}{*{20}{c}}A&B\\C&D\end{array}} \right) \mathbin{\lower.3ex\hbox{$\buildrel>\over{\smash{\scriptstyle=}\vphantom{_x}}$}} rank\left( A \right);\space\space\space\space\space
rank\left( {\begin{array}{*{20}{c}}A&O\\O&D\end{array}} \right) = rank\left( A \right) + rank\left( D \right)}\\{rank\left( {\begin{array}{*{20}{c}}A&B\\O&D\end{array}} \right) \ge rank\left( A \right) + rank\left( D \right)}\end{array}
$$

## Pro 2

```ad-proposition
title: Propositon 2

每个秩为 r 的矩阵可以写成 r 个秩为 1 的矩阵之和

```


其实就是秩为 r 的维数为 r, 需要 r 个基表示

## Pro3

```ad-proposition
title: Propositon 3


$$
rank\left( {AB} \right) \le {\rm{min}}\left\{ {rank\left( A \right),rank\left( B \right)} \right\}
$$

[[Wiki - 矩阵的乘法]]

```

### 证明：

$$
\begin{array}{*{20}{c}}{rank\left( A \right) = r}\\{{A_{m \times n}}{B_{n \times p}} = P\left( {\begin{array}{*{20}{c}}{{I_r}}&0\\0&0\end{array}} \right)QB = P\left( {\begin{array}{*{20}{c}}{{C_{r\times p}}}\\0\end{array}} \right)}\end{array}
$$

[[Wiki - 矩阵的初等变换#Pro2]]

C 为 QB 的前 r 行

$$
\begin{array}{*{20}{c}}{rank\left( {AB} \right) = rank\left( C \right) \le r = rank\left( A \right)}\\{rank\left( {AB} \right) = rank\left( C \right) \le rank\left( {QB} \right) = rank\left( B \right)}\end{array}
$$

## Pro4  Sylvester 不等式

```ad-proposition
title: Propositon 4


$$
rank\left( {{A_{m \times n}}} \right) + rank\left( {{C_{n\times p}}} \right) \le rank\left( {AC} \right) + n
$$


```

### 证明：

$$
\begin{array}{*{20}{c}}{ \leftrightarrow rank\left( {\begin{array}{*{20}{c}}A&0\\0&C\end{array}} \right) \le rank\left( {\begin{array}{*{20}{c}}{AC}&0\\0&{{I_n}}\end{array}} \right)}\\{\left( {\begin{array}{*{20}{c}}A&O\\{{I_n}}&C\end{array}} \right) \to \left( {\begin{array}{*{20}{c}}0&{ - AC}\\{{I_n}}&C\end{array}} \right) \to \left( {\begin{array}{*{20}{c}}0&{ - AC}\\{{I_n}}&0\end{array}} \right) \to \left( {\begin{array}{*{20}{c}}{AC}&0\\0&{{I_n}}\end{array}} \right)}\\{rank\left( {\begin{array}{*{20}{c}}A&O\\{{I_n}}&C\end{array}} \right) \ge rank\left( A \right) + rank\left( C \right)}\end{array}
$$

