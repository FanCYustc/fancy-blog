---
aliases:
info:
date: 2025-12-11-星期四
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 实分析/测度论
id: wiki20251211105500
banner: "![[astrowalk.gif]]"
---

## The 1 Lebesgue 分解定理

设 $(\Omega, \mathcal{F}, \mu)$ 是一个 $\sigma$ -有限测度空间 [[Wiki - 概率空间]]，$\nu$ 是 $(\Omega, \mathcal{F})$ 上的另一个 $\sigma$ -有限测度。

则存在唯一的一对测度 $(\nu_{ac}, \nu_s)$，满足：
1.  **分解性**：$\nu = \nu_{ac} + \nu_s$。
2.  **绝对连续性**：$\nu_{ac} \ll \mu$ （即若 $\mu(A)=0$，则 $\nu_{ac}(A)=0$）。
3.  **奇异性**：$\nu_s \perp \mu$ （即存在 $S \in \mathcal{F}$ 使得 $\mu(S)=0$ 且 $\nu_s(S^c)=0$）。

[[Wiki - R-N导数|测度的绝对连续性]]
### 理解
这个定理告诉我们，任何一个测度 $\nu$ 相对于另一个参照测度 $\mu$，都可以拆分为两部分：
*   一部分“看起来像” $\mu$（绝对连续部分），它可以用 [[Wiki - R-N导数|Radon-Nikodym 导数]] 表示为 $\nu_{ac}(E) = \int_E f d\mu$。
*   另一部分与 $\mu$ 完全“无关”（奇异部分），它集中在 $\mu$ 的零测集上。

[[Wiki - 符号测度]]、[[Wiki - 抽象测度]]
