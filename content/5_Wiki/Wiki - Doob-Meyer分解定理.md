---
aliases:
info:
date: 2025-09-24-星期三 17:37
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250924173723
banner: "![[astrowalk.gif]]"
---
---

## The 1 Doob-Meyer 分解定理 (Doob-Meyer Decomposition)

```ad-theorem
title: Doob-Meyer Decomposition Theorem

假设滤子 $\{\mathcal{F}_t\}_{t \ge 0}$ 满足**通常条件**。令 $X = \{X_t\}_{t \ge 0}$ 是一个 **DL类 (Class DL)** 的 **càdlàg 下鞅**。

那么，存在一个**唯一**的分解：
$$
X_t = M_t + A_t
$$
其中：
1.  $M = \{M_t\}$ 是一个 **càdlàg 的鞅 (martingale)**。
2.  $A = \{A_t\}$ 是一个**可预知的 (predictable)** (或等价地，**自然的 (natural)**)、**右连续的增过程 (right-continuous increasing process)**，且 $A_0 = 0$。

如果 $X$ 进一步属于 **D类 (Class D)**，则 $M$ 是一致可积鞅，且 $A$ 是可积的 ($E[A_\infty] < \infty$)。
```

[[Wiki - Filtration的通常条件]]、[[Wiki - 可预测过程]]、[[Wiki - 路径正则性定理]]、[[Wiki - 连续时间鞅]]、[[Wiki - D类过程]]、[[Wiki - 增过程]]
#### 讲解与比较 (Explanation and Comparison)

这个定理是离散 Doob 分解的完美模拟，但有几个关键点需要特别注意：

-   **过程的正则性:** 定理要求下鞅 $X$ 是 càdlàg [[Wiki - 随机过程的连续性]] 的，分解出的鞅 $M$ 也是 càdlàg 的。这是连续时间理论的技术前提。
-   **增过程 A:** 这里的增过程 $A_t$ 在文献中常被称为**补偿子 (compensator)**。它“补偿”了下鞅 $X_t$ 的向上漂移趋势，使得 $X_t - A_t$ 成为一个纯粹的鞅。
-   **核心难点——可预知性 (Predictability):**
    -   在离散时间，可预知意味着 $A_n$ 是 $\mathcal{F}_{n-1}$ -可测的。
    -   在连续时间，可预知性是一个更强的概念。一个粗略的理解是，一个过程是可预知的，如果它的值在“刚好发生之前”就已经被确定了。**左连续**的过程是可预知的典型例子。这个性质保证了分解的唯一性。
-   **定理的变体:** 讲义中给出的定理版本是针对一般的 càdlàg 下鞅。如果进一步假设下鞅 $X$ 是**连续**的，那么分解出的鞅 $M$ 和增过程 $A$ 也都是连续的。这是随机积分（尤其是对布朗运动积分）中更常用的一个版本。
