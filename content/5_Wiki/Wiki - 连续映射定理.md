---
aliases: [Continuous Mapping Theorem, CMT]
info: 收敛性在连续函数作用下的保持性
date: 2025-12-15-星期一 14:10
update: 2025-12-15-星期一 14:10
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
id: wiki20251215141001
banner: "![[astrowalk.gif]]"
---

# 连续映射定理

**连续映射定理** (Continuous Mapping Theorem, CMT) 是概率极限理论中的一个基本结果。它表明，如果随机变量序列以某种方式（几乎处处、依概率或依分布）收敛，那么在经过一个“几乎处处连续”的函数映射后，这种收敛性依然保持不变。

## 定理内容

设 $\{X_{n}\}_{n\geqslant 1}$ 和 $X$ 为概率空间 $(\Omega ,\mathcal{F},\mathbb{P})$ 上的一列实值随机变量。
设 $g:\mathbb{R}\to \mathbb{R}$ 为一个可测函数。定义 $D_g$ 为函数 $g$ 的不连续点集：

$$
D _ {g} := \{x \in \mathbb {R}; x \text { 为可测函数 } g \text { 的不连续点} \}.
$$

如果 $\mathbb{P}(X\in D_g) = 0$（即 $X$ 几乎必然落在 $g$ 的连续点上），则如下结论成立：

1.  **依概率收敛的保持性**：[[Wiki - 依概率收敛]]
    $$
    X_{n} \xrightarrow{\mathbb{P}} X, \quad n\to \infty \implies g(X_n) \xrightarrow{\mathbb{P}} g(X), \quad n\to \infty.
    $$

2.  **几乎处处收敛的保持性**：[[Wiki - 几乎处处收敛]]
    $$
    X_{n} \xrightarrow{\mathrm{a.e.}} X, \quad n\to \infty \implies g(X_n) \xrightarrow{\mathrm{a.e.}} g(X), \quad n\to \infty.
    $$

3.  **依分布收敛的保持性**：[[Wiki - 依分布收敛]]
    $$
    X_{n} \stackrel {d}{\to} X, \quad n\to \infty \implies g(X_n) \stackrel {d}{\to} g(X), \quad n\to \infty.
    $$

## 证明思路

1.  **依概率收敛**：
    利用概率分析，将 $|g(X_n) - g(X)| > \varepsilon$ 的事件分解。由于 $\mathbb{P}(X \in D_g) = 0$，对于 $X$ 在 $g$ 的连续点附近，可以利用 $g$ 的连续性控制误差；对于 $X_n$ 逼近 $X$ 的部分，利用 $X_n \xrightarrow{\mathbb{P}} X$ 控制。

2.  **几乎处处收敛**：
    若 $X_n(\omega) \to X(\omega)$ 且 $X(\omega) \notin D_g$，则根据连续函数的定义，必有 $g(X_n(\omega)) \to g(X(\omega))$。由于几乎所有的 $\omega$ 都满足这两个条件，故得证。

3.  **依分布收敛**：
    通常利用 [[Wiki - Skorokhod表示定理]] 证明。由于 $X_n \stackrel{d}{\to} X$，存在另一概率空间上的 $\tilde{X}_n \stackrel{d}{=} X_n$ 和 $\tilde{X} \stackrel{d}{=} X$ 使得 $\tilde{X}_n \xrightarrow{\mathrm{a.e.}} \tilde{X}$。
    根据部分 (2)，有 $g(\tilde{X}_n) \xrightarrow{\mathrm{a.e.}} g(\tilde{X})$。这蕴含了 $g(\tilde{X}_n) \stackrel{d}{\to} g(\tilde{X})$，从而导出 $g(X_n) \stackrel{d}{\to} g(X)$。

## 注意事项与拓展

### Lp 收敛的例外
连续映射定理 **不适用于** [[Wiki - Lp收敛|Lp收敛]]。
即 $X_n \xrightarrow{L^p} X$ 一般推不出 $g(X_n) \xrightarrow{L^p} g(X)$。
*   **修正条件**：如果 $g$ 是 **Lipschitz 连续** 函数（或更一般地，具有某种增长性控制），则结论对 $L^p$ 收敛也成立。

### 多维推广
该定理可以自然推广到随机向量的情形。例如，若 $X_n \xrightarrow{\mathbb{P}} X$ 和 $Y_n \xrightarrow{\mathbb{P}} Y$，取 $g(x,y) = x+y$ 或 $g(x,y) = xy$，由于加法和乘法是连续函数，立即可得：
$$
X_n + Y_n \xrightarrow{\mathbb{P}} X + Y, \quad X_n Y_n \xrightarrow{\mathbb{P}} XY.
$$
这一性质常被称为 **代数运算的封闭性**。

### 相关定理
*   **[[Wiki - Slutsky引理]]**：是连续映射定理在处理“收敛项 + 常数收敛项”时的重要特例和推广。
*   **Delta 方法**：统计学中利用连续映射定理（及泰勒展开）推导估计量渐近分布的重要方法。
