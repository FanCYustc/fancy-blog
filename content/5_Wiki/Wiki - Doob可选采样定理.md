---
aliases:
info:
date: 2025-09-22-星期一 20:24
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250922202403
banner: "![[astrowalk.gif]]"
---
---


---
## The 1 可选抽样定理 (Optional Sampling Theorem)

[[Wiki - 停时]]

```ad-theorem
title: 可选抽样定理
定理：设 $X = \{X_n\}$ 是下鞅（submartingale），$\sigma$ 和 $\tau$ 是均匀有界的停止时间（uniformly bounded stopping times）且 $\sigma \leq \tau$。则
$$
\mathbb{E}\{X_\tau \mid \mathcal{F}_\sigma\} \geq X_\sigma,
$$
其中 $\mathcal{F}_\tau = \{C \in \mathcal{F}_\infty: C \cap \{\tau \leq n\} \in \mathcal{F}_n \ \forall n \geq 0\}$ 是 $\tau$ 生成的 $\sigma$-代数。
```

[[Wiki - σ-代数]]、[[Wiki - 上鞅和下鞅]]
### Proof

证明大纲：对 $C \in \mathcal{F}_\sigma$，利用停止时间 [[Wiki - 停时]]性质和下鞅不等式，分解 $\mathbb{E}\{X_\tau; C\} \geq \mathbb{E}\{X_\sigma; C\}$。具体，通过 $C_n = C \cap \{\sigma = n\}$ 和望远镜和（telescoping sum）得到 $\mathbb{E}\{X_\tau; C_n\} \geq \mathbb{E}\{X_n; C_n\}$，从而推导出条件期望不等式。

## Cal 1

推论 1：$\mathbb{E} X_\sigma \leq \mathbb{E} X_\tau$（取期望 [[Wiki - 数学期望]]）。

推论 2：对递增有界停止时间序列 $\tau_0 \leq \tau_1 \leq \cdots$，$\{X_{\tau_n}\}$ 是相对于 $\{\mathcal{F}_{\tau_n}\}$ 的下鞅。

推论 3：停止过程 [[Wiki - 停止过程]] $\{X_{n \wedge \tau}\}$ 是相对于原过滤 $\mathcal{F}^*$ 的下鞅。

注释：此定理扩展鞅到随机时间，核心于公平游戏（fair game）下预期不变。学术意义：应用于鞅收敛和最优停止问题。

[[Wiki - Doob分解定理]].

