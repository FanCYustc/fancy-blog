---
aliases: 
info: 24秋回归分析第3章
date: 2024-11-25-星期一 11:28
update: 
tags:
  - scientech/year2024
  - scientech/month11
  - 回归分析/线性回归
id: scientech20241125112841
banner: "![[astrofishing.gif]]"
---
---

# 多重线性回归模型

## Lec8 欧式空间投影

为了将简单回归模型（k=2）推广到更多解释变量的模型，要用线性代数的语言表述中间的各种计算，引入投影矩阵

[第 8 讲课件](E:\课程资料\回归分析\课件\week08.pdf)

 [[Wiki - 正交投影]]

[[Wiki - 投影矩阵的性质]]

## Lec 9 多变量线性回归模型

[第9讲课件](E:\课程资料\回归分析\课件\week09.pdf)

[[Wiki - 线性回归模型]]

最小二乘法估计: 指对参数 $\boldsymbol{\beta}$ 的估计

[[Wiki - 多重线性回归最小二乘估计]]

[[Wiki - 线性回归的误差方差估计]]
## Lec 10 中心化

[第10讲课件](E:\课程资料\回归分析\课件\week10.pdf)

因为截距项与斜率项有不同的性质，我们更关注斜率项，中心化就是通过投影消去截距项的影响。

[[Wiki - 线性模型的中心化]]

[[Wiki - 线性回归的决定系数]]

利用这章的内容，对中心化的多重线性回归模型 $\mathbf{y}= \mathbf{1}\beta_{0}+ Z\mathbf{b}+ \boldsymbol{\epsilon}$，给定自变量和与 y 的方差-协方差矩阵后，整个最小二乘估计都可以求解：

- $\hat{\mathbf{b}}= S_{\mathbf{x x}}^{-1}S_{\mathbf{x}y}$
- $\hat{\sigma}^{2}= \frac{n-1}{n-p} S_{yy\bullet \mathbf{x}} \simeq S_{yy}- S_{y\mathbf{x}}S_{\mathbf{x x}}^{-1}S_{\mathbf{x}y}$
- $R^{2}= (r_{y \hat{y}})^{2}= \frac{S_{y\mathbf{x}}S_{\mathbf{x x}}^{-1}S_{\mathbf{x}y}}{S_{yy}}$


## Lec 11 LS 估计的分量

[第11讲课件](E:\课程资料\回归分析\课件\week11.pdf)

这一节的内容是如何对线性回归模型 $\mathbf{y}= X\boldsymbol{\beta}+ \boldsymbol{\epsilon}= X_{1}\boldsymbol{\beta}_{1}+ X_{2}\boldsymbol{\beta}_{2}+\boldsymbol{\epsilon}$ 分解后对部分分量进行估计，主要与去相关化有关

在 lec10 中先对截距项去相关化，在对部分斜率参数去相关化只估计部分解释变量的斜率系数。

[[Wiki - 线性回归最小二乘分量的估计]]

## Lec 12 F 检验

[第12讲课件](E:\课程资料\回归分析\课件\week12.pdf)

[[Wiki - 三大分布的统计学意义]]

F 检验是对多重线性回归模型整体有没有显著性进行检验。

重新理解 F 分布 [[Wiki - F分布]]，可以理解成计算多元正态分布正交投影分解后的夹角

[[Wiki - wald检验]]

[[Wiki - 线性模型的F检验]]
## Lec 13 F 检验的其他表示

[第13讲课件](E:\课程资料\回归分析\课件\week13.pdf)

[[Wiki - 带约束的最小二乘估计]]

[[Wiki - 线性回归单个参数的t检验]]