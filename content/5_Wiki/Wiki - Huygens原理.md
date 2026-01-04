---
aliases:
  - Huygens Principle
info: 波传播的惠更斯原理及维数效应
date: 2025-12-25-星期四 11:00
update: 2025-12-25-星期四 11:00
tags:
  - wiki/year2025
  - wiki/month12
  - 微分方程/PDE
id: wiki20251225110003
banner: "![[astrowalk.gif]]"
---

## Def 1 惠更斯原理

```ad-definition
title: Definition 1 (Huygens Principle)

惠更斯原理指出，波在传播过程中，波前的每一点都可以看作是一个新的次波源。在数学上，**强惠更斯原理 (Strong Huygens Principle)** 指的是：在时刻 $t$ 的解 $u(x,t)$ 仅依赖于初始数据在球面 $|y-x|=ct$ 及其附近的值，而不是整个球体 $|y-x| \le ct$。
```

## Prop 1 维数效应

*   **奇数维 (d=3, 5, ...)**: 满足强惠更斯原理。例如在 $d=3$ 时，声音传播是清晰的（sharp），没有后效（afterglow）。解只依赖于光锥的边界。
*   **偶数维 (d=2, 4, ...)**: 不满足强惠更斯原理。例如在 $d=2$（水波）时，初始扰动会引起持续的波动（后效）。解依赖于整个光锥内部。

这种差异可以通过 **降维法 (Method of Descent)** 从奇数维推导偶数维看出来。

[[Wiki - Rd上的波动方程]]
