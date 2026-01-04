---
aliases:
  - 田中公式
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229101002
banner: "![[astrowalk.gif]]"
---

**Tanaka 公式** 是 [[Wiki - 广义Ito公式]] 的一个特例，也是最著名的例子。它建立了布朗运动的绝对值（不可微函数）与局部时间之间的深刻联系。

## 1. 公式陈述

设 $W_t$ 为标准布朗运动[[Wiki - brown运动]]。对于任意实数 $a$，下列等式成立：

```ad-theorem
title: Tanaka 公式

$$
|W_t - a| = |W_0 - a| + \int_0^t \text{sgn}(W_s - a) dW_s + 2L_t(a)
$$
其中：
* $\text{sgn}(x)$ 是符号函数（通常约定 $\text{sgn}(0) = -1$ 或左连续，这在积分中不影响结果，因为 $W_s=a$ 的 Lebesgue 测度为 0）。
* $L_t(a)$ 是布朗运动在 $a$ 处的 。
```

[[Wiki - 布朗局部时间]]
### 意义与解释

*   **广义 Itô 公式**: 若应用标准 Itô 公式于 $|x-a|$，由于其在 $x=a$ 处不可微（二阶导数为 Dirac $\delta$ 函数），标准公式失效。Tanaka 公式表明，修正项正是二阶导数测度（$\delta_a$）对应的积分，即局部时间。
*   **Doob-Meyer 分解**: $|W_t - a|$ 是一个下鞅[[Wiki - 上鞅和下鞅]]。Tanaka 公式给出了它的 Doob-Meyer 分解：[[Wiki - Doob-Meyer分解定理]]
    *   鞅部分：$M_t = |W_0 - a| + \int_0^t \text{sgn}(W_s - a) dW_s$
    *   增过程部分：$A_t = 2L_t(a)$
*   **正部与负部**: 类似的公式也适用于 $(W_t - a)^+$ 和 $(W_t - a)^-$：
    $$ (W_t - a)^+ = (W_0 - a)^+ + \int_0^t 1_{(a, \infty)}(W_s) dW_s + L_t(a) $$
    $$ (W_t - a)^- = (W_0 - a)^- - \int_0^t 1_{(-\infty, a]}(W_s) dW_s + L_t(a) $$

### 应用

Tanaka 公式是证明 [[Wiki - 布朗局部时间]] 存在性及连续性的有力工具（通过分析随机积分项的性质）。它也用于研究反射布朗运动（Reflected Brownian Motion）。[[Wiki - 反射原理]]
