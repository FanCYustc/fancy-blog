---
aliases:
  - Progressively Measurable
info:
date: 2025-12-18-星期四 11:10
id: wiki20251218111000
banner: "![[astrowalk.gif]]"
tags:
  - wiki/month12
  - wiki/year2025
  - 随机过程
  - 实分析/测度论
---

在连续时间随机过程理论中，**循序可测性** (Progressive Measurability) 是比“适应性”更强、比“可测性”更精细的一个性质，它对于定义停时停止的过程以及随机积分至关重要。

## 定义

设 $(\Omega, \mathcal{F}, \{\mathcal{F}_t\}_{t \ge 0}, P)$ 为一个过滤概率空间。如果对于任意的时间 $t \ge 0$，映射：
$$
(s, \omega) \mapsto X_s(\omega): ([0, t] \times \Omega, \mathcal{B}([0, t]) \otimes \mathcal{F}_t) \to (\mathbb{R}^d, \mathcal{B}(\mathbb{R}^d))
$$
是可测的，则称随机过程 $X = \{X_t; t \ge 0\}$ 是关于滤子 ${\mathcal{F}_t}$ **循序可测**的 (Progressively Measurable)。[[Wiki - sigma代数流|filtration信息流]]

直观上，这意味着如果我们把时间限制在 $[0, t]$ 上，过程 $X$ 不仅对于 $\omega$ 是可测的，而且作为 $(s, \omega)$ 的函数也是联合可测的，且仅依赖于到时刻 $t$ 为止的信息 $\mathcal{F}_t$。

## 性质与关系

1.  **蕴含适应性**：任何循序可测过程都是适应于 ${\mathcal{F}_t}$ 的 (Adapted) [[Wiki - 可测函数]]。[[Wiki - 随机变量]]
2.  **蕴含可测性**：任何循序可测过程都是可测过程 (Measurable Process, 即关于 $\mathcal{B}([0, \infty)) \otimes \mathcal{F}$ 可测)。
3.  **正则路径的循序可测性**：
    如果一个随机过程 $X$ 是适应的，并且其样本路径几乎处处是**右连续** (Right-Continuous) 或者**左连续** (Left-Continuous) 的，那么 $X$ 是循序可测的。[[Wiki - 路径正则性定理]]、[[Wiki - 随机过程的连续性]]


## 应用

- **停时停止的过程**：如果 $X$ 是循序可测过程，$T$ 是一个停时 [[Wiki - 停时]]，那么停止过程 $X^T = \{X_{t \wedge T}; t \ge 0\}$ 也是循序可测的。
- **随机变量的可测性**：对于循序可测过程 $X$ 和停时 $T < \infty$，随机变量 $X_T$ 是 $\mathcal{F}_T$ -可测的[[Wiki - 随机变量|随机变量可测]]。

