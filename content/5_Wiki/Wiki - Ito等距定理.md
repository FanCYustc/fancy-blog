---
aliases:
  - Itô Isometry
  - 随机积分的二次变差
info:
date: 2025-09-24-星期三 10:45
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20250924104541
banner: "![[astrowalk.gif]]"
---
---

**伊藤等距定理 (Itô Isometry)** 是随机积分理论中最基础、最重要的性质之一。它不仅为随机积分提供了计算二阶矩（方差）的手段，更重要的是，它确立了从被积函数空间到随机积分过程空间的**保范映射 (Isometry)** 关系，使得我们可以利用泛函分析中的完备性工具（如 Hilbert 空间理论）来构造和研究随机积分。

## The 1 Ito 等距定理

### 1.1 基本形式 (布朗运动情形)

设 $B = \{B_t\}$ 为标准布朗运动 [[Wiki - brown运动]]。若被积过程 $X \in L^2([0, T] \times \Omega)$ 且是适应的（更严格地说是循序可测 [[Wiki - 循序可测过程]]的），则：

$$ \mathbb{E}\left[ \left( \int_0^T X_t \, dB_t \right)^2 \right] = \mathbb{E}\left[ \int_0^T X_t^2 \, dt \right] $$ 

这表明，随机积分算子 $I: X \mapsto \int X dB$ 保持了 $L^2$ 范数 [[Wiki - 范数]]不变。

### 1.2 一般形式 (连续平方可积鞅情形)

更严谨的表述基于一般鞅论 (Karatzas & Shreve, Prop 3.2.10)。

设 $M \in \mathcal{M}_2^c$ 为连续平方可积鞅 [[Wiki - 平方可积鞅]]，且 $M_0=0$。设 $X \in \mathcal{L}^*(M)$ 为循序可测过程，满足 $\mathbb{E} \int_0^T X^2 d\langle M \rangle < \infty$。则对于任意 $t \ge 0$，随机积分 $I_t(X) = \int_0^t X_s dM_s$ 满足：

> **公式 1 (全局等距):**
> $$ \mathbb{E}\left[ \left( \int_0^t X_s \, dM_s \right)^2 \right] = \mathbb{E}\left[ \int_0^t X_s^2 \, d\langle M \rangle_s \right] $$ 

> **公式 2 (条件等距):**
> 对于 $0 \le s < t$，
> $$ \mathbb{E}\left[ \left( \int_s^t X_u \, dM_u \right)^2 \bigg| \mathcal{F}_s \right] = \mathbb{E}\left[ \int_s^t X_u^2 \, d\langle M \rangle_u \bigg| \mathcal{F}_s \right] $$ 

这里 $\langle M \rangle$ 是鞅 $M$ 的**二次变差过程** (Quadratic Variation) [[Wiki - 二次变差]]。对于布朗运动，$d\langle B \rangle_t = dt$，因此公式回归到 1.1 的形式。


### 证明思路

证明通常分为两步：先对简单过程验证，再通过极限推广。

**设定：**
考虑简单过程 [[Wiki - 随机积分的定义#1. 第一步：简单过程 (Simple Processes)]] $X_t = \sum_{j=0}^{n-1} \xi_j \mathbf{1}_{(t_j, t_{j+1}]}(t)$，其中 $\xi_j$ 是 $\mathcal{F}_{t_j}$ -可测的。积分定义为离散和：$I_t(X) = \sum_{j=0}^{n-1} \xi_j (M_{t_{j+1}} - M_{t_j})$。

**计算二阶矩：**
展开平方项 $\left( \sum_{j} \xi_j \Delta M_j \right)^2$ ：
$$ \mathbb{E}[I_t(X)^2] = \sum_{j} \mathbb{E}[\xi_j^2 (\Delta M_j)^2] + 2 \sum_{i < j} \mathbb{E}[\xi_i \xi_j \Delta M_i \Delta M_j] $$ 

1.  **交叉项 (Cross-terms) 为零:**
    对于 $i < j$，$\Delta M_j = M_{t_{j+1}} - M_{t_j}$ 的增量发生在 $t_j$ 之后，而 $\xi_i, \xi_j, \Delta M_i$ 都是 $\mathcal{F}_{t_j}$ -可测的。利用鞅 [[Wiki - 鞅]]性质：
    $$ \mathbb{E}[\xi_i \xi_j \Delta M_i \Delta M_j] = \mathbb{E}\big[ \xi_i \xi_j \Delta M_i \cdot \underbrace{\mathbb{E}[\Delta M_j \mid \mathcal{F}_{t_j}]}_{=0} \big] = 0 $$ 

2.  **对角项 (Diagonal terms):**
    利用 $M$ 的平方过程 $M^2 - \langle M \rangle$ 是鞅的性质（即 $\mathbb{E}[(\Delta M_j)^2 \mid \mathcal{F}_{t_j}] = \mathbb{E}[\Delta \langle M \rangle_j \mid \mathcal{F}_{t_j}]$）：
    $$ \mathbb{E}[\xi_j^2 (\Delta M_j)^2] = \mathbb{E}\big[ \xi_j^2 \mathbb{E}[(\Delta M_j)^2 \mid \mathcal{F}_{t_j}] \big] = \mathbb{E}[\xi_j^2 (\langle M \rangle_{t_{j+1}} - \langle M \rangle_{t_j})] $$ 

3.  **求和:**
    $$ \sum_{j} \mathbb{E}[\xi_j^2 \Delta \langle M \rangle_j] = \mathbb{E} \left[ \int_0^t X_s^2 d\langle M \rangle_s \right] $$ 

**结论：** 对于简单过程等式成立。对于一般过程，通过 $L^2$ 逼近取极限即可（利用 $\mathcal{L}_0$ 在 $\mathcal{L}^*$ 中的稠密性）。

[[Wiki - Lp空间的稠密性定理]]

## 2. cal 协方差与极化恒等式

利用简单的代数恒等式 $4ab = (a+b)^2 - (a-b)^2$，我们可以将等距性推广到两个不同过程的积分。

设 $M, N \in \mathcal{M}_2^c$，且 $X \in \mathcal{L}^*(M), Y \in \mathcal{L}^*(N)$。则两个随机积分 $I(X)$ 和 $I(Y)$ 的**协方差**满足：

$$ \mathbb{E}\left[ \left( \int_0^t X_s dM_s \right) \left( \int_0^t Y_s dN_s \right) \right] = \mathbb{E}\left[ \int_0^t X_s Y_s \, d\langle M, N \rangle_s \right] $$ 

其中 $\langle M, N \rangle$ 是 $M$ 和 $N$ 的**交叉变差** (Cross Variation)。
这表明在 Hilbert 空间中 [[Wiki - Hilbert空间]]，随机积分算子不仅保持范数（长度），也保持内积（角度）[[Wiki - 等距映射与等距同构]]。[[Wiki - 正交变换]]

