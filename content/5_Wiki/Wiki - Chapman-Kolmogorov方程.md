---
aliases: [C-K Equation, Chapman-Kolmogorov]
info: 
date: 2025-12-19-星期五 12:45
update: 
tags: [wiki/year2025,wiki/month12]
id: wiki20251219124500
banner: "![[astrowalk.gif]]"
---
# Wiki - Chapman-Kolmogorov方程

## 1. 方程陈述

**Chapman-Kolmogorov 方程** 描述了马尔可夫过程转移概率在时间上的“无记忆”传递特性。

设 $p(t, x, A)$ 为马尔可夫过程 [[Wiki - markov性]] 的转移概率（即从 $x$ 出发，经过时间 $t$ 后到达集合 $A$ 的概率）。对于任意 $s, t \ge 0$ 和 Borel 集 $A$，有：
$$
p(t+s, x, A) = \int_{\mathbb{R}^d} p(s, y, A) p(t, x, dy)
$$
或者用转移密度 $p(t, x, y)$ 表示（如果存在）：
$$
p(t+s, x, z) = \int_{\mathbb{R}^d} p(t, x, y) p(s, y, z) dy
$$
[[Wiki - markov链n步转移概率]]
## 2. 直观解释

这个方程表达了：过程从 $x$ 出发，在 $t+s$ 时刻到达 $z$ 的概率，等于它在中间时刻 $t$ 到达任意中间状态 $y$，再从 $y$ 经过时间 $s$ 到达 $z$ 的概率的总和（积分）。这正是**马尔可夫性**的体现——未来的演化只依赖于现在的状态 $y$，而与过去（如何到达 $y$）无关。

## 3. 与算子半群的关系

Chapman-Kolmogorov 方程等价于 [[Wiki - 转移半群]] 的半群性质 $P_{t+s} = P_t P_s$。
$$
(P_{t+s} f)(x) = \int p(t+s, x, dz) f(z) = \int \int p(t, x, dy) p(s, y, dz) f(z) = \int p(t, x, dy) (P_s f)(y) = (P_t (P_s f))(x)
$$

好像与 [[Wiki - kolmogorov向前向后微分方程]]一致

