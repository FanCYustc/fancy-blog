---
aliases:
  - Semimartingale Local Time
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229101006
banner: "![[astrowalk.gif]]"
---

局部时间的概念不仅适用于布朗运动，也可以推广到一般的**连续半鞅 (Continuous Semimartingale)**。这一推广是随机分析中处理非光滑函数变换（Meyer-Tanaka 公式）的基础。

## 1. 定义与存在性

设 $X_t = X_0 + M_t + V_t$ 为连续半鞅 [[Wiki - 连续半鞅]]。

```ad-theorem
title: 存在性定理 (Theorem 7.1)

存在一个非负随机场 $\Lambda_t(a)$，称为 $X$ 的局部时间，满足：
1.  **占位时间公式**: 对于任意 Borel 可测函数 $k \ge 0$，
    $$ \int_0^t k(X_s) d\langle M \rangle_s = 2 \int_{-\infty}^{\infty} k(a) \Lambda_t(a) da $$
2.  **正则性**: $t \mapsto \Lambda_t(a)$ 连续且非降；$(t, a) \mapsto \Lambda_t(a)$ 在 $t$ 上连续，在 $a$ 上右连续有左极限 (RCLL)。
```

[[Wiki - 布朗局部时间]]

注意：与布朗运动不同，一般半鞅的局部时间在空间变量 $a$ 上可能不连续。

## 2. Meyer-Tanaka 公式

半鞅的局部时间通过 **Meyer-Tanaka 公式** 与过程本身联系起来：
$$ |X_t - a| = |X_0 - a| + \int_0^t \text{sgn}(X_s - a) dM_s + \int_0^t \text{sgn}(X_s - a) dV_s + 2\Lambda_t(a) $$
这提供了另一种定义（或计算）局部时间的方法。

[[Wiki - Tanaka公式]]

## 3. 性质

*   **与二次变差的关系**: 直观上，$\Lambda_t(a)$ 衡量了半鞅 $X$ 在 $a$ 附近累积的二次变差 $\langle M \rangle_t$。[[Wiki - 二次变差]]
*   **平坦性**: 类似于布朗运动 [[Wiki - brown运动]]，$\Lambda_t (a)$ 仅在 $X_t = a$ 时增加。


[[Wiki - 广义Ito公式]]

