---
aliases: 
info: 
date: 2025-01-02-星期四 12:45
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 回归分析/线性回归
id: wiki20250102124530
banner: "![[astrowalk.gif]]"
---
---

## Def 1 决定系数 

对于多重线性回归模型 $y= \mathbf{x}^{T}\boldsymbol{\beta}+ \epsilon$，

由[[Wiki - 线性回归的误差方差估计|残差平方和]]平方和分解，再最小二乘估计后，决定系数定义为

$$
R^{2}= \frac{SS_{回}}{SS_{总}}= \frac{{\|\hat{\mathbf{y}}-\mathbf{1}\overline{y}\|^{2}}}{\|\mathbf{y}- \mathbf{1}\overline{y}\|^{2}}, 0\leq R^{2}\leq 1
$$

来源于 [[Wiki - 条件方差#The 1 条件方差公式]]
## The 1 等价定义

从另一个角度，决定系数其实就是 [[Wiki - 决定系数]]的基于样本 X 的估计

$$
R^{2} = (r_{\hat{y}y})^{2} = \frac{S_{y\mathbf{x}}S_{ \mathbf{x x}}^{-1}S_{\mathbf{x}y}}{S_{yy}}
$$

其中 $S_{\mathbf{x x}}$ 是样本方差-协方差矩阵 [[Wiki - 协方差矩阵]]，即
$$
S_{\mathbf{ x x}}= \frac{1}{n-1} \sum_{i} (\mathbf{x}_{i}- \overline{\mathbf{x}})(\mathbf{x}_{i}-\overline{x})^{T}= \frac{1}{n-1} Z_{c}^{T}Z_{c}
$$

$Z_{c}$ 为除截距项外中心化后的矩阵，定义见 [[Wiki - 线性模型的中心化]]

$S_{\mathbf{x}y}= \frac{1}{n-1} Z_{c}^{T}\mathbf{y}$

因此有 
$$
RSS= (n-1) (S_{yy}- S_{y\mathbf{x}}S_{\mathbf{x x}}^{-1}S_{\mathbf{x}y}) = (n-1)S_{yy\bullet \mathbf{x}}
$$
$$
\hat{\sigma}^{2}= \frac{n-1}{n-p} S_{yy\bullet \mathbf{x}} = \frac{{n-1}}{n-p} (1-R^{2})S_{yy}
$$

[[Wiki - 线性回归的误差方差估计]]

可以直接约等于 $(1-R^{2})S_{yy}$

## Pro 1

$$
R^{2}= \max_{ \mathbf{u}\in L(X)}(r_{\mathbf{u},\mathbf{y}})^{2}
$$
其中 r 为样本相关系数，在 $\mathbf{u}= P_{X}\mathbf{y}$ 时取到最大值

与 [[Wiki - 决定系数#Cal 1]] 一致



