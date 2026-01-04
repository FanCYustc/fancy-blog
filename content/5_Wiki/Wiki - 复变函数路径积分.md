---
aliases:
  - 可求长曲线
info: 
date: 2024-03-19-星期二 09:22
update: 
tags:
  - wiki/year2024
  - wiki/month03
id: wiki20240319092228
banner: "![[astrowalk.gif]]"
---
---

## Def 1 可求长曲线

```ad-definition
title: Definition 1

曲线 $\gamma:[a, b]\to \mathbb{C}$，对区间的分割 $\Delta: a=t_{0}<t_{1}<\dots< t_{n}=b$，记 $L(P)=\sum_{i=1}^{n}|\gamma(t_{i})-\gamma(t_{i-1})|$，若 $\sup L(P)<\infty$，则称曲线是**可求长的**

```

## Def 2 曲线积分

```ad-definition
title: Definition 2

```
同 [[Wiki - 第一型曲线积分]]，对可求长曲线的分割，以及定义在曲线上的复变函数 f，若 Riemann 和 [[Wiki - Riemann积分的可积性判断]]

$$
\sum_{i=1}^{n}f(\xi_{i})(\gamma(t_{i})-\gamma(t_{i-1}))
$$
的极限与 $\xi$ 的选取无关，则f在$\gamma$上**可积**



## The 1 曲线积分计算

```ad-theorem
title: Theorem 1

设 $f= u+ i v$ 在可求长曲线 $\gamma$ 上连续，则有 

$$
\int f ( \boldsymbol{z}) d \boldsymbol{z}= \int \boldsymbol{u} d x- v d y+ i \int v d x+ u d y
$$
  

```

推导其实就是微分形式，跟实数域上 [[Wiki - 第一型曲线积分]]类似

## Pro 1 参数曲线积分

```ad-proposition
title: Propositon 1

如果 $z=\gamma(t)(a\leqslant t\leqslant b$) 是光滑曲线，$f$ 在 $\gamma$ 上连续，那么

$$\int\limits_{\gamma}f(z)\mathrm{d}z=\int\limits_{a}^{b}f(\gamma(t))\gamma^{\prime}(t)\mathrm{d}t.$$



```

[[Wiki - 第一型曲线积分]]

