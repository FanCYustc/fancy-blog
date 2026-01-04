---
aliases: 
info: 
date: 2024-06-06-星期四 11:31
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/全纯函数
id: wiki20240606113108
banner: "![[astrowalk.gif]]"
---
---

## The 1 最大模原理

```ad-theorem
title: Theorem 1

```
设 $D$ 是 $\boldsymbol C$ 中的**有界域**[[Wiki - 连通区域#Definition 2 区域]]，如果**非常数**的函数 $f$ 在 $\overline{D}$ 上连续，在 $D$ 内全纯 [[Wiki - 全纯函数]]，那么 $f$ 的最大模在 $D$ 的边界上而且只在 $D$ 的边界上达到.



### proof

因为 $f$ 是 $D$ 上非常数的全纯函数，由开映射定理[[Wiki - 全纯开映射定理]] $G=f(D)$ 是一个域. 如果 $|f(z$)|在 $D$ 中某点 $z_0$ 处取到最大值，记 $w_0=f(\boldsymbol{z}_0)$, 则 $\boldsymbol w_0$ 是 $G$ 的一个内点，即有 ε>0, 使得 $B(\boldsymbol w_0,\boldsymbol{\varepsilon})\subset G.$ 故必有 $\boldsymbol{w}_1\in G$, 使得 $|\boldsymbol{w}_1|>|\boldsymbol{w}_0|.$ 于是存在 $z_\mathrm{ı}\in D$, 使得 $|f(z_1)|$ $=|\boldsymbol{w}_1|>|\boldsymbol{w}_0|=|f(\boldsymbol{z}_0)|.$ 这与 $|f(\boldsymbol{z}_0)|$ 是 $|f(\boldsymbol{z})|$ 在 $D$ 中的最大值相矛盾.

