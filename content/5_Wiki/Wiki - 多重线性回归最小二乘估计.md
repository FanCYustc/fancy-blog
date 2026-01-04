---
aliases: 
info: 
date: 2025-01-02-星期四 10:03
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 回归分析/线性回归
id: wiki20250102100353
banner: "![[astrowalk.gif]]"
---
---

## The 1 多重线性回归模型

[[Wiki - 线性回归模型]]中，

$$
\mathbf{y}= X\boldsymbol{\beta}+ \boldsymbol{\epsilon}, \boldsymbol{\epsilon}\sim N(0,\sigma^2I_{n})
$$

其中 $\epsilon$ 与 X 独立，
$$
X= \begin{pmatrix}
1& x_{11} &x_{12}&  \dots & x_{1(p-1)} \\
1 & x_{21} & x_{22} & \dots & x_{2(p-1)} \\
\vdots & \vdots & \vdots & &\vdots \\
1 & x_{n1} & x_{n2} & \dots & x_{n(p-1)}
\end{pmatrix}
$$

## The 2 最小二乘法

解最小二乘使得残差平方和最小：

$$
\min_{\beta\in \mathbb{R}^{p} } \|\boldsymbol{y}- X\boldsymbol{\beta}\|^{2}
$$
根据 ![[Wiki - 正交投影#Def 1 正交投影]]

最小值在 $X\boldsymbol{\beta}= P_{X}\boldsymbol{y}= X(X^{T}X)^{-1}X^{T}\boldsymbol{y}$ 时达到，于是最小二乘 LS 估计为
$$
\hat{\boldsymbol{\beta}} = (X^{T}X)^{-1}X^{T} \boldsymbol{y}
$$
[[Wiki - 投影矩阵的性质]]

且满足正则方程 $X^{T}(\boldsymbol{y}-X \hat{\boldsymbol{\beta}})=0$（与 X 与 $\epsilon$ 独立是一致的）

拟合值记为 $\hat{y_{i}}= \boldsymbol{x_{i}}^{T}\hat{\boldsymbol{\beta}}$，$\boldsymbol{x_{i}}$ 为 X 的第 i 行。残差记为 $e_{i}= y_{i}- \hat{y_{i}}$，$\boldsymbol{e}= \boldsymbol{y}^{\perp}= (I_{n}-P_{X}) \boldsymbol{y}$

**这里需要设计阵 X 是列满秩的**[[Wiki - 矩阵的秩]]

## Pro 1 

如果矩阵 X 列满秩 $rank (X)= p$，则 LS 估计 $\hat{\boldsymbol{\beta}}$ 唯一，且是无偏估计 [[Wiki - 无偏估计]]。

$$
Var[\hat{\boldsymbol{\beta}}|X]= \sigma^{2}(X^{T}X)^{-1}
$$

## Pro 2 

对于 $\boldsymbol{\beta}$ 的任何线性无偏估计 $\tilde{\beta}= C\boldsymbol{y}$，有最小二乘估计方差最小，即
$$
Var[\tilde{\beta}]\geq Var[\hat{\beta}]
$$

[[Wiki - 简单线性回归的参数估计#Pro 2 有效性]]是其特例
### Proof

$$
Var[\hat{\boldsymbol{\beta}}]= E[Var[\hat{\boldsymbol{\beta}}|X]]
$$

只需证明 $Var[\tilde{\boldsymbol{\beta}}|X]\geq Var[\hat{\boldsymbol{\beta}}|X]$

等价于 $CC^{T}\geq (X^{T}X)^{-1}$

$$
(X^{T}X)^{-1}= CX^{T}(X^{T}X)^{-1}XC^{T}= CP_{X}C^{T}\leq CC^{T}
$$

