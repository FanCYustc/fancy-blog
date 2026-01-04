---
aliases:
  - Schur不等式
info: 特征值的界的判断
date: 2023-11-24-星期五 16:12
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/线性变换
id: wiki20231124161205
banner: "![[astrowalk.gif]]"
---
---

## The 1 特征值界的估计

```ad-theorem
title: Theorem 1

Suppose $A=(a_{kl})\in \mathbb{C}^{n\times n}$，设 $B=\frac{1}{2 }(A+\overline A^{T})=(b_{kl})$
$C=\frac{1}{2\mathbf{i}}(\boldsymbol{A}-\bar{\boldsymbol{A}}^{\mathrm{T}})=(c_{kl})$,  且记

$$
M_A=\max\left\{\mid a_{kl}\mid:1\leqslant k,l\leqslant n\right\},
$$
 其中 $|a_{kl}|$ 表示复数 $a_{kl}$ 的模. 设 $\lambda_\mathrm{o}$ 是方阵 $A$ 的特征值，则

$|\lambda_0|\leqslant nM_A,\quad|\operatorname{Re}\lambda_0|\leqslant nM_B,\quad|\operatorname{Im}\lambda_0|\leqslant nM_C$,

```

[[Wiki - 特征值与矩阵]]

[[Wiki - 矩阵的转置和共轭]]

来源 [[Book - 线性代数-李炯生]]


## The 2 Schur 不等式

```ad-theorem
title: Theorem 2

N 阶实方阵的特征值为 $\lambda_{1},\dots,\lambda_{n}\in \mathbb{C}$，则

$$
trace(AA^{T})\geq \sum_{j=1}^{n}|\lambda_{j}|^{2}
$$

[[Wiki - 矩阵的迹]]

当且仅当 A 是规范矩阵[[Wiki - 规范方阵]]的时取等

```
