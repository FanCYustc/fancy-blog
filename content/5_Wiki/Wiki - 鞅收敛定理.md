---
aliases: 
info: 
date: 2024-06-14-星期五 23:08
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/鞅论
  - 收敛
id: wiki20240614230833
banner: "![[astrowalk.gif]]"
---
---

## The 1 下鞅收敛定理

```ad-theorem
title: Martingale Convergence Theorem

令 $\{X_n\}$ 是一个**下鞅 (submartingale)**。如果其正部的期望是一致有界的，即：
$$
\sup_{n \ge 1} E[X_n^+] < \infty
$$
其中 $X_n^+ = \max(X_n, 0)$。

那么，存在一个可积的随机变量 $X_\infty$，使得 $\{X_n\}$ 以概率 1 收敛到 $X_\infty$：
$$
P\left( \lim_{n \to \infty} X_n = X_\infty \right) = 1 \quad \text{and} \quad E[|X_\infty|] < \infty
$$
```

在连续时间下设 $\{X_t\}_{t \ge 0}$ 是一个 càdlàg 的下鞅。 
1. 如果 $\sup_{t \ge 0} E[X_t^+] < \infty$，那么极限 $X_\infty = \lim_{t \to \infty} X_t$ **以概率 1 存在**且可积。 
2. 如果 $\{X_t\}$ **一致可积 (UI)**，那么上述收敛也是 **$L^1$ 收敛**，并且我们有表示定理： $$ X_t = E[X_\infty | \mathcal{F}_t], \quad \forall t \ge 0 $$

[[Wiki - 几乎处处收敛]]、[[Wiki - 函数项级数的Dirichlet判别法|一致有界]]、[[Wiki - 上鞅和下鞅]]
### 证明思路 (Sketch of Proof)

1.  **收敛的等价条件:** 一个实数序列 $\{x_n\}$ 收敛（到一个有限或无限的值），当且仅当对于任意一对有理数 $a < b$，该序列上穿区间 $[a, b]$ 的次数是有限的。
2.  **证明上穿次数有限:** 我们的目标是证明 $P(U_\infty[a, b] < \infty) = 1$。
    -   利用 [[Wiki - Doob上下穿不等式]] ：
        $$
        E[U_N[a, b]] \le \frac{E[(X_N - a)^+] - E[(X_1 - a)^+]}{b-a}
        $$
    -   根据条件 $\sup E[X_n^+] < C$，我们可以对右侧进行放缩：
        $E[(X_N - a)^+] \le E[|X_N| + |a|] \le E[X_N^+ + X_N^- + |a|]...$
        更简单地，由讲义可知 $E[(X_N - a)^+] \le E[X_N^+] + |a| \le C + |a|$。
    -   因此， $E[U_N[a, b]]$ 的上界是一个不依赖于 $N$ 的常数。
    -   根据**单调收敛定理**[[Wiki - 单调收敛定理]]，当 $N \to \infty$ 时，$U_N \uparrow U_\infty$，所以 $E[U_\infty[a, b]] = \lim_{N\to\infty} E[U_N[a, b]] < \infty$。
    -   一个非负随机变量的期望有限，意味着它自身几乎必然是有限的。因此 $P(U_\infty[a, b] < \infty) = 1$。
3.  **推广至所有有理数:** 由于有理数对 $(a, b)$ 的集合是可数的，所以 $\{X_n\}$ 在所有有理数区间上的上穿次数都几乎必然有限。这保证了 $\lim_{n\to\infty} X_n$ 几乎必然存在。
4.  **证明极限可积:** 利用**Fatou 引理**[[Wiki - fatou引理]]。由 $E[|X_n|] = E[2X_n^+ - X_n] = 2E[X_n^+] - E[X_n] \le 2C - E[X_1]$ 可知 $E[|X_n|]$ 是一致有界的。因此 $E[|X_\infty|] \le \liminf E[|X_n|] < \infty$。

### Cor 1 非负上鞅的收敛 (Convergence of Non-negative Supermartingales)

```ad-proposition
title: Convergence of Non-negative Supermartingales

任何一个**非负上鞅 (non-negative supermartingale)** $\{X_n\}$ 都会以概率 1 收敛到一个可积的随机变量 $X_\infty$。
```

#### 证明 (Proof)

1.  令 $\{X_n\}$ 是一个非负上鞅，即 $X_n \ge 0$ 且 $E[X_n|\mathcal{F}_{n-1}] \le X_{n-1}$。
2.  定义一个新的过程 $Y_n = -X_n$。那么 $\{Y_n\}$ 是一个**下鞅**。
3.  我们来验证 $\{Y_n\}$ 是否满足鞅收敛定理的条件，即 $\sup E[Y_n^+] < \infty$。
    $$
    Y_n^+ = (-X_n)^+ = \max(0, -X_n)
    $$
4.  因为 $\{X_n\}$ 是**非负**的，所以 $X_n \ge 0$，这意味着 $-X_n \le 0$。
5.  因此，$\max(0, -X_n) = 0$ 对所有 $n$ 成立。
6.  所以 $\sup_n E[Y_n^+] = \sup_n E[0] = 0 < \infty$。条件满足。
7.  根据鞅收敛定理，$\{Y_n\}$ 几乎必然收敛到一个可积的极限。
8.  因此，$\{X_n\} = \{-Y_n\}$ 也几乎必然收敛到一个可积的极限。
## Cal 2 鞅收敛定理

```ad-theorem
title: Theorem 2

$\{Z_{n},n\geq 1\}$ 为鞅 ，且 $E|Z_{n}|\leq M<\infty ,\forall n\geq 1$，则 $\lim_{ n \to \infty }Z_{n}$ 极限**以概率为 1 的存在有限**


```

[[Wiki - 鞅]]

### Proof

用到 [[Wiki - 下鞅kolmogorov不等式]]，具体见胡太忠实用随机过程 PPT 第 6 章定理 6.4.6 证明
