---
aliases:
  - Class DL
info: GTM 113 - CH1.4
date: 2025-12-18-星期四 11:17:49
update: 2025-12-18-星期四 11:21:01
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/鞅论
id: wiki20251218113000
banner: "![[astrowalk.gif]]"
---
---

在 Doob-Meyer 分解定理中，为了保证一般的下鞅可以分解，需要对过程施加一致可积性的限制，这就是 **D类过程** (Class D) 和 **DL类过程** (Class DL) 的概念。

## 1. D类过程 (Class D)

设 $X = \{X_t; t \ge 0\}$ 是一个右连续且适应的随机过程。如果族
$$
\{ X_T : T \text{ 是有限停时} \}
$$
是**一致可积**的 (Uniformly Integrable)，则称 $X$ 属于 **D类** (Class D)。

[[Wiki - 随机变量一致可积]]、[[Wiki - 停时]]、[[Wiki - 随机过程的连续性]]

## 2. Dl类过程 (Class DL)

设 $X = \{X_t; t \ge 0\}$ 是一个右连续且适应[[Wiki - 随机变量|随机变量可测]]的随机过程。如果对于任意固定的 $a > 0$，族
$$
\{ X_T : T \text{ 是满足 } T \le a \text{ 的停时} \}
$$
是一致可积的，则称 $X$ 属于 **DL类** (Class DL, "L" stands for "Local")。

直观上，DL 类要求过程在任意有限时间段内是一致可积的，这是一个比 D 类更弱的条件。

## 3. 性质与关系

1.  **非负下鞅**：每一个非负的右连续下鞅 [[Wiki - 上鞅和下鞅]]都属于 DL 类。
2.  **鞅的性质**：
    -   如果 $M$ 是一个鞅，且属于 D 类，则 $M$ 是一个一致可积鞅（当 $T=\infty$ 时闭包存在）。
    -   每一个右连续鞅都属于 DL 类。
3.  **Doob-Meyer 分解中的作用**：
    -   Doob-Meyer 分解定理 [[Wiki - Doob-Meyer分解定理]] 保证了属于 **DL 类** 的下鞅存在分解 $X = M + A$。
    -   如果 $X$ 进一步属于 **D类**，则分解出的鞅 $M$ 是一致可积鞅，增过程 $A$ 是可积的 ($E[A_\infty] < \infty$)。

