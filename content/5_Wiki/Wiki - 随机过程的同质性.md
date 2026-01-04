---
aliases:
  - modification
  - indistinguishable
  - finite-dimensional-distribution
  - 版本
info:
date: 2025-09-23-星期二 19:41:53
update: 2025-12-18-星期四 11:09:08
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程
id: wiki20250923194153
banner: "![[astrowalk.gif]]"
---
---

在随机过程理论中，区分两个过程“相同”有三种不同强弱的定义。设 $X = \{X_t; t \ge 0\}$ 和 $Y = \{Y_t; t \ge 0\}$ 是定义在概率空间 $(\Omega, \mathcal{F}, P)$ 上的两个随机过程，取值于 $(S, \mathcal{S})$（通常为 $(\mathbb{R}^d, \mathcal{B}(\mathbb{R}^d))$）。[[Wiki - 概率空间]]

## 1. 版本 (Modification)

如果对于每一个 $t \ge 0$，都有：
$$
P(X_t = Y_t) = 1
$$
则称 $Y$ 是 $X$ 的一个**修正** (Modification) (或**版本**)。

这意味着在任何固定的时刻 $t$，观测到 $X_t$ 和 $Y_t$ 不同的概率为 0。但考虑到 $t$ 取遍不可数集 $[0, \infty)$，这并不保证它们的样本路径 (Sample Paths) 几乎处处相同。

[[Wiki - 概率测度]]

## 2. 不可区分 (Indistinguishable)

如果几乎所有的样本路径都相同，即：
$$
P(X_t = Y_t, \forall t \ge 0) = 1
$$
则称 $X$ 和 $Y$ 是**不可区分的** (Indistinguishable)。

这是最强的“相同”概念。如果两个过程是不可区分的，那么它们在概率论意义下通常被视为完全同一个对象。

## 3. 同有限维分布 (Same Finite-dimensional Distributions)

如果对于任意整数 $n \ge 1$，任意时间点 $0 \le t_1 < t_2 < \dots < t_n < \infty$，以及任意 Borel 集 [[Wiki - Borel域]] $A \in \mathcal{B}(S^n)$，都有：
$$
P((X_{t_1}, \dots, X_{t_n}) \in A) = P((Y_{t_1}, \dots, Y_{t_n}) \in A)
$$
则称 $X$ 和 $Y$ 具有**相同的有限维分布**。

注：此定义不要求 $X$ 和 $Y$ 定义在同一个概率空间 [[Wiki - 概率空间]]上。

## 4. 三者关系

$$
\text{不可区分 (Indistinguishable)} \implies \text{修正 (Modification)} \implies \text{同有限维分布}
$$

**反例与联系**：
- **修正 $\nRightarrow$ 不可区分**：考虑 $T$ 是一个服从连续分布的非负随机变量。定义 $X_t \equiv 0$，定义 $Y_t = 1$ 若 $t=T$ 否则为 0。则对于任意固定 $t$， $P(X_t=Y_t) = P(T \neq t) = 1$，故 $Y$ 是 $X$ 的修正。但 $P(\exists t, X_t \neq Y_t) = P(X_T \neq Y_T) = 1$，所以它们不是不可区分的。
- **右连续性下的等价性**：如果 $X$ 和 $Y$ 都是 $X$ 的修正，并且它们都几乎处处具有**右连续** (Right-Continuous) 的样本路径，则 $X$ 和 $Y$ 是不可区分的。


