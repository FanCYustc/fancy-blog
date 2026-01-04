---
aliases: [Ellipsoidal Uncertainty Set]
info: 基于L2范数或马哈拉诺比斯距离定义的不确定集，能够刻画参数相关性
date: 2025-12-11-星期四 10:48:00
update: 
tags: [wiki/year2025, wiki/month12, 优化, 鲁棒优化]
id: wiki20251211104800
banner: "![[astrowalk.gif]]"
---

# 椭球不确定集 (Ellipsoidal Uncertainty Set)

## 定义
**椭球不确定集 (Ellipsoidal Uncertainty Set)** 利用椭球几何形状来描述参数的不确定性。相比于[[Wiki - 盒式不确定集]]，它能够有效地捕捉参数之间的**相关性 (Correlation)**。

其一般形式定义为：
$$ 
\mathcal{U} = \left\{ z : (z - \pmb{\mu})^{\top} \Sigma^{-1} (z - \pmb{\mu}) \leq \Omega^2 \right\}
$$
或者基于 $L_2$ 范数的简化形式：
$$ 
\mathcal{U} = \{ z : \|z\|_2 \leq \Omega \}
$$
其中：
- $\pmb{\mu}$ 是标称值（期望向量）。
- $\Sigma$ 是协方差矩阵（描述相关性）。
- $\Omega$ 是不确定度参数（描述椭球的大小）。

## 变体：椭球交集 (Ellipsoidal Intersection)
Ben-Tal et al. (2009) 区分了单一椭球集和**椭球交集**。椭球交集是指参数同时满足多个椭球约束，或者是一个椭球约束与其他约束（如盒式约束）的交集。
$$ 
\mathcal{U} = \mathcal{U}_{box} \cap \mathcal{U}_{ellipsoid}
$$
这通常用于结合盒式约束的有界性和椭球约束的相关性。

## 特点
1.  **相关性**：通过协方差矩阵 $\Sigma$ [[Wiki - 协方差矩阵]]，可以建模参数间的正负相关关系。
2.  **保守性适中**：相比盒式不确定集，它切去了角落里极不可能发生的极端情况（所有参数同时取极值），因此保守性较低。
3.  **计算复杂度**：其[[Wiki - 鲁棒对等式]]通常导向**二阶锥规划 (SOCP)**。虽然比线性规划复杂，但对于现代求解器（如 Gurobi, Mosek）而言仍然是高效可解的。
    - *注意*：Ben-Tal 指出，某些复杂的“椭球交集”可能会导致问题变为 NP-hard，需要特定的近似方法。

## 鲁棒对等式转化
对于线性约束 $\pmb{a}^{\top} \pmb{x} \leq b$，若 $\pmb{a} \sim \mathcal{U}(\pmb{\bar{a}}, \Sigma, \Omega)$，其鲁棒对等式为：
$$ 
\bar{\pmb{a}}^{\top} \pmb{x} + \Omega \sqrt{\pmb{x}^{\top} \Sigma \pmb{x}} \leq b
$$
即：
$$ 
\bar{\pmb{a}}^{\top} \pmb{x} + \Omega \|\Sigma^{1/2} \pmb{x}\|_2 \leq b
$$
这是一个典型的二阶锥约束 (SOC constraint)。

