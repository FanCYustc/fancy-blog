---
aliases: 
info: m维曲面的定义
date: 2023-12-12-星期二 09:59
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数学分析/微分
  - 数学分析/曲线积分和曲面积分
  - 几何学
id: wiki20231212095935
banner: "![[astrowalk.gif]]"
---
---

## Def 1 曲面

```ad-definition
title: Definition 1

一个 $\mathbb{R}^n$ 的子集 $M$ 称为是 $m$ 维 $C^k\left(k\geqslant1\right)$ 曲面是指： 对任意 $x\in M$, 存在 $x$ 在  $\mathbb{R}^n$ 中的邻域 V，使得 $M\cap V$ 可以表示成一个定义在 $m$ 维开集 $U\subset\mathbb{R}^m$ 上的 $C^k$ 映射的图

```


## Pro 1 

最直观的，n-m 个约束方程联立得到的就是 m 维曲面

```ad-proposition
title: Propositon 1

```


设 $W$ 是 $\mathbb{R}^n$ 的开集[[Wiki - 度量空间的开集闭集]]，

$$
F=(f_1,\cdots,f_{n-m}):\:W\to\mathbb{R}^{n-m}
$$

是 $C^k$ 映射，并且 $rankF\equiv n-m$. [[Wiki - 映射的秩定理]] 则当

$$
M=\{x\in W\mid F(x)=0\}
$$

非空时，它是 $m$ 维 $C^k$ 曲面.


### Proof

取 $x^{0}\in M$ 由于 rankF=n-m，不妨设 $\frac{{\partial f_{i}}}{\partial x_{j}}$ 可逆，$1\leq i\leq n-m,m+1\leq j\leq n$

则由隐映射定理 [[Wiki - 隐映射定理]]，$x^{0}$ 附近 $F=0$ 有唯一解

$$
(x_{m+1},\dots,x_{n})=\Phi(x_{1},\dots,x_{m})
$$

其中 $\Phi: U\subset \mathbb{R}^{m}\to \mathbb{R}^{n-m}$ 的 $C^{k}$ 映射

取 V 是 $x^{0}$ 的邻域，则 $M\cap V$ 就是 $\Phi$ 的图，为 m 维曲面

