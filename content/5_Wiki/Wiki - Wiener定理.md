---
aliases:
info:
date: 2025-09-23-星期二 19:38
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/brown运动
id: wiki20250923193843
banner: "![[astrowalk.gif]]"
---
---

## The 1 Wiener 定理 (Wiener's Theorem)

```ad-theorem
title: Wiener定理 (Wiener's Theorem) - 布朗运动的路径连续性

```

设 $\{B_t, t \ge 0\}$ 是一个定义在概率空间 $(\Omega, \mathcal{F}, P)$ [[Wiki - 概率空间]]上的随机过程，该过程满足 [[Wiki - brown运动]]的分布定义，即：
1.  **独立增量**: 对任意 $0 \le t_1 < t_2 < \dots < t_n$, 随机变量 $B_{t_1}, B_{t_2}-B_{t_1}, \dots, B_{t_n}-B_{t_{n-1}}$ 相互独立。
2.  **平稳正态增量**: 对任意 $t > s \ge 0$, 增量 $B_t - B_s \sim \mathcal{N}(0, t-s)$。[[Wiki - 正态分布]]
3.  **起点**: $P(B_0=0)=1$。

那么，必然存在另一个随机过程 $\{\tilde{B}_t, t \ge 0\}$，它与 $\{B_t\}$ 是同一过程的**版本**[[Wiki - 随机过程的同质性|modification]]，并且 $\{\tilde{B}_t\}$ 的样本路径几乎必然是连续的。[[Wiki - 路径正则性定理]]


>
> **几乎必然连续**的定义：存在一个零测集 $N \subset \Omega$ ($P(N)=0$)，使得对任意 $\omega \notin N$，函数 $t \mapsto \tilde{B}_t(\omega)$ 都是连续函数。[[Wiki - 随机过程的连续性]]

### 注记 (Remarks)

1.  **理论基石**: 此定理是 [[Wiki - brown运动]]乃至整个随机分析理论的基石。它**弥合了布朗运动的“分布定义”（仅涉及有限个时间点的联合分布）与“路径性质”之间的鸿沟**，确保了我们可以将布朗运动的轨迹视为一条真实的、尽管处处不可微的连续曲线。
2.  **空间视角**: 该定理使我们可以将布朗运动视为一个取值于连续函数空间 $C([0, \infty), \mathbb{R})$ 的随机变量。这为后续建立随机积分理论 [[Scientech - 随机分析-随机积分]]（如 Itô积分）奠定了基础，因为积分的定义高度依赖于积分过程的路径性质。
3.  **实践约定**: 由于我们通常只关心概率为 1 的性质，在不引起混淆的情况下，我们直接假设所研究的布朗运动就是其连续版本，并仍记为 $B_t$ 而非 $\tilde{B}_t$。

### 证明思路 (Proof Sketch)

该定理的经典证明依赖于Kolmogorov连续性定理。[[Wiki - Kolmogorov-Chentsov定理]]


我们来验证布朗运动满足此条件。

1.  **计算矩**: 对于标准布朗运动 $\{B_t\}$，增量 $B_t - B_s$ 服从正态分布 [[Wiki - 正态分布]] $\mathcal{N}(0, t-s)$。令 $Z \sim \mathcal{N}(0, 1)$，则 $B_t - B_s$ 与 $\sqrt{t-s}Z$ 同分布。我们计算其 $2n$ 阶矩（取偶数阶矩以简化计算）：
    $$
    E\left[(B_t - B_s)^{2n}\right] = E\left[(\sqrt{t-s}Z)^{2n}\right] = (t-s)^n E[Z^{2n}]
    $$

[[Wiki - 随机变量的矩]]

2.  **验证条件**: 标准正态分布的 $2n$ 阶矩 $E[Z^{2n}] = \frac{(2n)!}{2^n n!}$ 是一个有限常数。我们记之为 $C_n$。因此：
    $$
    E\left[|B_t - B_s|^{2n}\right] = C_n |t-s|^n
    $$
    为了满足 Kolmogorov 条件 $E\left[|X_t - X_s|^\alpha\right] \le C|t-s|^{1+\beta}$，我们只需选择一个 $n$ 使得指数 $n > 1$ 即可。
    例如，取 $n=2$（即 4 阶矩）：
    $$
    E\left[|B_t - B_s|^4\right] = C_2 |t-s|^2
    $$
    此时，我们有 $\alpha=4$, 指数为 $2$。我们可以将指数写为 $1+1$，即 $\beta=1$。
    $$
    E\left[|B_t - B_s|^4\right] = 3|t-s|^{1+1}
    $$
    这里 $C=3, \alpha=4, \beta=1$，Kolmogorov 条件成立。

3.  **结论**: 因此，根据Kolmogorov连续性定理，标准布朗运动存在一个路径几乎必然连续的版本。
