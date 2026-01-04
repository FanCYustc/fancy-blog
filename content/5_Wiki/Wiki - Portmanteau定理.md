---
aliases: [Portmanteau Theorem, 弱收敛等价条件]
info: 概率测度弱收敛的多个等价刻画
date: 2025-12-15-星期一 14:15
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
id: wiki20251215141501
banner: "![[astrowalk.gif]]"
---

# Portmanteau 定理

**Portmanteau 定理** 提供了度量空间上概率测度 **[[Wiki - 弱收敛]] (Weak Convergence)** 的多个等价定义。它像一个旅行箱 (Portmanteau) 一样，装入了各种不同形式的判别条件。

## 定理表述

设 $(S, d)$ 是一个度量空间 [[Wiki - 度量空间]]，$\{\mu_n\}_{n \ge 1}$ 和 $\mu$ 是 $S$ 上的概率测度 [[Wiki - 概率测度]]。以下条件是等价的：

1.  **定义 (有界连续函数)**: 
    $$ 
    \mu_n \Longrightarrow \mu \quad (\text{即 } \forall f \in C_b(S), \mu_n(f) \to \mu(f))
    $$ 
2.  **有界一致连续函数**: 
    $$ 
    \forall f \in UC_b(S), \quad \mu_n(f) \to \mu(f)
    $$ 
    *(注: $UC_b(S)$ 为有界一致连续函数集)*[[Wiki - 度量空间上的一致连续性]]
3.  **有界 Lipschitz 函数**:
    $$ 
    \forall f \in \text{Lip}_b(S), \quad \mu_n(f) \to \mu(f)
    $$ 
4.  **闭集 (上极限)**: 
    $$ 
    \forall \text{ 闭集 } F \subset S, \quad \limsup_{n \to \infty} \mu_n(F) \le \mu(F)
    $$ 
    *(直观理解：质量不会“逃逸”进闭集，或者说极限测度在闭集上的质量是上限)*
5.  **开集 (下极限)**: 
    $$ 
    \forall \text{ 开集 } G \subset S, \quad \liminf_{n \to \infty} \mu_n(G) \ge \mu(G)
    $$ 
    *(直观理解：极限测度在开集上的质量是下限)*
6.  **连续集 (极限)**: 
    $$ 
    \forall A \in \mathcal{B}_S \text{ 且 } \mu(\partial A) = 0, \quad \lim_{n \to \infty} \mu_n(A) = \mu(A)
    $$ 
    *(注: $\partial A$ 为边界，$\mu(\partial A)=0$ 的集合称为 $\mu$-连续集)*

## 随机变量形式

若 $X_n \sim \mu_n, X \sim \mu$，则上述条件等价于 $X_n \xrightarrow{d} X$。
例如条件 6 等价于：对于任意 Borel 集合 $A$，若 $\mathbb{P}(X \in \partial A) = 0$，则 $\mathbb{P}(X_n \in A) \to \mathbb{P}(X \in A)$。

## 证明思路

*   $(1) \implies (2) \implies (3)$: 显然，因为函数类包含关系 $C_b \supset UC_b \supset \text{Lip}_b$。
*   $(3) \implies (4)$: 通过构造 Lipschitz 函数逼近闭集的指示函数 $\mathbb{1}_F$（例如 $f_k(x) = (1 - k d(x, F))^+$）。
*   $(4) \iff (5)$: 利用补集关系 $G = F^c$。
*   $(4) + (5) \implies (6)$: 结合开集下界和闭集上界，利用 $\overline{A}$ 和 $A^\circ$ 逼近 $A$。
*   $(6) \implies (1)$: 利用积分定义的阶梯函数逼近，或者利用 Skorokhod 表示定理。

## 重要意义

Portmanteau 定理说明了弱收敛并不要求对所有集合的概率都收敛（这太强了），而只要求对那些边界“不重要”（边界测度为 0）的集合收敛。这使得弱收敛在处理离散分布逼近连续分布时非常有效。
