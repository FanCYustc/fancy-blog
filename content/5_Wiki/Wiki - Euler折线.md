---
aliases: 
info: 
date: 2023-10-10-星期二 14:17
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231010141759
banner: "![[astrowalk.gif]]"
---
---

考虑初值问题

$$
\frac{dy}{dx}=f(x,y),y(x_{0})=y_{0}
$$
在 $R:\mid x-x_{0}\mid\leq a,\mid y-y_{0}\mid\leq b$ 中连续，且 **f 有上界 M**(与 [[Wiki - cauchy初值定理]]不同）

令 $h=min\left\{ a, \frac{b}{M} \right\}$ 则 y=y (x) 一定在

$\Delta_{h}:\mid x-x_{0}\mid\leq h,\mid y-y_{0}\mid\leq M\mid x-x_{0}\mid$ 中

## Def 1 Euler 折线

```ad-definition
title: Definition 1

区间 $[x_{0}-h, x_{0}+h]$ 2n 等分，令 $x_{k}=x_{0}+ \frac{kh}{n}=x_{0}+kh_{n}, n=0,土1,\dots,土n$

构造折线 $[P_{0},P_{1},\dots,P_{n}]$,

$$
P_{k}(x_{k},y_{k}): y_{k}=y_{k-1}+f(x_{k-1},y_{k-1})(x_{k}-x_{k-1})
$$
同理构造小于 $x_{0}$ 的区域得到连续的 **Euler折线** $\gamma_{n}\subset\Delta_{h}$



```

Euler 折线的表达式为

$$\varphi_n(x)=y_0+\sum_{k=0}^{s-1}f(x_k,y_k)(x_{k+1}-x_k)+f(x_s,y_s)(x-x_s)\quad ,x_{s}<x\leq x_{s+1}(0\leq s\leq n-1) 
$$

同理 $x<x_{0}$ 时有
$$\varphi_{n}(x)=y_{0}+\sum_{k=0}^{-s+1}f(x_{k},y_{k})\left(x_{k-1}-x_{k}\right)+f\left(x_{-s},y_{-s}\right)(x-x_{-s})$$

