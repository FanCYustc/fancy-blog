---
aliases:
  - Lyapunov条件
info: Lyapunov条件
date: 2025-12-17-星期三
update: 2025-12-17-星期三
tags:
  - wiki
  - 概率论/极限理论
---



## Def 1 Lyapunov 条件

设 $\{X_n\}_{n \ge 1}$ 为独立随机变量序列，$\mathbb{E}[X_k] = m_k$， $s_n^2 = \sum_{k=1}^n \operatorname{Var}(X_k)$。[[Wiki - 随机变量]]、[[Wiki - 数学期望]]、[[Wiki - 方差]]

如果存在 $\delta > 0$ 使得：
$$
\lim_{n \to \infty} \frac{1}{s_n^{2+\delta}} \sum_{k=1}^n \mathbb{E} \left[ |X_k - m_k|^{2+\delta} \right] = 0
$$
则称该序列满足 **Lyapunov 条件**。

## 关系
- **Lyapunov ==> Lindeberg**: 若满足 Lyapunov 条件，则一定满足 [[Wiki - Lindeberg中心极限定理]] 。

## The 1 Lyapunov 中心极限定理


对于**独立但不同分布**的随机变量序列 {X_n}，若满足 Lyapunov 条件，CLT 依然成立。

**定理 6.4 (Lyapunov CLT)**
设 $\{X_n\}$ 独立，$\mathbb{E}[X_n]=0$，记 $s_n^2 = \sum_{k=1}^n \operatorname{Var}(X_k)$。
若存在 $\delta > 0$ 使得满足 **Lyapunov 条件**：

$$ \lim_{n \to \infty} \frac{1}{s_n^{2+\delta}} \sum_{k=1}^n \mathbb{E}[|X_k|^{2+\delta}] = 0 $$

则 $\frac{1}{s_n} \sum_{k=1}^n X_k \xrightarrow{d} N(0, 1)$。[[Wiki - 依分布收敛]]

Lyapunov 条件比 Lindeberg 条件更强（意味着更容易验证，但适用范围稍窄）。[[Wiki - Lindeberg中心极限定理]]

[[Wiki - 中心极限定理]]

