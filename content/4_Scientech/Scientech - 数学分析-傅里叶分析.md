---
aliases:
  - Fourier analysis
info: 23春数学分析B2第12章
date: 2023-07-01-星期六 16:10
update: 2023-07-01-Saturday 17:36:18
tags:
  - scientech/year2023
  - fourier分析
  - scientech/month06
id: scientech20230701161010
banner: "![[astrofishing.gif]]"
---
---
#数学分析/级数 

[[数学分析讲义-第2册.pdf]]

[[stein傅里叶分析导论.pdf]]

# 第十二章-Fourier 分析

## 12.1 函数的傅里叶级数

本节主要讨论周期函数的 Fourier 级数展开，即将复杂的周期信号分解为简单的正弦和余弦波的叠加。

### 1. 周期函数基础

Fourier 分析建立在周期函数的基础上。首先考察其积分性质和延拓方法。

*   **积分性质**: 周期函数的积分具有平移不变性等特点。
    *   详见 [[Wiki - 周期函数的积分]]。
*   **延拓**: 将定义在有限区间上的函数扩展为整个实轴上的周期函数。
    *   详见 [[Wiki - 周期延拓]]。

### 2. 级数展开

核心思想是利用正交三角函数系来逼近函数。

*   **正交基**: 引入三角函数系 {1, cos nx, sin nx}，并利用其正交性计算系数。
    *   详见 [[Wiki - 三角函数系]] 及其 [[Wiki - 三角函数系的性质]]。
*   **Fourier 级数**: 正式定义 $f(x) \sim \frac{a_0}{2} + \sum (a_n \cos nx + b_n \sin nx)$。
    *   详见 [[Wiki - Fourier级数]]。
    *   特殊形式：[[Wiki - 正弦级数和余弦级数]]。
*   **应用**: 利用级数展开求特定数值级数的和等。
    *   详见 [[Wiki - Fourier级数的应用]]。

### 3. 推广形式

*   **任意区间**: 将理论从 $[-\pi, \pi]$ 推广到任意区间 $[-L, L]$。
    *   详见 [[Wiki - 有限区间的Fourier级数]]。
*   **复数形式**: 利用欧拉公式引入 $e^{inx}$，形式更为简洁，是通向 Fourier 变换的桥梁。
    *   详见 [[Wiki - Fourier级数的复数形式]]。

## 12.2 平方平均收敛

探讨 Fourier 级数在 $L^2$ 空间（能量有限信号空间）中的收敛性质。

### 1. 空间结构

*   **平方可积空间**: 定义了 $L^2$ 空间及其内积结构。
    *   详见 [[Wiki - 平方可积]] 及其 [[Wiki - 平方可积的性质]]。

### 2. Parseval 等式

*   **Bessel 不等式**: 级数的部分和能量永远不超过原函数的能量。
    *   详见 [[Wiki - Bessel不等式]]。
*   **Parseval 等式**: 当基完备时，能量守恒（时域总能量等于频域总能量）。
    *   详见 [[Wiki - Parseval等式]] 及其 [[Wiki - Parseval等式的推论]]。

### 3. 抽象推广

*   **广义级数**: 将上述理论推广到任意 Hilbert 空间的正交系中。
    *   详见 [[Wiki - 广义fourier级数]]。

## 12.3 收敛性定理的证明

本节深入探讨 Fourier 级数收敛的条件，区分逐点收敛与一致收敛。

### 1. 逐点收敛 (Pointwise Convergence)

研究 $S_n(x)$ 是否在每一点都收敛于 $f(x)$。这依赖于卷积核的性质。

*   **核函数**: 引入逼近恒等式（Good Kernel）的概念。
    *   详见 [[Wiki - Good Kernel]]。
*   **Dirichlet 核**: Fourier 部分和 $S_n$ 对应的核 $D_n$。注意它不是 Good Kernel。
    *   详见 [[Wiki - dirichlet积分|dirichlet核]]。
*   **Dirichlet 定理**: 给出了逐点收敛的充分条件（通常要求函数**分段可微**）。
    *   详见 [[Wiki - Fourier级数的Dirichlet定理]]。

### 2. 一致收敛与求和 (Uniform Convergence & Summability)

*   **一致收敛**: 若函数具有更好的光滑性（如 $f \in C^1$），级数将一致收敛。
    *   详见 [[Wiki - fourier级数的一致收敛性]]。
*   **Cesàro 求和**: 当级数本身不收敛时，其算术平均值（Cesàro 和）可能收敛。
    *   详见 [[Wiki - cesaro和]]。
*   **Fejér 定理**: Fejér 核（Cesàro 和对应的核）是 Good Kernel，因此连续函数的 Fourier 级数必然 Cesàro 一致收敛于原函数。
    *   详见 [[Wiki - cesaro和的Fejer一致收敛定理]]。

## 12.4 $\mathbb{R}$ 的 Fourier 变换

本节将 Fourier 分析从周期函数（圆周 $\mathbb{T}$）推广到非周期函数（实直线 $\mathbb{R}$）。通过令周期 $L \to \infty$，级数求和转化为积分。

### 1. 基础积分理论

为了确保 Fourier 变换积分收敛，首先引入一类衰减足够快的函数空间。

*   **适度下降函数**: 定义了基础的积分空间 $\mathcal{M}(\mathbb{R})$。此类函数连续且在无穷远处至少以 $O(1/x^2)$ 衰减，保证了 $L^1$ 可积性。
    *   详见 [[Wiki - 适度下降函数]]。
*   **Fourier 变换定义**: 对于 $f \in \mathcal{M}(\mathbb{R})$（或 $L^1(\mathbb{R})$），定义其变换为 $\hat{f}(\xi) = \int f(x) e^{-2\pi i x \xi} dx$。
    *   详见 [[Wiki - fourier变换]]。

### 2. Schwartz 空间

为了克服 $L^1$ 空间在微分运算下的不足（即 $f$ 可微不代表 $\hat{f}$ 有良好衰减），引入 Schwartz 空间 $\mathcal{S}(\mathbb{R})$。

*   **定义与性质**: 这是一个由“速降函数”构成的空间，要求函数及其所有导数比任意多项式衰减得都快。
    *   详见 [[Wiki - Schwartz空间]]。
*   **变换性质**: Fourier 变换将微分转化为乘法，且将 Schwartz 空间双射映射到自身。
    *   详见 [[Wiki - Fourier变换的基本性质]]。
*   **高斯函数**: $\mathcal{S}(\mathbb{R})$ 中最重要的例子是 $e^{-\pi x^2}$，它是其自身的 Fourier 变换。
    *   详见 [[Wiki - 高斯函数]]。

### 3. 核心定理

在 Schwartz 空间上，我们可以建立完备的 Fourier 分析理论。

*   **反演公式**: 只要 $f \in \mathcal{S}(\mathbb{R})$，就可以通过逆变换完全重构 $f$。证明通常依赖于引入高斯核作为 Good Kernel。
*   **卷积定理**: 空间域的卷积对应频域的乘法。这是求解 PDE 的关键工具。
*   **Plancherel 定理**: Fourier 变换是 $L^2$ 上的等距同构（能量守恒）。
    *   详见 [[Wiki - Plancherel定理]]。

### 4. 应用

Fourier 变换是将微分方程转化为代数方程的强力工具。

*   **热传导方程**: 利用 Fourier 变换将关于 $t, x$ 的 PDE 转化为关于 $t$ 的 ODE，引入热核 $\mathcal{H}_t$。
    *   详见 [[Wiki - 实直线上的热传导方程]]。
*   **Dirichlet 问题**: 求解上半平面的拉普拉斯方程，引入 Poisson 核 $\mathcal{P}_y$。
    *   详见 [[Wiki - 上半平面Poisson核]]。
*   **Poisson 求和公式**: 连接了离散和（周期化）与连续积分（Fourier 变换），在数论中有重要应用。
    *   详见 [[Wiki - Poisson求和公式]]。

## 12.5 有限傅里叶分析

本节讨论定义在有限阿贝尔群上的 Fourier 分析，这是圆周 $\mathbb{T}$ 上连续理论的离散模拟，也是数值计算的基础。

### 1. $\mathbb{Z}(N)$ 上的傅里叶分析

考虑单位圆上的均匀分布离散点集，即 $N$ 次单位根群，这构成了最基础的有限阿贝尔群模型。

*   **基础群论**: $\mathbb{Z}(N)$ 既可以看作单位根的乘法群，也可以看作整数模 $N$ 的加法群。
    *   详见 [[Wiki - Z(N)群]]。
*   **离散傅里叶变换 (DFT)**: 定义了有限序列的频谱分析方法，公式与连续情形高度对称。
    *   详见 [[Wiki - 离散傅里叶变换]]。
*   **快速傅里叶变换 (FFT)**: 利用 $N=2^n$ 时的递归结构，将计算复杂度从 $O(N^2)$ 降至 $O(N \log N)$，是现代信号处理的基石。
    *   详见 [[Wiki - 快速傅里叶变换]]。

### 2. 有限阿贝尔群上的推广

将理论从 $\mathbb{Z}(N)$ 推广到任意有限阿贝尔群 $G$，揭示了 Fourier 分析的代数本质。[[Wiki - 有限Abel群的结构定理]]

*   **群特征**: 这里的“正弦波”被推广为从群 $G$ 到圆周群 $S^1$ 的同态（特征）。
    *   详见 [[Wiki - 有限Abel群]] 及其 [[Wiki - 群特征]]。
*   **正交性与对偶**: 特征构成了一组标准正交基，且对偶群 $\hat{G}$ 与原群 $G$ 同构。
    *   详见 [[Wiki - 对偶群]]、[[Wiki - 群同构]]。
*   **Plancherel 公式**: plancherel 定理 [[Wiki - Plancherel定理]] 在有限群上依然成立，建立了时域能量与频域能量的等距关系。

## 12.6 R^d 的 Fourier 分析

本节将 Fourier 分析从一维推广到 $d$ 维欧氏空间 $\mathbb{R}^d$。大部分定理（如反演公式、Plancherel 定理）在形式上保持不变，但随着维数的增加，旋转对称性成为了一个新的核心视角。

### 1. 基础理论

首先将 Schwartz 空间和 Fourier 变换推广到多维情形。

*   **R^d 上的推广**: Schwartz 空间 $\mathcal{S}(\mathbb{R}^d)$ 定义为所有速降的光滑函数。其定义依赖于多重指标。
    *   详见 [[Wiki - Schwartz空间]]。
*   **Fourier 变换**: 定义为 $\hat{f}(\xi) = \int f(x) e^{-2\pi i x \cdot \xi} dx$。其基本性质（平移、伸缩、微分）与一维类似。
    *   详见 [[Wiki - fourier变换]]。
*   **旋转对称性**: 多维特有的性质。若函数具有旋转对称性（径向函数），其 Fourier 变换也具有旋转对称性。这大大简化了计算。
    *   详见 [[Wiki - 径向函数]]，其 Fourier 变换可以通过 Bessel 函数显式表达 [[Wiki - Bessel函数]]。

### 2. 波动方程

利用 Fourier 变换求解 $d$ 维波动方程 $\Delta u = \partial_{tt} u$，揭示了波传播与空间维数的深刻联系。

*   **基本解法**: 通过对空间变量做 Fourier 变换，将 PDE 转化为常微分方程求解。
    *   详见 [[Wiki - Rd上的波动方程]]。
*   **球面平均**: 解决波动方程的关键技术手段，将多维积分转化为一维问题。
    *   详见 [[Wiki - n维图形体积的计算]]。
*   **Huygens 原理**: 奇数维（$d \ge 3$）波传播具有清晰的波前，无后效（强惠更斯原理）；而偶数维则存在后效。
    *   详见 [[Wiki - Huygens原理]]。

### 3. Radon 变换与应用

在多维空间中，除了 Fourier 变换，还有对子流形（如直线、平面）进行积分的变换，这对医学成像至关重要。

*   **变换定义**: Radon 变换 $\mathcal{R}f$ 是对平面的积分，X 射线变换 $Xf$ 是对直线的积分。
    *   详见 [[Wiki - Radon变换]] 和 [[Wiki - X射线变换]]。
*   **投影切片定理**: 建立了 Radon 变换与 Fourier 变换之间的桥梁，是 CT 重建算法的核心原理。

