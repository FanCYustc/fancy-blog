---
aliases: 
info: 
date: 2025-01-02-星期四 17:41
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 回归分析/线性回归
id: wiki20250102174115
banner: "![[astrowalk.gif]]"
---
---

## The 1 LS 分量的估计

假设线性回归模型 [[Wiki - 线性回归模型]]

$$ y = X\beta + \epsilon = X_1\beta_1 + X_2\beta_2 + \epsilon,\epsilon \perp\!\!\!\perp X, \epsilon \sim (0,\sigma^2 I_n), $$

其中设计阵 $X=(X_1, X_2)$ 列满秩，$\beta = (\beta_1^T,\beta_2^T)^T$。令 $X_2^{\perp}=X_2 - P_{X_1}X_2$[[Wiki - 正交投影]]，则 $\beta_2$ 的 LS 估计及其方差 

$$ \hat{\boldsymbol{\beta}}_2=(X_2^{\perp T}X_2^{\perp})^{-1}X_2^{\perp T}\mathbf{y}, Var(\hat{\boldsymbol{\beta}}_2|X)=\sigma^2(X_2^{\perp T}X_2^{\perp})^{-1}
$$

与整体回归最小二乘估计的形式一样 [[Wiki - 多重线性回归最小二乘估计]]

也可以表述成：

对 $\mathbf{y}$ 也做关于 $X_{1}$ 的正交化，$\mathbf{y}^{\perp}= \mathbf{y}- P_{X_{1}}\mathbf{y}$，则满足模型
$$
\mathbf{y}^{\perp}= X_{2}^{\perp}\boldsymbol{\beta}_{2}+ \boldsymbol{\epsilon}
$$

解同样为 $\hat{\boldsymbol{\beta}}_2=(X_2^{\perp T}X_2^{\perp})^{-1}X_2^{\perp T}\mathbf{y}$

### Proof

$$
\begin{align}
\mathbf{y} &= X_{1}\boldsymbol{\beta}_{1}+ ( X_{2}^{\perp}+ P_{X_{1}}X_{2})\boldsymbol{\beta}_{2}+\boldsymbol{\epsilon} \\
&=X_{1}(\boldsymbol{\beta}_{1}+ (X_{1}^{T}X_{1})^{-1}X_{1}^{T}X_{2}\boldsymbol{\beta}_{2})+ X_{2}^{\perp}\boldsymbol{\beta}_{2}+ \boldsymbol{\epsilon} \\
\end{align}
$$

此时 $X_{1}^{T}X_{2}^{\perp}=0$，于是
$$
\hat{\mathbf{y}}= X_{1}\hat{\boldsymbol{\beta}_{1}^{*}}+ X_{2}^{\perp} \hat{\boldsymbol{\beta}_{2}}= P_{X}\mathbf{y}
$$

分解得 $\hat{\boldsymbol{\beta}_{2}}=( (X_{2}^{\perp})^{T}X^{\perp})^{-1}(X_{2}^{\perp})^{T}\mathbf{y}$

## The 2 

基于样本协方差的表述：

如果 $X= (X_{1}, X_{2})= (\mathbf{1},Z_{1},X_{2})$ 列满秩 [[Wiki - 矩阵的秩]]，则
$$
\hat{\boldsymbol{\beta}_{2}}= (X_{2}^{\perp T}X_{2}^{\perp} )^{-1}X_{2}^{\perp}\mathbf{y}= S_{22\bullet 1}^{-1}S_{2y\bullet 1}
$$
$$
Var[\hat{\boldsymbol{\beta}_{1}}|X]= \frac{1}{n-1} \sigma^{2}S_{22\bullet 1}^{-1}
$$
其中 $\mathbf{x_{i 1}}$ 代表 $Z_{1}$ 的第 i 行，$\mathbf{x}_{i2}$ 代表 $X_{2}$ 第 i 行。

协方差矩阵为
$$
S= \begin{pmatrix}
S_{1 1} & S_{12} & S_{1y} \\
S_{21} & S_{22} & S_{2y} \\
S_{y 1} & S_{y 2} & S_{yy}
\end{pmatrix}
$$

[[Wiki - 线性模型的中心化]]

[[Wiki - 去相关化]]

