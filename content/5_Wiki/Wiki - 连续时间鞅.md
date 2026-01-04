---
aliases:
info:
date: 2025-09-24-星期三 17:16
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250924171606
banner: "![[astrowalk.gif]]"
---
---

## Def 8.0 连续时间鞅 (Continuous-Time Martingale)

```ad-definition
title: Continuous-Time Martingale, Submartingale, and Supermartingale

设 $(\Omega, \mathcal{F}, \{\mathcal{F}_t\}_{t \ge 0}, P)$ 是一个带滤概率空间，其中时间指标集为 $\mathbb{R}_+$。一个实值随机过程 $X = \{X_t\}_{t \ge 0}$ 被称为关于滤子 $\{\mathcal{F}_t\}$ 的**下鞅 (submartingale)**，如果它满足：

1. **可积性 (Integrability):** 对所有 $t \ge 0$, $E[|X_t|] < \infty$。
2. **适应性 (Adaptedness):** 对所有 $t \ge 0$, $X_t$ 是 $\mathcal{F}_t$-可测的。
3. **下鞅性质:** 对任意 $0 \le s \le t$，都有：
    $$
    E[X_t | \mathcal{F}_s] \ge X_s
    $$

```

[[Wiki - sigma代数流|filtration信息流]]

-  如果上式为等号（`=`），则称 $X$ 为**鞅 (martingale)**。
-  如果上式为小于等于号（`<=`），则称 $X$ 为**上鞅 (supermartingale)**。


[[Wiki - 鞅]]、[[Wiki - 上鞅和下鞅]]

## The 1 鞅的路径正则性 (Regularity of Paths)

```ad-theorem
title: Right-Continuous Modification

设 $(\Omega, \mathcal{F}, \{\mathcal{F}_t\}, P)$ 满足**通常条件** (特别是滤子是右连续的)。

如果 $X$ 是一个**鞅** (或下鞅/上鞅)，并且函数 $t \mapsto E[X_t]$ 是右连续的，那么 $X$ 存在一个**右连续且有左极限 (RCLL / càdlàg)** 的修正。

特别地，所有的连续时间鞅（在滤子右连续的假设下）通常都默认取这个 RCLL 版本。
```

[[Wiki - 随机过程的连续性]]、[[Wiki - 随机过程的同质性]]、[[Wiki - Filtration的通常条件]]

[[Wiki - 路径正则性定理]]

