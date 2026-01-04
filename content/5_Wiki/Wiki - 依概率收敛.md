---
aliases: [Convergence in Probability]
info: 依概率收敛的定义与性质
date: 2025-12-15-星期一 14:35
update: 2025-12-15-星期一 14:35
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
  - 收敛
id: wiki20231130141120
banner: "![[astrowalk.gif]]"
---

# 依概率收敛

**依概率收敛** (Convergence in Probability) 是概率论中一种重要的收敛模式，它描述了随机变量序列在“概率测度”意义下逼近目标随机变量的趋势。这种收敛比**几乎处处收敛**要弱，但比**依分布收敛**要强。

## 定义

### 实值随机变量

设 $\{X_{n}\}_{n\geqslant 1}$ 和 $X$ 为定义在同一概率空间 [[Wiki - 概率空间]] $(\Omega ,\mathcal{F},\mathbb{P})$ 上的一列实值随机变量 [[Wiki - 随机变量]]。如果对任意的 $\varepsilon >0$，都有

$$
\lim  _ {n \to \infty} \mathbb {P} \left(| X _ {n} - X | > \varepsilon \right) = 0,
$$

则称随机变量列 $\{X_{n}\}$ **依概率收敛**到随机变量 $X$。
记为：
$$
X _ {n} \xrightarrow {\mathbb {P}} X, \quad n \rightarrow \infty .
$$

### 一般度量空间

如果 $\{X_{n}\}_{n\geqslant 1}$ 和 $X$ 取值于度量空间 $(S,d)$ [[Wiki - 度量空间]]，依概率收敛定义为：

$$
\lim  _ {n \rightarrow \infty} \mathbb {P} (d (X _ {n}, X) > \varepsilon) = 0, \quad \forall \varepsilon > 0.
$$

特别地，在赋范空间 $(S, \| \cdot \|)$ [[Wiki - 赋范空间]]中，定义为 $\lim_{n \to \infty} \mathbb{P}(\|X_n - X\| > \varepsilon) = 0$。

## 判别准则

### 子列判别法 (Riesz 定理)

依概率收敛有一个非常实用的等价刻画，它建立了与几乎处处收敛的联系：

> **定理 5.3**：
> $X_{n}\xrightarrow{\mathbb{P}}X$ 当且仅当对任意 $\{X_n\}$ 的子列 $\{X_{n_k}\}$，都存在一个进一步的子列（子子列）$\{X_{n_{k_j}}\}$ 使得
> $$
> X_{n_{k_j}} \xrightarrow{\mathrm{a.e.}} X, \quad j \to \infty.
> $$
[[Wiki - 几乎处处收敛]]
这一性质常用于证明：若极限存在，则依概率收敛的极限是唯一的。

## 重要性质

### 1. 唯一性
依概率收敛的极限是**几乎处处唯一**的。
即：若 $X_{n} \xrightarrow{\mathbb{P}} X$ 且 $X_{n} \xrightarrow{\mathbb{P}} Y$，则 $\mathbb{P}(X = Y) = 1$。

### 2. 与其他收敛的关系
*   **几乎处处收敛 $\implies$ 依概率收敛**：
    若 $X_{n}\xrightarrow{\mathrm{a.e.}}X$，则 $X_{n}\xrightarrow{\mathbb{P}}X$。逆命题不成立。
*   **依概率收敛 $\implies$ 依分布收敛**：
    若 $X_{n}\xrightarrow{\mathbb{P}}X$，则 $X_{n}\xrightarrow{d}X$。[[Wiki - 依分布收敛]]
    *   *特例*：若 $X$ 为常数 $c$，则 $X_{n}\xrightarrow{\mathbb{P}}c \iff X_{n}\xrightarrow{d}c$。
*   **Lp 收敛 $\implies$ 依概率收敛**：
    若 $X_{n}\xrightarrow{L^p}X$ ($p \ge 1$)，则 $X_{n}\xrightarrow{\mathbb{P}}X$。[[Wiki - Lp收敛]]

### 3. 代数运算封闭性
若 $X_{n}\xrightarrow{\mathbb{P}}X$ 和 $Y_{n}\xrightarrow{\mathbb{P}}Y$，则：
*   **联合收敛**：$(X_n, Y_n) \xrightarrow{\mathbb{P}} (X, Y)$（这一点强于依分布收敛）。
*   **四则运算**：$X_n \pm Y_n \xrightarrow{\mathbb{P}} X \pm Y$，$X_n Y_n \xrightarrow{\mathbb{P}} XY$。
*   **连续映射**：对于任意连续函数 $g$，有 $g(X_n) \xrightarrow{\mathbb{P}} g(X)$（[[Wiki - 连续映射定理]]）。

### 4. 乘积性质 (练习 5.1)
若 $\{X_n\}$ 是依概率有界的（即 $\lim_{a \to \infty} \sup_n \mathbb{P}(|X_n| \ge a) = 0$），且 $Y_n \xrightarrow{\mathbb{P}} 0$，则：
$$
X_n Y_n \xrightarrow{\mathbb{P}} 0.
$$
