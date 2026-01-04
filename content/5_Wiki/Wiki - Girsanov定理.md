---
aliases:
  - 测度变换定理
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229100001
banner: "![[astrowalk.gif]]"
---

## 1. 定理陈述

Girsanov 定理是随机分析中关于测度变换的核心定理，它描述了在等价概率测度变换下，半鞅的分解（特别是漂移项）如何发生变化。

设 $(\Omega, \mathcal{F}, P)$ 为概率空间 [[Wiki - 概率空间]]，$W = \{W_t, \mathcal{F}_t; 0 \leq t < \infty\}$ 为 $d$ -维布朗运动 [[Wiki - brown运动]]。设 $X = \{X_t, \mathcal{F}_t; 0 \leq t < \infty\}$ 为 $d$ -维可测适应过程，满足 $\int_0^T \|X_t\|^2 dt < \infty$ a.s.

定义指数过程 $Z_t(X)$ 为：
$$
Z_t(X) = \exp \left( \sum_{i=1}^d \int_0^t X_s^{(i)} dW_s^{(i)} - \frac{1}{2} \int_0^t \|X_s\|^2 ds \right)
$$
若 $Z_t(X)$ 是一个鞅 [[Wiki - 鞅]]（例如满足 [[Wiki - Novikov条件]]），则我们可以定义一个新的概率测度 [[Wiki - 概率测度]] $\tilde{P}_T$，使得在 $\mathcal{F}_T$ 上 $\frac{d\tilde{P}_T}{dP} = Z_T(X)$。


```ad-theorem
title: Girsanov 定理 (Theorem 5.1)

假设 $Z(X)$ 是一个鞅。定义过程 $\tilde{W} = \{\tilde{W}_t; 0 \leq t < \infty\}$ 为：
$$
\tilde{W}_t^{(i)} = W_t^{(i)} - \int_0^t X_s^{(i)} ds, \quad 1 \leq i \leq d
$$
则对于固定的 $T \in [0, \infty)$，过程 $\{\tilde{W}_t, \mathcal{F}_t; 0 \leq t \leq T\}$ 是概率空间 $(\Omega, \mathcal{F}_T, \tilde{P}_T)$ 上的 $d$-维布朗运动。
```

[[Wiki - 布朗鞅表示定理]]
### 直观理解

Girsanov 定理通过改变概率测度，消除了原过程中的“漂移”项。
*   在原测度 $P$ 下，$W_t$ 是布朗运动（无漂移），而 $\tilde{W}_t$ 有漂移 $-\int X_s ds$。
*   在新测度 $\tilde{P}$ 下，$\tilde{W}_t$ 变成了标准的布朗运动（无漂移），这意味着原过程 $W_t = \tilde{W}_t + \int X_s ds$ 在新测度下变成了带漂移 $\int X_s ds$ 的布朗运动。[[Wiki - 漂移brown运动]]

这一性质在金融数学中至关重要，用于构造**风险中性测度**，使得资产价格过程（通常带有漂移）在变换后的测度下变为鞅。

## 2. 推广与推论

### 无穷时间区间的测度
若 $Z(X)$ 是鞅，且我们要考虑整个时间区间 $[0, \infty)$，通常无法在 $\mathcal{F}_\infty$ 上定义一个与 $P$ 等价的测度 $\tilde{P}$（除非 $Z_\infty$ 存在且严格正）。但在典范空间 $C[0, \infty)^d$ 上，若 $Z(X)$ 是鞅，则存在唯一的测度 $\tilde{P}$ 使得对任意 $T$，其限制在 $\mathcal{F}_T$ 上与上述 $\tilde{P}_T$ 一致，且 $\tilde{W}$ 是 $\tilde{P}$ 下的布朗运动。

### 逆向变换
若 $\tilde{P}$ 如上定义，则反向变换的 Radon-Nikodym 导数 [[Wiki - R-N导数]] 为 $Z_t^{-1}(X)$。根据 Itô 公式 [[Wiki - Ito公式]]，$1/Z_t(X)$ 也是一个指数鞅，对应于过程 $-X$。这意味着变换是可逆的。

