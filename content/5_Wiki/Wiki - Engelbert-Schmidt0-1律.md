---
aliases:
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229101004
banner: "![[astrowalk.gif]]"
---

**Engelbert-Schmidt 0-1 律** 是关于布朗运动可加泛函有限性的一个重要定理。它回答了这样一个问题：对于非负博雷尔函数 $f$，积分 $\int_0^t f(W_s) ds$ 何时有限？

## 1. 定理陈述

设 $f: \mathbb{R} \to [0, \infty)$ 为 Borel 可测函数。

```ad-theorem
title: Engelbert-Schmidt 0-1 律 (Proposition 6.27)

以下三个命题是等价的：
1. $P^0 [ \int_0^t f(W_s) ds < \infty, \forall t > 0 ] > 0$
2. $P^0 [ \int_0^t f(W_s) ds < \infty, \forall t > 0 ] = 1$
3. $f$ 是**局部可积**的，即对于任意紧集 $K \subset \mathbb{R}$，$\int_K f(y) dy < \infty$。
```
[[Wiki - 紧致集合]]
### 意义

该定理表明，布朗运动路径积分的有限性是一个“全有或全无”的性质，且完全由函数 $f$ 的局部可积性决定。[[Wiki - 局部可积函数]]
*   如果 $f$ 在某处不可积（例如 $f(x) = 1/x^2$ 在原点附近），则积分 $\int_0^t f(W_s) ds$ 将以概率 1 发散。
*   这对于研究随机微分方程解的存在性（特别是漂移项奇异时）非常重要。

## 推论

对于幂函数 $f(x) = |x|^{-\alpha}$：
*   若 $\alpha < 1$，则 $\int_0^t |W_s|^{-\alpha} ds < \infty$ a.s.
*   若 $\alpha \ge 1$，则 $\int_0^t |W_s|^{-\alpha} ds = \infty$ a.s.

这反映了布朗运动在原点附近的“逗留”虽然频繁，但对于发散得不够快的函数，其积分仍然是有限的。


[[Wiki - 布朗局部时间]]