---
aliases:
  - stopping time
info:
date: 2025-09-22-星期一 11:11
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
  - 随机过程/更新过程
id: wiki20250922111149
banner: "![[astrowalk.gif]]"
---
---

## Def 1 停时

在过滤可测空间 $(\Omega, \mathcal{F}_*)$ 上，函数 $\tau: \Omega \to \mathbb{Z}_+$ 称为**停时**，如果对于所有 $n ≥ 0$，有： 

$$ \{\tau \leq n\} \in \mathcal{F}_n $$
等价地，${\tau = n} \in \mathcal{F}_n$ 对所有 $n ≥ 0$ 成立。

[[Wiki - sigma代数流]]

简单一点的定义：

```ad-definition
title: Definition 1

设 $\{X_{n}\}, n\geq1$ 为 r.v.序列, N 为一个**正整值 r.v.**, 且对 $\forall n\geq1$, $\{N=n\}$ 独立于 $\{X_{k}, k>n\}$, 则称 N 为 $\{X_{n}, n\geq1\}$的一个**随机时刻**。特别的，当$P(N< +\infty)=1$时，N是一个**停时**

```

[[Wiki - 随机变量的独立性]]


停时表示一个"可以停止观察"的随机时间。关键特征是：在任意时刻 $n$，我们仅凭到 $n$ 时刻为止的信息就能判断是否已经发生了停时事件。

**例子**：

- 设 $X$ 为随机序列，$τ$ 为首次使得 $X_n > 100$ 的时间。事件 ${τ ≤ n}$ 表示序列在 $n$ 时刻或之前已经达到了100以上，这可以通过观察 $X_1, X_2, ..., X_n$ 来确定，因此 $τ$ 是停时。
- 设 $σ$ 为最后一次使得 $X_n > 100$ 的时间。仅凭前 $n$ 项无法确定 ${σ ≤ n}$ 是否成立（需要观察 $n$ 时刻之后的情况），因此 $σ$ 不是停时。

## Def 2 停时σ-代数

对于停时 $τ$，定义**停时σ-代数**： 

$$ \mathcal{F}_{\tau} = \{C \in \mathcal{F}_{\infty} : C \cap {\tau \leq n} \in \mathcal{F}_n \quad \forall n \geq 0\} $$

**重要性质**：

1. 如果 $\tau=n$，则 $\mathcal{F}_\tau = \mathcal{F}_n$
2. 如果 $\sigma \leq  \tau$，则 $\mathcal{F}_\sigma \subset \mathcal{F}_\tau$
3. $τ$ 是 $\mathcal{F}_\tau$ -可测的
4. 如果 ${X_n}$ 适应于 $\mathcal{F}_*$，则 $X_\tau$ 是 $\mathcal{F}_\tau$ -可测的

## Pro 1 停时的运算性质

设 $\sigma_n$ 是停时，则：

- $\sigma_1 + \sigma_2$ 是停时
- $\sup_n \sigma_n$ 是停时
- $\inf_n \sigma_n$ 是停时

## Def 3 连续时间下的停时与σ-代数

在连续时间情形 $t \in [0, \infty)$ 下，设 $(\Omega, \mathcal{F}, \{\mathcal{F}_t\}_{t \ge 0})$ 为过滤空间。

1.  **停时 (Stopping Time)**：随机时间 $T: \Omega \to [0, \infty]$ 称为停时，如果对于任意 $t \ge 0$，都有 $\{T \le t\} \in \mathcal{F}_t$。
2.  **停时σ-代数 ($\mathcal{F}_T$)**：包含所有满足条件 $A \cap \{T \le t\} \in \mathcal{F}_t, \forall t \ge 0$ 的事件 $A \in \mathcal{F}$。

注意：连续时间下还有**可选时间** (Optional Time) 的概念，定义为 $\{T < t\} \in \mathcal{F}_t$。在右连续过滤下，可选时间与停时等价。

## Pro 2 连续时间停时的运算

设 $S, T$ 为停时，则：
1.  $S \wedge T = \min(S, T)$ 是停时。
2.  $S \vee T = \max(S, T)$ 是停时。
3.  $S + T$ 是停时。