---
aliases: 
info: 
date: 2025-06-17-星期二 21:47
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 多元统计分析/主成分分析
  - 线性代数/矩阵
id: wiki20250617214756
banner: "![[astrowalk.gif]]"
---
---

## The 1 Eckart-Young-Mirsky 定理

```ad-theorem
title: Eckart-Young-Mirsky 定理

设 $A \in \mathbb{R}^{m \times n}$ 是秩为 $r$ 的实矩阵，其奇异值分解为 $A = U\Sigma V^T$，其中 $\Sigma = \text{diag}(\sigma_1, \cdots, \sigma_r)$ 满足 $\sigma_1 \geq \sigma_2 \geq \cdots \geq \sigma_r > 0$。对任意 $k < r$，逼近问题：
$$
\min_{\text{rank}(B) \leq k} \| A - B \|_F
$$
的解为 $B_k = U_k \Sigma_k V_k^T$，其中：
- $U_k$：$U$ 的前 $k$ 列
- $\Sigma_k = \text{diag}(\sigma_1, \cdots, \sigma_k)$
- $V_k$：$V$ 的前 $k$ 列

此时误差满足：
$$
\| A - B_k \|_F = \sqrt{\sum_{i=k+1}^r \sigma_i^2}
$$
对谱范数 $\|\cdot\|_2$ 同样成立：
$$
\min_{\text{rank}(B) \leq k} \| A - B \|_2 = \sigma_{k+1}
$$
```

[[Wiki - 矩阵的秩]]

**注释**：
1. $\bullet$ 该定理确立了 [[Wiki - 矩阵的奇异值分解]] 在低秩逼近中的最优性
2. $\bullet$ 谱范数误差 $\sigma_{k+1}$ 是矩阵 $A$ 的第 $(k+1)$ 大奇异值

[[Wiki - 主成分分析]]

