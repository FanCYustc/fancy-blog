---
aliases:
  - Group Character
info: Stein Fourier Analysis Chapter 7.2.2
date: 2025-12-23-星期二 16:16:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 抽象代数/群论
id: wiki20251223161600
banner: "![[astrowalk.gif]]"
---

# 群特征

设 $G$ 是一个有限 Abel 群。$G$ 上的一个**特征 (Character)** 是一个满足下列条件的复值函数 $e: G \to S^1$（即 $|e(a)|=1$）：
$$ e(a \cdot b) = e(a) e(b), \quad \forall a, b \in G $$

换句话说，特征是从群 $G$ 到复数单位圆群 $S^1$ 的一个同态。

## 性质
*   $e(1) = 1$，其中 $1$ 是 $G$ 的单位元。
*   $e(a^{-1}) = e(a)^{-1} = \overline{e(a)}$。
*   **平凡特征**: 定义为 $e_0(a) = 1, \forall a \in G$。
*   $\mathbb{Z}(N)$ 上的特征恰好是 $e_\ell(k) = e^{2\pi i \ell k / N}$，这与离散傅里叶变换的基函数一致。[[Wiki - Z(N)群]]

## Pro 2 正交性定理

在有限 Abel 群 [[Wiki - 有限Abel群]] $G$ 上，特征系 $\hat{G}$ [[Wiki - 群特征]]构成函数空间 $V$ 的一组正交基。[[Wiki - 内积空间的正交基]]

定义 $V$ 上的 Hermitian 内积 [[Wiki - 酉空间]] ：
$$ (f, g) = \frac{1}{|G|} \sum_{a \in G} f(a) \overline{g(a)} $$


群 $G$ 的特征满足如下正交关系：
$$ (e_i, e_j) = \begin{cases} 1 & \text{if } e_i = e_j \\ 0 & \text{if } e_i \neq e_j \end{cases} $$

这意味着特征在上述内积定义下是**标准正交**的。特别地，对于非平凡特征 $e \neq e_0$，有 $\sum_{a \in G} e(a) = 0$。

[[Wiki - 内积空间的正交基]]
