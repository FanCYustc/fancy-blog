---
aliases: 
info: 
date: 2025-03-28-星期五 20:21
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 回归分析
  - 数理统计/统计量
id: wiki20250328202108
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 样本协方差矩阵的分布

假设 $\mathbf{x}_{1},...,\mathbf{x}_{n}$ iid $\sim N_{p}(\boldsymbol{\mu},\Sigma)$ [[Wiki - 多元正态分布]]，$S$ 为样本协方差矩阵，则 $W = (n-1)S \sim W_{p}(n-1,\Sigma)$。

[[Wiki - 协方差矩阵]]

[[Scientech - 回归分析-相关分析]]
### Proof

令 $\mathbf{z}_{i} = \mathbf{x}_{i} - \boldsymbol{\mu} \sim N_{p}(\mathbf{0},\Sigma)$，$Z = (\mathbf{z}_{1},...,\mathbf{z}_{n})^{\mathsf{T}}$，则 $(n-1)S = Z^{\mathsf{T}}(I_{n}-P_{1})Z$。由 Cochran 定理，$(n-1)S \sim W_{p}(n-1,\Sigma)$。[[Wiki - Wishart分布的性质#The 1 Cochran 定理]]

