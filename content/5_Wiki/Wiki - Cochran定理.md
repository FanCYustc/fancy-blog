---
aliases: 
info: 
date: 2025-03-28-星期五 20:28
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 多元统计分析
  - 回归分析
id: wiki20250328202853
banner: "![[astrowalk.gif]]"
---
---

## The 1 Cochran 定理


假设 $\mathbf{z}_{1},...,\mathbf{z}_{m}$ iid $\sim N_{p}(\mathbf{0},\Sigma)$，$Z = (\mathbf{z}_{1},...,\mathbf{z}_{m})^{\mathsf{T}}$，若 $P$ 是 $m \times m$ 对称幂等常数矩阵 [[Wiki - 正交投影]]，$r = \text{rank}(P)$，则 $Z^{\mathsf{T}}P Z \sim W_{p}(r,\Sigma)$，$Z^{\mathsf{T}}(I_{m}-P)Z \sim W_{p}(m-r,\Sigma)$，且两者独立。

### Proof

引理：假设 $\mathbf{x} \sim N_{m}(0,I_{m})$，$P$ 是秩为 $r$ 的 $m \times m$ 投影矩阵（对称幂等矩阵），则 $\mathbf{x}^{\mathsf{T}}P\mathbf{x} \sim \chi_{r}^{2}$，$\mathbf{x}^{\mathsf{T}}(I_{m}-P)\mathbf{x} \sim \chi_{m-r}^{2}$，且两者独立。

[[Wiki - 投影矩阵的性质]]

## The 2 Cochran 定理 II

**Cochran 定理 II**: 假设 $\mathbf{z}_{1},...,\mathbf{z}_{m} \sim N_{p}(\mathbf{0},\Sigma)$，$Z = (\mathbf{z}_{1},...,\mathbf{z}_{m})^{\mathsf{T}}$，若 $A$ 是 $m \times m$ 对称常数矩阵，$r = \text{rank}(A)$，则 $A$ 对称幂等 $\Leftrightarrow Z^{\mathsf{T}}A Z \bot Z^{\mathsf{T}}(I_{m}-A)Z \Leftrightarrow Z^{\mathsf{T}}A Z \sim W_{p}(r,\Sigma)$，$Z^{\mathsf{T}}(I_{m}-A)Z \sim W_{p}(m-r,\Sigma)$。

