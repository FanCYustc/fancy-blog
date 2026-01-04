---
aliases: 
info: 
date: 2025-01-02-星期四 22:16
update: 
tags:
  - wiki/month12
  - wiki/year2024
  - 回归分析/线性回归
  - 优化
id: wiki20250102221626
banner: "![[astrowalk.gif]]"
---
---

## The 1 

对正态多重线性回归模型 $\mathbf{y} = X\boldsymbol{\beta} + \boldsymbol{\epsilon}$，X 列满秩 [[Wiki - 矩阵的秩]]，考虑带约束的最小二乘问题

$$
\min_{\boldsymbol{\beta}\in \mathbb{R}^{p}}\|\mathbf{y}- X\boldsymbol{\beta}\|^{2}s.t. A\boldsymbol{\beta}= \boldsymbol{\theta}_{0}
$$

其中 $A_{q\times p}$ 是行满秩常数矩阵。则约束最小二乘估计为
$$
\tilde{\boldsymbol{\beta}}= \hat{\boldsymbol{\beta}}- (X^{T}X)^{-1}A^{T}(A(X^{T}X)^{-1}A^{T})^{-1}(A\hat{\boldsymbol{\beta}}-\boldsymbol{\theta}_{0})
$$

其中 $\hat{\boldsymbol{\beta}}$ 是无约束的最小二乘估计 [[Wiki - 多重线性回归最小二乘估计]]

### Proof

利用 Lagrange 乘子法 [[Wiki - 拉格朗日乘数法]]，

$$
f(\boldsymbol{\beta},\boldsymbol{\lambda})= \|\mathbf{y}- X\boldsymbol{\beta}\|^{2}+ 2\boldsymbol{\lambda}^{T}(A\boldsymbol{\beta}-\boldsymbol{\theta}_{0})
$$

解得
$$
\tilde{\boldsymbol{\beta}}= \hat{\boldsymbol{\beta}}- (X^{T}X)^{-1}A^{T}\boldsymbol{\lambda}
$$

代入到约束又有

$$
\boldsymbol{\lambda}= (A(X^{T}X)^{-1}A^{T})^{-1}(A\hat{\boldsymbol{\beta}}- \boldsymbol{\theta}_{0})
$$
再带回上式即得 $\tilde{\boldsymbol{\beta}}$

用下面的投影角度也可以解释：
## Pro 1

在约束下

$$
V_{0}= \{X\boldsymbol{\beta}: A\boldsymbol{\beta}=0 \}= C(X(X^{T}X)^{-1}A^{T})^{\perp}\cap C(X)
$$

$$
P_{V_{0}}= P_{X}- P_{X(X^{T}X)^{-1}A^{T}}
$$

[[Wiki - 正交投影]]

### Proof

如有 $\boldsymbol{\mu}= X\boldsymbol{\beta}\in V_{0}$，则有 $A(X^{T}X)^{-1}X^{T}\boldsymbol{\mu}=A\boldsymbol{\beta}=0$，于是
$\boldsymbol{\mu}\in C(X(X^{T}X)^{-1}A^{T})^{\perp}$

再由 [[Wiki - 正交分解定理]]和 [[Wiki - 投影矩阵的性质]]可以得到 $P_{V_{0}}=P_{X}-P_{X(X^{T}X)^{-1}A^{T}}$

