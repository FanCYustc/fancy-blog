---
aliases: 
info: 可对角化的
date: 2023-07-03-星期一 23:17
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703231756
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

当前讨论的都是 **n 阶复方阵**（保证特征根次数和为 n)

## Pro1 

```ad-proposition
title: Propositon 1

```
方阵 A 相似 [[Wiki - 矩阵的相似]]于对角矩阵当且仅当 A 有**n 个线性无关的特征向量**[[Wiki - 特征值和特征向量]]



### 证明：

$$\begin{array}{*{20}{c}}{{T^{ - 1}}AT = \Lambda  = diag\left( {{\lambda _1},{\lambda _2}, \ldots {\lambda _n}} \right)}\\{T = \left( {{T_1},{T_2}, \ldots {T_n}} \right) \to A{T_i} = {\lambda _i}{T_i}}\end{array}$$

由 T 可逆[[Wiki - 线性相关与无关的性质]]，即 A 有 n 个线性无关 [[Wiki - 线性相关和线性无关]]的特征向量

反过来同理

这样的矩阵称为**可对角化的**，也称相应的线性变换[[Wiki - 线性映射|线性变换]]是可对角化的


## Pro2 

若矩阵可相似对角化，当且仅当   
   $$A \sim \Lambda  \leftrightarrow {m_i} = {n_i} \leftrightarrow rank\left( {{\lambda _i}I - A} \right) = n - {n_i} = n - {m_i}$$

即几何重数=代数重数对任意特征根成立 [[Wiki - 几何重数与代数重数]]

## Pro 3 

```ad-proposition
title: Propositon 3

矩阵可相似对角化当且仅当

$$
V=V_{\lambda_{1}}\oplus\dots\oplus V_{\lambda_{s}}
$$

```


[[Wiki - 子空间的直和]]


## Pro 4 最小多项式无重根

```ad-proposition
title: Propositon 4

A 可相似对角化，当且仅当最小多项式 $P_{A}(\lambda)$ 无重根

```

 [[Wiki - 矩阵的最小多项式]]

### Proof

若 A 可对角化，则 $P_{A}(x)=(x-\lambda_{1})(x-\lambda_{2})\dots(x-\lambda_{s})$
为不同的特征值为其的根

反过来若无重根，设 $d_A(x)=(x-\lambda_1)\cdots(x-\lambda_s).$ 令 $f_i(x)=d_A(x)/(x-\lambda_i)$, 则 $f_1(x),\cdots,f_s(x)$ 的最大公因式是 1. 由 Bezout 定理，存在 $u_i(x)\in F[x]$ 使得

$$
u_1f_1+\cdots+u_sf_s=1.
$$

故 $u_1(A)f_1(A)+\cdots+u_s(A)f_s(A)=I_n$. 对任意 $X\in F^{n\times1}$, 令 $X_i=u_i(A)f_i(A)X$. 则 $X=$ $X_1+\cdots+X_s$, 且对每个 X 这种分解是唯一的，并且

$$
(\lambda_iI-A)X_i=u_i(A)d_A(A)X=0,
$$

即 $X_i\in V_{\lambda_i}$, 所以 $F^{n\times1}=V_{\lambda_1}\oplus\cdots\oplus V_{\lambda_s}.$

