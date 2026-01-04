---
aliases:
  - Increasing Process
info: GTM 113 - CH1.4
date: 2025-12-18-星期四 11:35
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程
id: wiki20251218113500
banner: "![[astrowalk.gif]]"
---
---

在连续时间随机过程理论，特别是半鞅分解中，增过程起着“漂移项”的关键作用。

## 1. 增过程 (Increasing Process)

适应过程 $A = \{A_t; t \ge 0\}$ 称为**增过程**，如果：
1.  $A_0 = 0$ a.s.
2.  路径 $t \mapsto A_t(\omega)$ 是非减的、右连续的。
3.  $E[A_t] < \infty$ 对所有 $t < \infty$ 成立 (即可积)。

## 2. 自然增过程 (Natural Increasing Process)

增过程 $A$ 称为**自然增过程**，如果对于任意有界、右连续的鞅 $M$，都有：
$$
E \int_0^t M_s dA_s = E \int_0^t M_{s-} dA_s
$$
直观上，这意味着 $A$ 与鞅 $M$ 的“相互作用”不受 $M$ 跳跃的影响。

*(注：在一般的半鞅理论中，“可预测性 (Predictable)” 是比“自然 (Natural)” 更常用的概念。对于有限变差过程，自然过程与可预测过程是**一致的** (GTM 113, Remark 4.6)。Doob-Meyer 分解的唯一性通常表述为增过程是“可预测的”或“自然的”。)*

[[Wiki - 可预测过程]]

## 3. 性质

-   **Doob-Meyer 分解的唯一性**：如果下鞅 $X$ 属于 DL 类 [[Wiki - D类过程]]，则存在唯一的**自然**增过程 $A$，使得 $X - A$ 是一个鞅。

[[Wiki - Doob-Meyer分解定理]]

