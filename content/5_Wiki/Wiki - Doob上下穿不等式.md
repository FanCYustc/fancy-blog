---
aliases: 
info: 
date: 2025-09-24-星期三 10:59
update: 
tags: [wiki/year2025,wiki/month09]
id: wiki20250924105928
banner: "![[astrowalk.gif]]"
---
---
## Def 1 向上穿越次数定义

```ad-definition
title: 向上穿越次数 (Upcrossing Number)

设 $\{X_n\}_{n=0}^N$ 是一个随机序列，固定实数 $a < b$。向上穿越次数 $U^X_N [a, b]$ 定义为在 $n=1$ 到 $N$ 内，从低于 $a$ 到高于 $b$ 的完整穿越次数的极大值。具体地，$U^X_N [a, b] = \sup \{ k \geq 0 : \exists 0 = s_0 < t_0 < s_1 < t_1 < \dots < s_k < t_k \leq N, \text{ 使得 } X_{s_j} \leq a, X_{t_j} \geq b \ (j=1,\dots,k) \}$。
```

**解释**：此定义捕捉序列“从下向上”穿越区间 $[a, b]$ 的最大可能次数。一个完整穿越由从 $\leq a$ 到 $\geq b$ 的相邻点对组成（不包括从上到下的downcrossing）。若序列无穿越，则 $U^X_N [a, b] = 0$。当 $N \to \infty$ 时，$U^X_\infty [a, b] = \sup_N U^X_N [a, b]$ 表示总穿越次数。


## The 1 Doob 向上穿越不等式

```ad-theorem
title: Doob向上穿越不等式 (Doob's Upcrossing Inequality)

设 $\{X_n\}$ 是一个鞅（或子鞅）。固定实数 $a < b$，令 $U^X_N [a, b]$ 为序列 $X_1, X_2, \dots, X_N$ 从低于 $a$ 到高于 $b$ 的向上穿越次数（upcrossings）。则

$$
\mathbb{E} U^X_N [a, b] \leq \frac{\mathbb{E} (X_N - a)^+ - \mathbb{E} (X_1 - a)^+}{b - a}.
$$
```

### Proof


证明的核心思想是构造一个“只在赔钱时不玩”的赌博策略，并利用下鞅的性质。[[Wiki - 上鞅和下鞅]]

1.  **简化问题:** 令 $Y_n = (X_n - a)^+$。由于 $f(x) = (x-a)^+$ 是一个凸函数且单调不减，根据 [[Wiki - Jensen不等式]]，如果 $\{X_n\}$ 是下鞅，那么 $\{Y_n\}$ 也是一个非负下鞅。对 $X$ 在 $[a, b]$ 的一次上穿，等价于对 $Y$ 在 $[0, b-a]$ 的一次上穿。
2.  **构造停止时 (Stopping Times):**[[Wiki - 停时]]
    -   $\sigma_1 = \inf\{n \ge 1: Y_n = 0\}$ (第一次跌到 0 或以下)
    -   $\tau_1 = \inf\{n > \sigma_1: Y_n \ge b-a\}$ (之后第一次涨到 $b-a$ 或以上)
    -   $\sigma_2 = \inf\{n > \tau_1: Y_n = 0\}$ (如此循环...)
    这样，$[\sigma_i, \tau_i]$ 就对应第 $i$ 次上穿的区间。
3.  **计算收益:**
    -   在每次完整的上穿中，收益至少为 $b-a$，即 $Y_{\tau_i} - Y_{\sigma_i} \ge b-a$。
    -   因此，总的上穿收益为 $\sum_{i=1}^{U_N} (Y_{\tau_i} - Y_{\sigma_i}) \ge (b-a) U_N[a, b]$。
4.  **利用下鞅性质:** 序列的总变化量 $Y_N - Y_1$ 可以分解为“上穿”期间的收益和“非上穿”期间的收益。因为 $\{Y_n\}$ 是下鞅，所以在“非上穿”期间（即从高点 $\tau_{i-1}$ 跌到低点 $\sigma_i$），期望收益是非负的，即 $E[Y_{\sigma_i} - Y_{\tau_{i-1}}] \ge 0$。
5.  **整合:** 对 $Y_N - Y_1$ 的分解取期望，忽略掉期望为非负的“非上穿”部分，可得：
    $$
    E[Y_N - Y_1] \ge E\left[\sum_{i=1}^{U_N} (Y_{\tau_i} - Y_{\sigma_i})\right] \ge (b-a) E[U_N[a, b]]
    $$
    整理后即可得到上穿不等式。

**注释**：此不等式控制序列穿越区间 $[a, b]$ 的次数，用于证明鞅的收敛性（如基本收敛定理）。当 $N \to \infty$ 时，若 $\sup \mathbb{E} X^+_n < \infty$，则 $\mathbb{E} U^X_\infty [a, b] < \infty$，从而穿越次数有限，序列几乎处处收敛。[[Wiki - 鞅收敛定理]]




