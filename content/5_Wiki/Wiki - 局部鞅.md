---
aliases:
  - 真鞅
info:
date: 2025-09-24-星期三 17:34
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250924173440
banner: "![[astrowalk.gif]]"
---
---

## Def 1 局部鞅 (Local Martingale)

```ad-definition
title: Local Martingale

一个 **càdlàg 适应过程** $X = \{X_t\}$ 被称为**局部鞅 (local martingale)**，如果存在一个序列的**停止时 (stopping times)** $\{\tau_n\}_{n \ge 1}$，满足：
1.  **几乎必然发散:** $\tau_n \uparrow \infty$ as $n \to \infty$, with probability 1。
2.  **局部化性质:** 对每一个 $n$，**停止过程 (stopped process)** $X^{\tau_n} = \{X_{t \wedge \tau_n}\}_{t \ge 0}$ 都是一个**真鞅 (true martingale)** (且是一致可积的)。

```

[[Wiki - 路径正则性定理]]、[[Wiki - 停止过程]]、[[Wiki - 连续时间鞅]]

为什么要引入局部鞅？因为鞅的定义要求 $E[|X_t|] < \infty$ 对所有 $t$ 成立。这个条件在某些情况下太苛刻了。

**例子 (Example 9.2):** 考虑一个从 $a \neq 0$ 出发的三维布朗运动 $B_t$。过程 $X_t = 1/|B_t + a|$ 在布朗运动 [[Wiki - brown运动]] 碰到原点之前表现得像一个鞅，但当 $B_t \to -a$ 时，$X_t$ 会爆炸，导致其期望 $E[|X_t|]$ 可能是无限的。

局部鞅的概念放宽了这一要求。它只要求一个过程在“局部”（即在任意大的有限时间区间 $[0, \tau_n]$ 内）表现为鞅。只要能找到一列趋于无穷的“检查点” $\tau_n$，在每个检查点之前过程都是良好（鞅）的，我们就称它为局部鞅。

这个概念极大地扩展了我们可以处理的过程范围，是现代随机分析的基石。同样地，我们也可以定义**局部下鞅 (local submartingale)**。


## Pro 1 局部鞅何时是真鞅？(DL-Class)

```ad-proposition
title: When is a Local Martingale a True Martingale?

一个局部鞅 $M$ 是一个真鞅，当且仅当它是 **(DL)类** 的。

一个过程 $X$ 被称为 **(DL)类**，如果对任意 $T > 0$，随机变量族 $\{X_\tau : \tau \text{ is a stopping time with } \tau \le T\}$ 都是**一致可积的 (UI)**。
```

[[Wiki - 停时]]、[[Wiki - 随机变量一致可积]]

我们已经知道局部鞅比鞅更宽泛。那么，一个局部鞅在什么附加条件下才能升级为一个真正的鞅呢？这个命题给出了答案。

-   **(DL) 类** 条件本质上要求过程在**任意有限时间区间内**，其在所有可能的停止时刻的值都表现良好，没有“质量”逃逸到无穷远。[[Wiki - D类过程|Class DL]]

这为我们提供了一个**从局部鞅回到真鞅**的实用判据。

