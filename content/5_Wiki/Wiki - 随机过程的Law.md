---
aliases:
info:
date: 2025-12-19-星期五 12:10
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程
id: wiki20251219121000
banner: "![[astrowalk.gif]]"
---
# Wiki - 随机过程的Law

## 1. 定义

给定概率空间 [[Wiki - 概率空间]] $(\Omega, \mathcal{F}, P)$ 上的随机过程 $X = \{X_t : t \in [0, \infty)\}$，假设其轨道几乎必然属于某个函数空间 $S$（例如连续函数空间 $C[0, \infty)$）。

$X$ 可以被视为从样本空间 $\Omega$ 到路径空间 $S$ 的一个可测映射：
$$
X: \omega \mapsto X_\cdot(\omega) \in S
$$
这个映射在 $S$ 上诱导出的概率测度 [[Wiki - 概率测度]] $\mu_X$ 称为该**随机过程的 Law（分布/法则）**：
$$
\mu_X(B) = P(\{\omega : X_\cdot(\omega) \in B\}), \quad \forall B \in \mathcal{B}(S)
$$

## 2. 唯一性

对于连续时间随机过程，如果路径空间配备了柱集 $\sigma$ -代数（对于 $C[0, \infty)$ 即为 borel 代数 [[Wiki - σ-代数]]），则随机过程的 Law **唯一地由其所有有限维分布决定**。

## 3. 例子

*   **[[Wiki - Wiener测度]]**：标准布朗运动的 Law 是 $C[0, \infty)$ 上的 Wiener 测度。任何标准布朗运动，无论定义在哪个概率空间上，其诱导出的 Law 都是 Wiener 测度。
