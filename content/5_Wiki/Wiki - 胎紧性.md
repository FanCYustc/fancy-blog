---
aliases:
  - Tightness
  - 一致胎紧
info: 概率测度主要集中在紧集上的性质
date: 2025-12-15-星期一 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
id: wiki20251215142001
banner: "![[astrowalk.gif]]"
---

# 胎紧性 (Tightness)

**胎紧性** 是概率测度理论中的一个核心概念，描述了概率测度的质量是否“主要集中”在紧集上。对于概率测度族而言，**一致胎紧性** 是证明弱收敛子列存在的关键条件（Prokhorov 定理）。

## 定义

### 单个概率测度的胎紧性
设 $S$ 为拓扑空间，$\mu$ 是 $S$ 上的 Borel 概率测度 [[Wiki - 概率测度]]。如果对任意 $\varepsilon > 0$，存在一个 **紧集**[[Wiki - 紧致集合]] $K_\varepsilon \subset S$ 使得：
$$
\mu(K_\varepsilon^c) < \varepsilon \quad (\text{即 } \mu(K_\varepsilon) \ge 1 - \varepsilon)
$$
则称 $\mu$ 是 **胎紧的** (tight)。

*   **Polish 空间上的性质**: 
    *   **定理 5.16**: 如果 $S$ 是 **Polish 空间**（完备可分度量空间），则 $S$ 上的任意 Borel 概率测度都是胎紧的。[[Wiki - 度量空间的完备性]]、[[Wiki - 度量空间的稠密性|度量空间的可分性]]
    *   这意味着在 $\mathbb{R}^n$ 等常见空间中，任何概率分布都是胎紧的。

### 概率测度族的一致胎紧性
设 $\mathcal{M} \subset \mathcal{P}(S)$ 是一族概率测度。如果对任意 $\varepsilon > 0$，存在一个 **紧集** $K_\varepsilon \subset S$ 使得：
$$
\sup_{\mu \in \mathcal{M}} \mu(K_\varepsilon^c) < \varepsilon
$$
则称 $\mathcal{M}$ 是 **一致胎紧的** (uniformly tight)。

*   **直观理解**: 这一族测度“不会逃逸到无穷远处”。无论选族里的哪个测度，其绝大部分质量都跑不出同一个紧集 $K_\varepsilon$ 的范围。

## 判别准则

### 实数空间 $\mathbb{R}^n$
在 $\mathbb{R}^n$ 上，一致胎紧性等价于 **依概率有界**。
具体判别条件:
$$
\lim_{R \to \infty} \sup_{\mu \in \mathcal{M}} \mu(\{x : |x| > R\}) = 0
$$
或者对于随机变量序列 $\{X_n\}$ ：
$$
\lim_{M \to \infty} \sup_{n} \mathbb{P}(|X_n| > M) = 0
$$

### 函数空间 $C([0,1])$
在连续函数空间上，一致胎紧性需要利用 **Arzelà-Ascoli 定理**
一个充分条件是:
1.  **一点有界**: $\sup_n \mathbb{P}(|X_n(0)| > M) \to 0$
2.  **等度连续 (随机意义)**: 例如满足 Hölder 条件的概率控制。

[[Wiki - 一致等度连续]]
## 重要定理

*   **[[Wiki - Prokhorov定理]]**: 在 Polish 空间中，概率测度族 $\mathcal{M}$ 在弱拓扑下是 **相对紧 (Relatively Compact)** 的 $\iff$ $\mathcal{M}$ 是 **一致胎紧** 的。
    *   这提供了寻找弱收敛子列的强大工具：只需验证一致胎紧性。

## 相关概念
*   **[[Wiki - 弱收敛]]**
*   **[[Wiki - 随机变量一致可积]]**: 这是一个更强的概念，不仅控制质量逃逸，还控制尾部积分。
