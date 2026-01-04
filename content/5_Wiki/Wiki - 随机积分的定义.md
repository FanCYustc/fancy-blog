---
aliases:
  - Ito积分
  - 随机积分构造
info: 
date: 2025-12-22-星期一 13:38
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251222133826
banner: "![[astrowalk.gif]]"
---
---

随机积分（Stochastic Integral）的构造是随机分析的核心。虽然最常见的形式是针对布朗运动 $B_t$ 的积分 $\int X_s dB_s$，但严谨的数学理论通常在更一般的框架下建立——即针对**连续平方可积鞅 (Continuous Square-integrable Martingale)** 的积分。

## 0. 预备设置 (Setup)

设定概率空间 [[Wiki - 概率空间]] $(\Omega, \mathcal{F}, P)$ 及满足通常条件的过滤 {$\mathcal{F}_t$}。[[Wiki - sigma代数流|滤子]]
- **积分器 (Integrator):** 令 $M = \{M_t, \mathcal{F}_t; 0 \le t < \infty\}$ 为一个连续平方可积鞅 ($M \in \mathcal{M}_2^c$)，且 $M_0 = 0$。[[Wiki - 平方可积鞅]]
- **二次变差:** $M$ 拥有唯一的连续增过程 [[Wiki - 增过程]] $\langle M \rangle_t$，使得 $M_t^2 - \langle M \rangle_t$ 是鞅。[[Wiki - 二次变差]]
- **测度 $\mu_M$ :** 在乘积空间 $[0, \infty) \times \Omega$ 上定义测度 $\mu_M$ [[Wiki - 抽象测度]]，满足 $\mu_M(A) = E \int_0^\infty 1_A(t, \omega) d\langle M \rangle_t(\omega)$。[[Wiki - 随机过程的Law]]
- **被积函数空间 $\mathcal{L}^*(M)$ :** 定义 $\mathcal{L}^*(M)$ 为所有**循序可测 (progressively measurable)** 且满足以下条件的随机过程 $X$ 的等价类集合：[[Wiki - 循序可测过程]]
  $$ \|X\|_T^2 := E \int_0^T X^2(t, \omega) d\langle M \rangle_t < \infty, \quad \forall T > 0 $$

## 1. 第一步：简单过程 (Simple Processes)

首先定义一类结构最简单、积分定义显而易见的过程。

**定义 (简单过程 $\mathcal{L}_0$):**
一个过程 $X$ 称为简单过程，如果它可以表示为：
$$ X_t(\omega) = \xi_0(\omega) 1_{\{0\}}(t) + \sum_{i=0}^{\infty} \xi_i(\omega) 1_{(t_i, t_{i+1}]}(t) $$
其中 $0 = t_0 < t_1 < \dots$ 是趋于无穷的确定性时间序列，且系数 $\xi_i$ 是 $\mathcal{F}_{t_i}$-可测的随机变量，并满足一致有界条件 ($\sup_n |\xi_n(\omega)| \le C$)。

[[Wiki - 简单函数逼近定理]]

**定义积分:**
对于简单过程 $X \in \mathcal{L}_0$，定义其关于 $M$ 的随机积分 $I_t(X)$ 为：
$$ I_t(X) = \sum_{i=0}^{\infty} \xi_i (M_{t \wedge t_{i+1}} - M_{t \wedge t_i}) $$
这本质上是一个有限和。对于固定的 $t$，只有有限项非零。

## 2. 第二步：伊藤等距 (Itô Isometry)

对于简单过程，可以证明以下核心等式：

> **命题 (Ito Isometry):**
> 对于 $X \in \mathcal{L}_0$，其随机积分满足：
> $$ E \left[ (I_t(X))^2 \right] = E \left[ \int_0^t X_s^2 d\langle M \rangle_s \right] $$
> 或者写成范数形式：$\|I(X)\|_{\mathcal{M}_2} = \|X\|_{\mathcal{L}^*}$。

这一性质表明，积分算子 $I: \mathcal{L}_0 \to \mathcal{M}_2^c$ 是一个**保距映射 (Isometry)**。这是能将定义推广到极限情况的关键。[[Wiki - Ito等距定理]]

## 3. 第三步：逼近与延伸 (Approximation & Extension)

为了定义一般过程 $X \in \mathcal{L}^*(M)$ 的积分，我们需要证明简单过程足够丰富，可以逼近任意循序可测过程。

**稠密性引理:**
简单过程空间 $\mathcal{L}_0$ 在 $\mathcal{L}^*(M)$ 中是**稠密的**。即对于任意 $X \in \mathcal{L}^*(M)$，存在序列 $\{X^{(n)}\}$ $\subseteq \mathcal{L}_0$ 使得：
$$ \lim_{n \to \infty} E \int_0^T |X^{(n)}_t - X_t|^2 d\langle M \rangle_t = 0, \quad \forall T > 0 $$
[[Wiki - Lp空间的稠密性定理]]

**构造一般积分:**
1.  对于任意 $X \in \mathcal{L}^*(M)$，选取逼近的简单过程序列 $\{X^{(n)}\}$。
2.  根据伊藤等距性质，$I(X^{(n)})$ 在连续平方可积鞅空间 $\mathcal{M}_2^c$ 中构成一个**柯西序列 (Cauchy Sequence)**。
3.  由于空间 $\mathcal{M}_2^c$ 是**完备的 (Complete)**，该柯西序列必收敛于唯一的极限过程。
4.  我们将这个极限过程定义为 $X$ 的随机积分，记为 $I(X) = \int X dM$。

## 4. 结论与性质

通过上述步骤构造的积分 $I(X) = \{ \int_0^t X_s dM_s, t \ge 0 \}$ 具有以下性质：
- **鞅性:** $I(X)$ 是一个连续平方可积鞅 ($I(X) \in \mathcal{M}_2^c$)。[[Wiki - 鞅]]
- **等距性:** 满足 $E[(\int_0^t X dM)^2] = E[\int_0^t X^2 d\langle M \rangle]$。
- **唯一性:** 积分过程在“不可区分 (Indistinguishable)”的意义下是唯一的。

注：对于更广泛的**局部鞅**和**局部有界**被积函数，可以通过**局部化 (Localization)** 技术进一步推广定义（见相关笔记）。