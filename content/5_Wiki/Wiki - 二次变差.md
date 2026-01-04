---
aliases:
  - 协变差
info:
date: 2025-09-24-星期三 20:40
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
  - 随机分析/随机积分
id: wiki20250924204011
banner: "![[astrowalk.gif]]"
---
---

## Def 10.1 二次变差 (Quadratic Variation)

```ad-definition
title: Quadratic Variation of a Continuous Martingale

令 $M = \{M_t\}_{t \ge 0}$ 是一个**连续局部鞅 (continuous local martingale)**。

1.  **构造:** 过程 $X_t = M_t^2$ 是一个**连续局部下鞅 (continuous local submartingale)**。 (这是因为 $f(x) = x^2$ 是一个凸函数)。
2.  **分解:** 根据Doob-Meyer 分解定理 (Doob-Meyer Decomposition)，我们可以对 $M_t^2$ 进行唯一分解：
    $$
    M_t^2 = N_t + \langle M \rangle_t
    $$
    其中 $N_t$ 是一个连续局部鞅且 $N_0=0$，而 $\langle M \rangle_t$ 是一个唯一的、连续的、可预知的**增过程**，且 $\langle M \rangle_0 = 0$。

3.  **定义:** 这个唯一的增过程 $\langle M \rangle = \{\langle M \rangle_t\}_{t \ge 0}$ 被称为 $M$ 的**二次变差过程 (quadratic variation process)**。

这个定义等价于说：
$$
M_t^2 - \langle M \rangle_t \quad \text{是一个连续局部鞅。}
$$
```

[[Wiki - 局部鞅]]、[[Wiki - Doob-Meyer分解定理]]、[[Wiki - 连续时间鞅]]

## Def 10.2 严格定义 (Rigorous Definition via Square-Integrable Martingales)

对于 $M \in \mathcal{M}^2$ (**平方可积鞅**)，过程 $X_t = M_t^2$ 也是一个下鞅（由 Jensen 不等式）。
若 $M$ 连续，则 $M^2$ 属于 **DL 类**[[Wiki - D类过程]]。根据 Doob-Meyer 分解定理，存在唯一的自然增过程 [[Wiki - 增过程]] $A = \langle M \rangle$，使得 $M^2 - \langle M \rangle$ 是一个鞅 [[Wiki - 鞅]]。

对于一般的连续局部鞅 $M$，可以通过停止技术 (localization) 定义 $\langle M \rangle$。

[[Wiki - 平方可积鞅]]

#### 重要例子与意义 (Key Example and Significance)

-   **布朗运动 (Brownian Motion):** 对于标准布朗运动 [[Wiki - brown运动]] $B_t$，其二次变差是 $\langle B \rangle_t = t$。这是布朗运动最核心的性质之一。它意味着 $B_t^2 - t$ 是一个鞅。
-   **物理/金融意义:** 二次变差 $\langle M \rangle_t$ 可以被看作是鞅 [[Wiki - 鞅]] $M$ 在时间段 $[0, t]$ 内累积的**方差 (variance)** 或**能量 (energy)**。它衡量了过程的波动剧烈程度。一个波动剧烈的鞅，其二次变差会增长得很快。[[Wiki - 方差]]

## Pro 10.0 二次变差的直观理解 (Intuitive Interpretation of Quadratic Variation)

```ad-proposition
title: Intuitive Interpretation: Sum of Squared Increments

令 $M$ 是一个连续局部鞅。考虑时间区间 $[0, t]$ 的一个分割 $\Delta: 0 = t_0 < t_1 < \dots < t_n = t$。令分割的网格尺寸为 $|\Delta| = \max_i |t_i - t_{i-1}|$。

那么，二次变差 $\langle M \rangle_t$ 是该分割下**增量平方和**的极限：
$$
\langle M \rangle_t = \lim_{|\Delta| \to 0} \sum_{i=1}^n (M_{t_i} - M_{t_{i-1}})^2
$$
这个收敛是在依概率收敛的意义下成立的。

```

[[Wiki - 依概率收敛]]
### 证明思路与直观解释 (Justification and Intuition)

这个性质解释了“二次变差”这个名字的由来，并且是连接鞅论与微积分的关键。

1.  **名称来源:** 它是“变差 (variation)”（即增量）[[Wiki - 有界变差函数]]的“二次 (quadratic)”（即平方）形式。
2.  **与普通微积分的对比:**
    -   对于一个“平滑”的普通函数 $f(t)$，我们知道 $\sum (f(t_i) - f(t_{i-1}))^2 \approx \sum (f'(t_i) \Delta t)^2 \approx \sum (f')^2 (\Delta t) \cdot \Delta t$。当 $|\Delta| \to 0$ 时，这个和趋向于 0。**平滑函数的二次变差为 0。**
    -   但对于像布朗运动这样的鞅，其路径是处处不可微的、高度“粗糙”的。它的增量 $M_{t_i} - M_{t_{i-1}}$ 的量级是 $\sqrt{\Delta t}$，因此其平方的量级是 $\Delta t$。所以，它们的和 $\sum (M_{t_i} - M_{t_{i-1}})^2$ 不会趋于 0，而是会收敛到一个有限的、非零的值！

3.  **连接两个定义:**
    我们有一个恒等式：
    $$
    M_t^2 = M_0^2 + 2 \sum_{i=1}^n M_{t_{i-1}}(M_{t_i} - M_{t_{i-1}}) + \sum_{i=1}^n (M_{t_i} - M_{t_{i-1}})^2
    $$
    -   当 $|\Delta| \to 0$ 时，中间项 $2 \sum M_{t_{i-1}} \Delta M_{t_i}$ 看起来像一个黎曼和。它会收敛到**随机积分** $2 \int_0^t M_s dM_s$，而这个随机积分本身是一个**局部鞅**。
    -   因此，为了使 $M_t^2$ 的 Doob-Meyer 分解成立，等式右边的最后一项 $\sum (M_{t_i} - M_{t_{i-1}})^2$ **必须收敛到**那个非鞅的部分，也就是**增过程 $\langle M \rangle_t$**。

## Def2 协变差 (Covariation)

```ad-definition
title: Covariation of Two Continuous Martingales

令 $M$ 和 $N$ 是两个连续局部鞅。它们的**协变差过程 (covariation process)** $\langle M, N \rangle_t$ 通过**极化恒等式 (polarization identity)** 来定义：
$$
\langle M, N \rangle_t = \frac{1}{4} \left( \langle M+N \rangle_t - \langle M-N \rangle_t \right)
$$
协变差是一个连续的、**有限变差 (bounded variation)** 的过程。

```

[[Wiki - 极化恒等式]]

```ad-proposition
title: Stochastic Product Rule

协变差的核心性质是：
$$
M_t N_t - \langle M, N \rangle_t \quad \text{是一个连续局部鞅。}
$$
```
[[Wiki - 局部鞅]]

-   **意义:** 协变差 $\langle M, N \rangle_t$ 衡量了两个鞅在时间 $[0, t]$ 内的“协同波动”或“累积协方差”。如果两个鞅“正交”（例如，独立的布朗运动），它们的协变差为 0。详见 [[Wiki - 鞅的正交性]]。
-   **随机乘法法则:** 普通微积分的乘法法则是 $d(fg) = f dg + g df$。
    而在随机微积分中，由于二次变差的存在，乘法法则（伊藤公式的一种形式）变为：
    $$
    d(M_t N_t) = M_t dN_t + N_t dM_t + d\langle M, N \rangle_t
    $$
    这个多出来的 $d\langle M, N \rangle_t$ 项，正是随机微积分区别于普通微积分的本质所在。