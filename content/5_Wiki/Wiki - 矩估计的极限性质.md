---
aliases:
  - 矩估计的相合性和渐进正态
info: 
date: 2024-04-09-星期二 19:46
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/点估计
id: wiki20240409194605
banner: "![[astrowalk.gif]]"
---
---


## Pro 1 相合性

由于 k 阶样本原点矩是 k 阶原点矩的强相合估计，k 阶中心矩也是强相合估计，即几乎处处收敛 [[Wiki - 几乎处处收敛]]

矩估计一般都为相合估计 [[Wiki - 相合估计]]

```ad-proposition
title: Propositon 1

设 $G(\alpha_{1},\dots,a_{k};\mu_{2},\dots,\mu_{s})$ 为其变元的连续函数，则 $\hat{g_{n}}(\boldsymbol{X})$ 是 $g(\theta)$ 的强相合估计


```

 [[Wiki - 连续函数的性质]]

## Pro 2 渐进正态性

设样本 $X_1,\cdots,X_n$ 为从总体 $\{f(x,\theta),\theta\in\Theta\}$ 中抽取的简单样本，$g(\theta)$ 是定义在参数空间 $\Theta$ 上的实函数，它可以表示为形式 $g(\theta)=G(\alpha_1,\cdots,\alpha_k)$ （因为原点矩 [[Wiki - 随机变量的矩]]也可以表示成中心矩[[Wiki - 中心矩]]的函数）。再设总体的 2 $k$ 阶**原点矩存在**，且 $G$ 对其各变元的**一阶偏导数存在、连续**，令 $b_{ij}=\alpha_{i+j}-\alpha_i\alpha_j,\quad i,j=1,2,\cdots,k;\quad B=(b_{ij})$ 

$$
d_i=\frac{\partial G(\alpha_1,\cdots,\alpha_k)}{\partial\alpha_i},\quad i=1,2,\cdots,k;\quad\boldsymbol{d}=(d_1,\cdots,d_k)',
$$

```ad-proposition
title: Propositon 2

令 $b^2=d^{T}Bd.$

则有 $\hat{g}(\boldsymbol{X})$ 为 $g(\theta)$ 的弱相合估计，且

$$\sqrt{n}\big(\hat{g}_n(\boldsymbol{X})-G(\alpha_1,\cdots,\alpha_k)\big)\xrightarrow{\mathcal{L}}N(0,b^2),\quad n\to\infty.$$


```

[[Wiki - 中心极限定理]]


