---
aliases: 
info: 
date: 2024-06-10-星期一 19:32
update: 2024-06-10-Monday 19:33:12
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
id: wiki20240610193227
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - lebesgue积分]]

## Pro 1 一般性质

```ad-proposition
title: Propositon 1

对 lebesgue 可测集 E 和 E 上可测函数 

1、正线性性：$\int_{E} \alpha \varphi +\beta \psi \, dm (x) = \alpha\int _{E} \varphi + \beta \int _{E}\psi; \alpha,\beta\geq 0$

2、集可加性：E, F 可测不交，$\int _{E\cup F}\varphi \, dx=\int _{E}\varphi \, dx+\int _{F}\varphi \, dx$

3、单调性：$\varphi\leq \psi$，则 $\int _{\mathbf{E}}\varphi \, dx\leq \int _{E}\psi \, dx$

4、连续性：$\{E_{k}\}\to E$，$E_{k}$ 单调递增可测集，则 $\int _{E_{k}}\varphi \, dx\to \int _{E}\varphi \, dx(k\to \infty)$


```

[[Wiki - lebesgue可测]]

[[Wiki - 可测函数]]

## Pro 2 改变零测集

```ad-proposition
title: Propositon 2

E is measurable,If f, g are measurable  in E, f=g a.e. $x\in E$，thus $\int _{E}f \, dx=\int _{E}g \, dx$

换句话说，就是在一个**零测集上任意改变**非负可测函数的值，不改变函数积分的值

```

在 Riemann 积分上就不一定可行

## Pro 3 积分变换

```ad-proposition
title: Propositon 3

设 $f\in L^1(\mathbb{R}^d)$. （**要求积分有限**）则

1. (平移不变性) 对任意 $h\in \mathbb{R} ^d, \int _{\mathbb{R} ^d}f( x- h)$ $dx= \int _{\mathbb{R} ^d}f( x)$ $dx$
2. 对任意 $\lambda > 0, \int _\mathbb{R} ^df( \lambda x)$ $dx= \lambda ^{- d}\int _\mathbb{R} ^df( x)$ $dx.$

3. $\int _{\mathbb{R} ^d}f( - x)$ $dx= \int _{\mathbb{R} ^d}f( x)$ $dx.$

```

### Proof

从简单函数到非负可测到一般可测函数，具体见[[实分析讲义-于树澄.pdf]] 第 15 节命题 15.5

## Cal 1 平移变换连续性

$f\in L^{1}(\mathbb{R}^{d})$，$\mid\mid f_{h}-f\mid\mid_{1}\to 0(h\to 0)$，其中 $f_{h}(x)=f(x-h)$

### Proof

利用 [[Wiki - Lp空间的稠密性定理#The 2 稠密性定理]]先在 $C_{c}(\mathbb{R}^{d})$ 上证明，再利用稠密性对一般可测可积函数证明

具体见[[实分析讲义-于树澄.pdf]] 第 15 节命题 15.6 证明

