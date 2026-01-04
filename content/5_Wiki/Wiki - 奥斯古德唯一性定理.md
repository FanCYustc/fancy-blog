---
aliases:
  - Osgood Uniqueness Theorem
info: 奥斯古德唯一性定理
date: 2025-12-30-星期二 15:35
update:
tags:
  - 微分方程/ODE
  - wiki/month11
  - wiki/year2023
id: wiki20251230153500
banner: "![[astrowalk.gif]]"
---


## Thm 1 奥斯古德唯一性定理

```ad-theorem
title: Osgood Uniqueness Theorem

设连续函数 $E(y)$ 满足：
1. $E(0) = 0$
2. 当 $0 < y \leqslant 1$ 时 $E(y) \neq 0$

考虑微分方程：
$$
\frac {d y}{d x} = E (y)
$$

**奥斯古德唯一性定理**指出：若瑕积分
$$
\int_0^1\frac{dy}{E(y)}
$$
**发散**，则该方程在 $y=0$ 处满足解的唯一性（即 $y=0$ 不是奇解）。

反之，若该积分**收敛**，则 $y = 0$ 是微分方程的**奇解**。
```

[[Wiki - 奇解]]

[[Scientech - 常微分方程-解的存在和唯一性]]

