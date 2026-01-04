---
aliases:
  - Filtration Completion
  - Usual Conditions
  - 滤子的完备化
info:
date: 2025-09-24-星期三 17:19
update: 2025-12-19-星期五
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/测度论
id: wiki20250924171954
banner: "![[astrowalk.gif]]"
---
# Wiki - Filtration的通常条件

## 1. 动机与背景

在随机分析中，原始的自然滤子 $\mathcal{F}_t^0 = \sigma(X_s, s \le t)$ 往往不满足一些技术性的要求，特别是处理“零测集”和“停时”时的方便性。例如，我们希望任何零测集的子集（也是零测集）都包含在过滤中，以便我们可以忽略零概率事件带来的可测性问题。此外，为了确保停时的良好性质（如首达时的可测性），通常还需要过滤是**右连续**的。

## 2. 构造方法：完备化与扩张

为了让一个普通的过滤满足通常条件，我们需要对其进行**完备化 (Completion)** 和**右连续扩张 (Augmentation)**。

给定概率空间 [[Wiki - 概率空间]] $(\Omega, \mathcal{F}, P)$ 和一个滤子[[Wiki - sigma代数流|滤子]] $\{\mathcal{F}_t\}_{t \ge 0}$ ：

1.  **零测集族 $\mathcal{N}$**：
    $\mathcal{N} = \{A \subseteq \Omega : \exists G \in \mathcal{F}, A \subseteq G, P(G) = 0\}$
    （即所有包含在 $P$-零测集中的集合）。

2.  **完备化 (Completion)**：
    $\mathcal{F}_t$ 的完备化 $\overline{\mathcal{F}}_t$ 定义为 $\mathcal{F}_t$ 与 $\mathcal{N}$ 生成的 $\sigma$-代数：
    $$
    \overline{\mathcal{F}}_t = \sigma(\mathcal{F}_t \cup \mathcal{N})
    $$

[[Wiki - 测度的完备性#The 1 测度完备延拓]]

3.  **右连续扩张 (Right-continuous Augmentation)**：
    我们定义扩张后的过滤 $\{\mathcal{F}_{t}^{+}\}$ 为：
    $$ 
    \mathcal{F}_t^+ = \bigcap_{s > t} \overline{\mathcal{F}}_s 
    $$ 
    这个新的过滤 $\{\mathcal{F}_t^+\}$ 必然满足**通常条件**。

## 3. 定义：通常条件 (The Usual Conditions)

```ad-definition
title: The Usual Conditions (Les Conditions Habituelles)

我们称滤子 $\{\mathcal{F}_t\}_{t \ge 0}$ 满足**通常条件**，如果它同时满足以下两条：

1.  **完备性 (Completeness):** $\mathcal{F}_0$ 包含所有 $P$-零测集。这意味着，如果 $A \in \mathcal{F}$ 且 $P(A)=0$，且 $B \subseteq A$，那么 $B \in \mathcal{F}_0$（因此 $B$ 也属于所有的 $\mathcal{F}_t$）。
2.  **右连续性 (Right-Continuity):** 滤子是右连续的，即对所有 $t \ge 0$：
    $$ 
    \mathcal{F}_t = \mathcal{F}_{t+} \quad \text{其中 } \mathcal{F}_{t+} := \bigcap_{s>t} \mathcal{F}_s 
    $$ 
```



### 讲解 (Explanation)

这是我们在将鞅推广到连续时间时打的**一个技术补丁**，它规范了信息的流动方式。

-   **完备性**是一个技术便利，它允许我们自由地处理几乎必然成立的事件而不用担心可测性。我们可以认为它“修复”了 $\sigma$ -代数中因零测集而产生的“小洞”。
-   **右连续性**是更深刻的条件。它排除了“在特定时刻瞬间产生新信息”的可能性。$\mathcal{F}_{t+}$ 代表了在 $t$ 时刻后任意近的未来所能知道的所有信息。$\mathcal{F}_t = \mathcal{F}_{t+}$ 意味着，在 $t$ 时刻后一瞬间能知道的信息，其实在 $t$ 时刻本身就已经知道了。这个条件对于建立严格的停止时理论至关重要。
