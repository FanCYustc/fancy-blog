---
aliases: 
info: 
date: 2024-06-29-星期六 22:57
update: 
tags:
  - wiki/month10
  - 数学分析/微分
  - wiki/year2022
id: wiki20240629225706
banner: "![[astrowalk.gif]]"
---
---

## Def 1 单侧导数

设函数 $f(x)$ 在点 $x_0$ 的右边近旁有定义，如果 $\Delta x>0$, 且
$$\lim\limits_{\Delta x\to0^+}\frac{f(x_0+\Delta x)-f(x_0)}{\Delta x}$$
[[Wiki - 函数的极限]]存在，则称它为 $f (x)$ 在 $x_0$ 的**右导数**，记成 $f_+^\prime (x_0)$, 并称 $f (x)$ 在 $x_0$ 右可导. 类似可定
义 $y=f(x)$ 在 $x_0$ 的左可导和它的左导数 $f'_{-}(x_0).$

## Def 2 导数

当 $x_{0}$ 处左右导数相同，称为 f 在 $x_{0}$ 处可导，记导数为 $f'(x_{0})$

若对 $\forall x\in I$，存在 $x\to f'(x)$ 的映射，称 $f'(x)$ 为 f 在 I 上的**导函数**，也记为 $\frac{df}{dx}$


几何意义： $x$ 所确定的点的切线斜率关于 $x$ 的函数

## Pro 1 

可导一定连续，连续不一定可导 [[Wiki - 函数的连续性]]

## Pro 2 运算性质


1. $$[u(x)\pm v(x)]' = u'(x)\pm v'(x)$$
2. $$[u(x)\cdot v(x)]'=u'(x)v(x)+u(x)v'(x) $$
3. $$[\frac{u(x)}{v(x)}]'=\frac{u'(x)\cdot v(x)-u(x)v'(x)}{v^2(x)}$$

[[Wiki - 映射的微分]]