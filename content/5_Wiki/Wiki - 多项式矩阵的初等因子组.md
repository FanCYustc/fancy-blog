---
aliases: 
info: 多项式矩阵的初等因子组
date: 2023-12-06-星期三 11:44
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/矩阵
  - 线性代数/多项式
id: wiki20231206114457
banner: "![[astrowalk.gif]]"
---
---

## Def  1 初等因子组

```ad-definition
title: Definition 1

设 A (λ) 是复数域上 $m\times n$ λ 矩阵[[Wiki - 多项式矩阵]]，rank $A(\lambda)=r$, 且 $d_1(\lambda),d_2(\lambda),...$, $d_r(\lambda)$ 是 $A(\lambda)$ 的不变因子[[Wiki - 多项式矩阵的不变因子]]. 由于复系数多项式可以分解为一次因子的乘积，因此


$$
\begin{aligned}
d_{1}(\lambda)=(\lambda-\lambda_{1})^{e_{11}}\dots(\lambda-\lambda_{t})^{e_{1t}}\\
d_{2}(\lambda)\:=\:(\lambda\:-\:\lambda_{1})^{e_{21}}\:(\lambda\:-\:\lambda_{2})^{e_{22}}\cdots(\lambda\:-\:\lambda_{t})^{e_{2t}}\:,\end{aligned}
$$

$$
d_{r}(\lambda)\:=\:(\lambda\:-\:\lambda_{1})^{e_{n1}}(\lambda\:-\:\lambda_{2})^{e_{n2}}\:\cdots\:(\lambda\:-\:\lambda_{t})^{e_{nt}}\:,
$$

其中 $\lambda_1,\lambda_2,...,\lambda_i$ 是两两不同的复数，$e_{ij}$ 是非负整数，$i=1,2,...,r;j=1,2,...$, $t$. 由于 $d_i(\lambda)$ 整除 $d_{i+1}(\lambda)$, 所以 0 $\leqslant e_{1j}\leqslant e_{2j}\leqslant\cdotp\cdotp\cdotp\leqslant e_{ij},j=1,2,\cdotp\cdotp\cdotp,t$. 当 $e_{jl}>0$ 时，因子 ($\lambda-\lambda_j)^{e_i}$ 称为矩阵 $A(\lambda)$ 的属于 $\lambda_j$ 的**初等因子**，${\mathbf{A}}(\lambda)$ 的初等因子的全体称为 $A(\lambda)$ 的**初等因子组**.



```

## Pro 1 相抵不变量

```ad-proposition
title: Propositon 1

初等因子组也是多项式矩阵的相抵不变量 [[Wiki - 多项式矩阵相抵]]

$A (\lambda)$ 和 $B(\lambda)$ 相抵等价于他们秩相等且初等因子组相同

```



