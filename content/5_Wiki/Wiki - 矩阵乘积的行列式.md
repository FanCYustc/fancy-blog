---
aliases:
  - Binet-Cauchy公式
info: 
date: 2023-10-11-星期三 10:14
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 线性代数/行列式
  - 线性代数/矩阵
id: wiki20231011101456
banner: "![[astrowalk.gif]]"
---
---

对 [[Wiki - 行列式的运算#乘积的行列式]]的扩充

## The 1 B-C 公式

```ad-theorem
title: Theorem 1


$A\in F^{m\times n},B\in F^{n\times m}$，则

$$
\det(AB)=0\quad m>n
$$
$$
\det(AB)=\det(A)\det(B)\quad m=n
$$
$$
\det(AB)=\sum_{1\leq l_{1}<\dots< l_{m}\leq n} A\begin{pmatrix}
1&2&\dots&m \\
l_{1}& l_{2}&\dots& l_{m} 
\end{pmatrix}
\cdot  B \begin{pmatrix}
l_{1}& l_{2} & \dots & l_{m} \\
1& 2 &\dots& m
\end{pmatrix} \quad m<n
$$


```

[[Wiki - 行列式Laplace展开#Def 1 子式]]


由 m<n 的公式联想到以下定理：

## Cal 1

```ad-theorem
title: Theorem 2


$A \in F^{n\times m}, B\in F^{m\times p},C=AB$

$$
\begin{array}{l}
C \begin{pmatrix}
i_{1}&i_{2}&\dots&i_{r} \\
j_{1}& j_{2}&\dots& j_{r} 
\end{pmatrix}=\det(\begin{pmatrix}
a_{i_{1}} \\
a_{i_{2}} \\
\vdots \\
a_{i_{r}}
\end{pmatrix}_{r\times m} \cdot
\begin{pmatrix}
b_{j_{1}} & \dots & b_{j_{r}}
\end{pmatrix}_{m\times r}) \\
=\sum_{1\leq l_{1}<\dots< l_{r}\leq m} A\begin{pmatrix}
i_{1}&i_{2}&\dots&i_{r} \\
l_{1}& l_{2}&\dots& l_{r} 
\end{pmatrix}
\cdot  B \begin{pmatrix}
l_{1}& l_{2} & \dots & l_{r} \\
j_{1} & j_{2} &\dots& j_{r}
\end{pmatrix} \quad r<m
\end{array}
$$


```





