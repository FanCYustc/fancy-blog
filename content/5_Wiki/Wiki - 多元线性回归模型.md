---
aliases: 
info: 
date: 2025-04-29-星期二 17:50
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 多元统计分析/多元线性回归
id: wiki20250429175026
banner: "![[astrowalk.gif]]"
---
---
## The 1 多元线性回归模型

假设响应为 $q \times  1$ 向量 $\mathbf{y}$ , 自变量 $\mathbf{x} = {\left( {x}_{1},{x}_{2},\ldots ,{x}_{p}\right) }^{\top },{x}_{1} = 1$

$$
{\mathbf{y}}_{q \times  1} = {B}^{\top }{\mathbf{x}}_{p \times  1} + {\varepsilon }_{q \times  1} = {\beta }_{1}{x}_{1} + \cdots  + {\beta }_{p}{x}_{p} + \varepsilon ,\varepsilon  \sim  \left( {\mathbf{0},\sum }\right) ,\varepsilon \parallel \mathbf{x}$$

其中 $B = \left( {\beta }_{ij}\right)  = {\left( {\beta }_{1},\ldots ,{\beta }_{p}\right) }^{\top } = \left( {{\beta }_{\left( 1\right) },\ldots ,{\beta }_{\left( q\right) }}\right)$ 是 $p \times  q$ 回归系数矩阵, ${\beta }_{ij}$ 为 ${x}_{i}$ 对 ${y}_{j}$ 的效应。当 $q = 1$ 时, 即一元的线性回归模型。

上述模型满足 Gauss-Markov 假设:
- 回归函数线性: $E\left( {\mathbf{y} \mid  \mathbf{x}}\right)  = {B}^{\top }\mathbf{x}$
- 方差齐性: $\operatorname{var}\left( {\mathbf{y} \mid  \mathbf{x}}\right)  = \sum$ , 与 $\mathbf{x}$ 无关
- 外生性: $\varepsilon  = \mathbf{y} - {B}^{\top }\mathbf{x} ⫫ \mathbf{x}$
各个响应关于 $\mathrm{x}$ 都服从一元线性回归模型 [[Wiki - 线性回归模型]] ：
$$
\mathbf{y} = \left( \begin{matrix} {y}_{1} \\  \vdots \\  {y}_{q} \end{matrix}\right)  = \left( \begin{matrix} {\mathbf{\beta }}_{\left( 1\right) }^{\top }\mathbf{x} \\  \vdots \\  {\mathbf{\beta }}_{\left( q\right) }^{\top }\mathbf{x} \end{matrix}\right)  + \left( \begin{matrix} {\varepsilon }_{1} \\  \vdots \\  {\varepsilon }_{q} \end{matrix}\right)  \Leftrightarrow  {y}_{j} = {\mathbf{\beta }}_{\left( j\right) }^{\top }\mathbf{x} + {\varepsilon }_{j},j = 1,\ldots ,q
$$

${\mathbf{\beta }}_{\left( j\right) }$ 为第 $j$ 个响应的所有回归系数

## The 2 样本版本

数据 ${\mathbf{y}}_{i},{\mathbf{x}}_{i},i = 1,\ldots ,n$ 满足多元线性回归模型: ${\mathbf{y}}_{i} = {B}^{\top }{\mathbf{x}}_{i} + {\varepsilon }_{i},{\varepsilon }_{i},i = 1,\ldots ,n$ iid $\sim  \left( {\mathbf{0},\sum }\right)$

逐行排列: ${Y}_{n \times  q} = \left( \begin{matrix} {\mathbf{y}}_{1}^{\top } \\  \vdots \\  {\mathbf{y}}_{n}^{\top } \end{matrix}\right) ,{X}_{n \times  p} = \left( \begin{matrix} {\mathbf{x}}_{1}^{\top } \\  \vdots \\  {\mathbf{x}}_{n}^{\top } \end{matrix}\right) ,\mathcal{E} = \left( \begin{matrix} {\mathbf{\varepsilon }}_{1}^{\top } \\  \vdots \\  {\mathbf{\varepsilon }}_{n}^{\top } \end{matrix}\right)$

则我们有多元线性回归模型

$${Y}_{n \times  q} = {X}_{n \times  p}{B}_{p \times  q} + {\mathcal{E}}_{n \times  q}$$
$\mathcal{E}$ 的各行 iid $\sim  \left( {\mathbf{0},\sum }\right) ,\sum  = \left( {\sigma }_{ij}\right)$

[[Wiki - 多元正态分布]]

## Pro 1 最小二乘估计

与 [[Wiki - 多重线性回归最小二乘估计]]一样，如果 X 列满秩，则最小二乘估计为
$$
\hat{B}= (X^{T}X)^{-1}X^{T}Y
$$
残差的估计值为
$$
\hat{\Sigma}= \frac{1}{n-p} Y^{T}(I_{n}-P_{X})Y
$$
[[Wiki - 投影矩阵的性质]]

都是无偏估计 [[Wiki - 无偏估计]]，且

$$
Cov(\hat{\boldsymbol{\beta}}_{i},\hat{\boldsymbol{\beta}}_{j}|X)= \sigma_{ij}(X^{T}X)^{-1}, \hat{B}=(\hat{\boldsymbol{\beta}}_{1},\dots,\hat{\boldsymbol{\beta}}_{q})
$$
