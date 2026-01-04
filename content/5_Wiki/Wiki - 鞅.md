---
aliases: 
info: 
date: 2024-06-14-星期五 22:15
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/鞅论
id: wiki20240614221530
banner: "![[astrowalk.gif]]"
---
---

## Def 1 鞅 (Martingale)

```ad-definition
title: 鞅、下鞅与上鞅 (Martingale, Submartingale, and Supermartingale)

设 $(\Omega, \mathcal{F}, P)$ 是一个概率空间，$\{\mathcal{F}_n\}_{n \in \mathbb{Z}_+}$ 是其上的一个滤子（filtration），我们称 $(\Omega, \mathcal{F}, \{\mathcal{F}_n\}, P)$ 为一个**带滤概率空间 (filtered probability space)**。

一个随机过程 $X = \{X_n, n \in \mathbb{Z}_+\}$ 如果满足以下条件，则被称为关于信息流（filtration） $\{\mathcal{F}_n\}$ 的**鞅 (martingale)**：

1.  **可积性 (Integrability):** 对所有 $n \in \mathbb{Z}_+$, $X_n$ 都是可积的，即 $E[|X_n|] < \infty$。
2.  **适应性 (Adaptedness):** 对所有 $n \in \mathbb{Z}_+$, $X_n$ 都是 $\mathcal{F}_n$-可测的。这意味着 $X_n$ 的值是由截至时刻 $n$ 的信息决定的。
3.  **鞅性质 (Martingale Property):** 对所有 $n \ge 1$，以下条件期望等式成立：
    $$
    E[X_n | \mathcal{F}_{n-1}] = X_{n-1}
    $$

如果将上述第三个条件的等号分别替换为 $\ge$ 或 $\le$，我们得到**下鞅 (submartingale)** 和 **上鞅 (supermartingale)** 的定义：

-   **下鞅 (Submartingale):** $E[X_n | \mathcal{F}_{n-1}] \ge X_{n-1}$
-   **上鞅 (Supermartingale):** $E[X_n | \mathcal{F}_{n-1}] \le X_{n-1}$

```

[[Wiki - 概率空间]]、[[Wiki - 随机变量|随机变量可测]]

[[Wiki - 条件期望]]
### 解释与直观理解 (Explanation and Intuition)

**1. 公平博弈 (Fair Game):**
鞅的核心思想是“公平博弈”。我们可以将 $X_n$ 视为一个赌徒在第 $n$ 轮游戏结束后的总资产。滤子 $\mathcal{F}_{n-1}$ 代表了到第 $n-1$ 轮游戏结束时所有已知的信息（比如历史输赢、牌局记录等）。

鞅性质 $E[X_n | \mathcal{F}_{n-1}] = X_{n-1}$ 的直观意义是：在已知了直到 $n-1$ 时刻的所有信息后，对下一时刻 $n$ 的资产的最佳预测就是当前时刻 $n-1$ 的资产。换句话说，期望收益为零。

这个性质也可以写作：
$$
E[X_n - X_{n-1} | \mathcal{F}_{n-1}] = 0
$$


这里 $X_n - X_{n-1}$ 是第 $n$ 轮的收益，上式表明在已知历史信息的情况下，下一轮的期望收益为 0。

- **下鞅** 代表一个**有利可图的博弈 (favorable game)**，因为未来的期望资产不会低于当前资产。
- **上鞅** 代表一个**不利的博弈 (unfavorable game)**，因为未来的期望资产不会高于当前资产。

**2. 概念拆解:**
- **滤子 (Filtration)** ：又称 $\sigma$ 代数流 [[Wiki - sigma代数流]]， $\{\mathcal{F}_n\}$ 是一个随时间 $n$ 递增的 $\sigma$ -代数序列 ($\mathcal{F}_n \subseteq \mathcal{F}_{n+1}$)，它形式化地描述了信息随时间的积累过程。
- **适应性 (Adaptedness)**：$X_n$ 是 $\mathcal{F}_n$ -可测的，意味着 $X_n$ 的值不能依赖于未来的信息。这是一个非常自然的要求。
- **可积性 (Integrability)**：$E[|X_n|] < \infty$ 是保证条件期望存在的必要条件。

