---
aliases: 
info: 
date: 2025-01-01-星期三 20:05
update: 
tags:
  - wiki/month10
  - 回归分析/线性回归
  - wiki/year2024
id: wiki20250101200542
banner: "![[astrowalk.gif]]"
---
---

## The 1 简单线性回归

对 [[Wiki - 线性回归模型]]，如果解释变量 $x$ 是一维随机变量，则模型为
$$
y= a+bx +\epsilon, \epsilon\sim N(0,\sigma^{2})
$$
记协方差矩阵 [[Wiki - 协方差矩阵]]为
$$
\Sigma = \begin{pmatrix}
\sigma_{x}^{2} & \rho \sigma_{x}\sigma_{y} \\
\rho\sigma_{y}\sigma_{x} & \sigma_{y}^{2}
\end{pmatrix}
$$

## Pro 1 回归函数

由线性回归模型中的结论，$b= \sigma_{x}^{-2} \sigma_{yx}= \frac{\rho\sigma_{y}}{\sigma_{x}}$，$a=\mu_{y}- b\mu_{x}$，于是有回归函数
$$
\frac{{E[y|x]-\mu_{y}}}{\sigma_{y}}= \rho\frac{ x-\mu_{x}}{\sigma_{x}}
$$

这说明如果用 x 解释 y，变化率会与 $\frac{\sigma_{y}}{\sigma_{x}}$ 比差一个 $\rho$，这是因为 x 和 y 在模型中地位不对等。

