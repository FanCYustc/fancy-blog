---
aliases:
info: GTM113 CH2.2-2.4
date: 2025-12-18-星期四 11:35:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251218113500
banner: "![[astrowalk.gif]]"
---

# brown 运动的构造

## 1. 有限维分布的一致性 (Kolmogorov 构造)

### 构造思路
这是构建马尔可夫过程的通用方法。首先通过指定有限维分布族 (Finite-dimensional distributions) 来确定过程的统计特性，利用 **Kolmogorov 存在性定理** 在乘积空间 $\mathbb{R}^{[0, \infty)}$ 上构造概率测度。

### 核心步骤
1.  **指定有限维分布**：
    对于任意 $0 = t_0 < t_1 < \dots < t_n$，随机向量 $(B_{t_1}, \dots, B_{t_n})$ 的联合密度函数由高斯转移核 (Gaussian kernel) 给出：
    $$ p(t; x, y) = \frac{1}{\sqrt{2\pi t}} e^{-(x-y)^2/2t} $$
    即
    $$ f(x_1, \dots, x_n) = p(t_1; 0, x_1) p(t_2-t_1; x_1, x_2) \cdots p(t_n-t_{n-1}; x_{n-1}, x_n) $$
    这等价于增量独立且服从正态分布。这些分布定义在路径空间的 [[Wiki - 柱集]] 上。

2.  **一致性条件 (Consistency)**：
    该分布族满足 Daniell-Kolmogorov 一致性条件（排列不变性、边缘分布一致性），根据 **[[Wiki - Daniell-Kolmogorov一致性定理]]**，在乘积空间 $\mathbb{R}^{[0, \infty)}$ 上存在唯一的概率测度 $P$。

3.  **连续修正 (Continuous Modification)**：
    $\mathbb{R}^{[0, \infty)}$ 空间太大，包含大量非连续函数。为了得到连续轨道的布朗运动，需利用 **[[Wiki - Kolmogorov-Chentsov定理]]**。
    由于布朗运动满足：
    $$ E[|B_t - B_s|^{2n}] = C_n |t-s|^n $$
    对于 $n$ 足够大，满足条件 $E|X_t - X_s|^α ≥ C|t-s|^{1+β}$ ($\alpha=2n, \beta=n-1$)。因此存在一个连续修正版本，其轨道几乎处处是局部 Hölder 连续的（指数 $\gamma < 1/2$）。

## 2. Lévy-Ciesielski 构造 (Hilbert 空间方法)

### 构造思路
利用 Hilbert 空间 $L^2[0, 1]$ 的完备正交基构造 [[Wiki - Hilbert空间]]。这是一种更“构造性”的方法，直接通过随机级数定义出连续函数。

### 核心步骤
1.  **Haar 函数系 (Haar Functions)**：
    定义 $L^2[0, 1]$ 上的完备正交基 $\{H_k^{(n)}\}$（参见 [[Wiki - Haar函数]]）。[[Wiki - 内积空间的正交基]]
    $H_1^{(0)}(t) \equiv 1$。对于 $n \ge 1, k \in I(n)$（奇数指标），定义：
    $$ H_k^{(n)}(t) = \begin{cases} 2^{(n-1)/2}, & \frac{k-1}{2^n} \le t < \frac{k}{2^n} \\ -2^{(n-1)/2}, & \frac{k}{2^n} \le t < \frac{k+1}{2^n} \\ 0, & \text{otherwise} \end{cases} $$

2.  **Schauder 函数系 (Schauder Functions)**：
    定义 $H_k^{(n)}$ 的积分函数为 Schauder 函数（参见 [[Wiki - Schauder函数]]）：
    $$ S_k^{(n)}(t) = \int_0^t H_k^{(n)}(u) du, \quad 0 \le t \le 1 $$
    $S_k^{(n)}(t)$ 是支撑在二进小区间上的“帐篷函数”(little tents)。

3.  **级数展开**：
    令 $\{Z_k^{(n)}\}$ 为一族独立同分布的标准正态随机变量 $\mathcal{N}(0, 1)$。定义级数：
    $$ B_t(\omega) = \sum_{n=0}^\infty \sum_{k \in I(n)} Z_k^{(n)}(\omega) S_k^{(n)}(t) $$
    
4.  **收敛性**：
    利用 Borel-Cantelli 引理可以证明，系数 $Z_k^{(n)}$ 的增长速度受控，使得上述级数在 $t \in [0, 1]$ 上**一致收敛**[[Wiki - 一致收敛]]。由于 $S_k^{(n)}(t)$ 是连续函数，一致收敛极限 $B_t$ 也是连续的。
    Parseval 等式保证了协方差结构的正确性：$\sum \langle 1_{[0,t]}, H \rangle \langle 1_{[0,s]}, H \rangle = \langle 1_{[0,t]}, 1_{[0,s]} \rangle = s \wedge t$。

## 3. 随机游走逼近 (Donsker 不变性原理)

### 构造思路
基于**泛函中心极限定理 (Functional Central Limit Theorem)**。将布朗运动视为离散随机游走在时空尺度缩放下的弱极限。[[Wiki - Donsker不变性原理|泛函中心极限定理]]

### 核心步骤
1.  **随机游走**：
    设 $\xi_1, \xi_2, \dots$ 为 i.i.d. 随机变量，均值 0，方差 $\sigma^2$。定义部分和 $S_k = \sum_{i=1}^k \xi_i$。

2.  **插值与缩放**：
    构造连续时间过程 $X^{(n)} = \{X_t^{(n)}; t \ge 0\}$。在整数点 $k/n$ 处取值，中间进行线性插值：
    $$ X_t^{(n)} = \frac{1}{\sigma \sqrt{n}} S_{\lfloor nt \rfloor} + \frac{nt - \lfloor nt \rfloor}{\sigma \sqrt{n}} \xi_{\lfloor nt \rfloor + 1} $$

3.  **弱收敛 (Weak Convergence)**：
    **Donsker 定理**指出，当 $n \to \infty$ 时，概率测度 $P_n$（由 $X^{(n)}$ 诱导）在空间 $C[0, \infty)$ 上弱收敛于 Wiener 测度 $P_*$。
    $$ X^{(n)} \xrightarrow{\mathscr{D}} B $$
    这意味着随机游走的各种泛函分布（如最大值、首达时）也会收敛到布朗运动的对应泛函分布。这一性质称为**不变性原理 (Invariance Principle)**，因为极限仅依赖于 $\xi$ 的均值和方差。

[[Wiki - 弱收敛]]