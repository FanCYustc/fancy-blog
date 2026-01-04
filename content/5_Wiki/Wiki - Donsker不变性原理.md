---
aliases:
  - Functional Central Limit Theorem
  - 泛函中心极限定理
  - Donsker's Theorem
info: GTM113 CH2.4
date: 2025-12-18-星期四 11:37:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 泛函分析
  - 概率论/极限理论
id: wiki20251218113700
banner: "![[astrowalk.gif]]"
---

# Donsker 不变性原理

## 1. 简介与直观意义

Donsker 不变性原理 (Donsker's Invariance Principle)，又称为**泛函中心极限定理 (Functional Central Limit Theorem)**，是概率论中连接离散随机游走与连续 [[Wiki - brown运动]] 的核心桥梁。

**直观理解**：
正如中心极限定理 (CLT) 说明了大量独立随机变量的和在分布上趋近于 [[Wiki - 正态分布]]，Donsker 定理说明了这些和随时间变化的**整个轨迹**（经过适当的缩放）在分布上趋近于布朗运动的轨迹。
“不变性”一词指的是：极限过程（布朗运动）的性质不依赖于原随机变量的具体分布，只依赖于其均值（为 0）和方差（为 $\sigma^2$）。

## 2. 数学表述

### 2.1 随机游走的构造

设 $\{\xi_j\}_{j=1}^\infty$ 为独立同分布 (i.i.d.) 的随机变量 [[Wiki - 随机变量]]序列，满足：
*   均值 $E[\xi_j] = 0$ [[Wiki - 数学期望]]
*   方差 $E[\xi_j^2] = \sigma^2 \in (0, \infty)$ [[Wiki - 方差]]

定义部分和（随机游走）：
$$ S_0 = 0, \quad S_k = \sum_{j=1}^k \xi_j, \quad k \ge 1 \\
$$ 

为了将其转化为连续时间过程，我们对 $S_k$ 进行线性插值。构造过程 $Y = \{Y_t; t \ge 0\}$：
$$ Y_t = S_{\lfloor t \rfloor} + (t - \lfloor t \rfloor)\xi_{\lfloor t \rfloor + 1} \\
$$ 其中 $\lfloor t \rfloor$ 表示 $t$ 的整数部分。

### 2.2 扩散缩放 (Diffusive Scaling)
为了得到非平凡的极限，我们需要对时间及空间同时进行缩放。定义缩放后的过程序列 $X^{(n)} = \{X_t^{(n)}; t \ge 0\}$ 为：
$$ X_t^{(n)} = \frac{1}{\sigma \sqrt{n}} Y_{nt} = \frac{1}{\sigma \sqrt{n}} \left( S_{\lfloor nt \rfloor} + (nt - \lfloor nt \rfloor)\xi_{\lfloor nt \rfloor + 1} \right) \\
$$ *   **时间缩放**：$t \to nt$（时间加速 $n$ 倍）。
*   **空间缩放**：除以 $\sqrt{n}$（根据 CLT，$\text{Var}(S_n) = n\sigma^2$，故标准差为 $\sigma\sqrt{n}$）。[[Wiki - 中心极限定理]]

### 2.3 定理内容
令 $C[0, \infty)$ 为 $[0, \infty)$ 上的连续函数空间[[Wiki - 连续可测函数]]，赋予局部一致收敛拓扑（通过度量 $\rho$ 定义）。
令 $P_n$ 为过程 $X^{(n)}$ 在 $(C[0, \infty), \mathscr{B}(C[0, \infty)))$ 上诱导的概率测度[[Wiki - 概率测度]]。
令 $P_*$ 为 [[Wiki - Wiener测度]]，即标准布朗运动的分布。

**Donsker 定理 (1951)**：
序列 $\{P_n\}$ **弱收敛**于 $P_*$。[[Wiki - 弱收敛]]记作：
$$ X^{(n)} \xrightarrow{\mathscr{D}} W \\
$$ 其中 $W$ 是标准 [[Wiki - brown运动]]。这意味着对于 $C[0, \infty)$ 上任意有界连续泛函 $f$，有：
$$ \lim_{n \to \infty} E[f(X^{(n)})] = E^{P_*}[f] = E[f(W)] \\
$$ 

## 3. 证明思路概览 (基于 GTM113)

证明弱收敛 $X^{(n)} \xrightarrow{\mathscr{D}} W$ 通常分为两步：

1.  **有限维分布收敛 (Finite-dimensional Distributions)**：
    证明对于任意有限个时间点 $0 \le t_1 < \dots < t_k$，向量 $(X_{t_1}^{(n)}, \dots, X_{t_k}^{(n)})$ 在分布上收敛于 $(W_{t_1}, \dots, W_{t_k})$。
    *   这主要依赖于经典的 **多维中心极限定理**。由于 $\xi_j$ 是独立的，增量近似独立且服从正态分布。[[Wiki - 多元中心极限定理]]

2.  **紧性 (Tightness)**：
    证明概率测度序列 $\{P_n\}$ 是**紧的 (Tight)**。根据 **[[Wiki - Prokhorov定理]]**，相对紧性加上有限维分布的收敛性足以推出弱收敛。
    *   紧性意味着过程 $X^{(n)}$ 的概率质量不会“逃逸”到无穷远处，且其轨道不会发生过于剧烈的振荡（等度连续性）。
    *   具体的证明需要估计 $X^{(n)}$ 的模连续性，通常利用 Kolmogorov 不等式或其变体来控制增量的波动。

## 4. 应用

Donsker 不变性原理使得我们可以用布朗运动来研究随机游走的渐近性质，反之亦然。

*   **计算复杂分布**：
    若要求随机游走某个复杂泛函（如最大值、首达时）的极限分布，只需计算布朗运动对应泛函的分布。
    例如：
    $$ \lim_{n \to \infty} P\left( \frac{1}{\sigma \sqrt{n}} \max_{0 \le k \le n} S_k \le x \right) = P\left( \max_{0 \le t \le 1} W_t \le x \right) = 2\Phi(x) - 1 \\
    $$ 
    (参考 [[Wiki - brown运动的击中时和最大值]])

*   **统计物理**：解释了为何扩散现象在宏观尺度上表现为布朗运动，而与微观粒子的具体运动细节无关。

