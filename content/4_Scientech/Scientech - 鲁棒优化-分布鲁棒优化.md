---
aliases:
info: 鲁棒优化第4章
date: 2025-12-11-星期四 10:45:01
update:
tags:
  - scientech/year2025
  - scientech/month12
  - 优化
  - 鲁棒优化
id: scientech20251211104501
banner: "![[astrogate.gif]]"
---
# 鲁棒优化入门-分布鲁棒

## 1. 从参数不确定性到分布不确定性

在经典鲁棒优化中，我们假设参数 $z$ 落在某个几何形状的集合 $\mathcal{U}$ 中。然而，在许多数据驱动的场景下，我们不仅关心参数的取值范围，还拥有部分观测数据，能够推断出参数服从某种概率分布 $P$。

**[[Wiki - 分布鲁棒优化]] (Distributionally Robust Optimization, DRO)** 结合了随机规划和鲁棒优化的优点：
- 它假设真实的概率分布 $P$ 未知，但属于一个**模糊集 (Ambiguity Set)** $\mathcal{D}$。
- 目标是在模糊集中最坏的分布 $P \in \mathcal{D}$ 下，最小化期望成本：
  $$ \min_{x} \sup_{P \in \mathcal{D}} \mathbb{E}_P [h(x, z)] $$

## 2. 模糊集的构建方法

构建合适的模糊集是 DRO 的核心。一个好的模糊集应该包含真实的分布（以高概率），同时使优化问题易于求解。

### 2.1 基于矩的模糊集 (Moment-based Ambiguity Set)
这是早期 DRO 的主流方法，由 Scarf (1958) 开创，Delage 和 Ye (2010) 进行了完善。
- **定义**：[[Wiki - 矩模糊集]] 包含所有满足特定矩约束（如均值、协方差）的分布。
- **特点**：利用已知的统计量（通过历史数据估计）来约束分布。通常可以将 DRO 问题转化为半定规划 (SDP)。

### 2.2 基于统计距离的模糊集 (Metric-based Ambiguity Set)
随着现代概率理论的发展，基于统计距离定义模糊集变得流行。这类集合包含所有与参考分布（通常是经验分布 $\hat{P}_N$）距离小于 $\epsilon$ 的分布。

#### Phi-散度 (Phi-divergence)
- 使用如 KL 散度、卡方距离等 [[Wiki - Phi散度模糊集]]。
- 这类模型在处理重尾分布或特定似然比约束时非常有效，其鲁棒对等式通常涉及凸优化。

#### Wasserstein 距离
- **定义**：[[Wiki - Wasserstein模糊集]] 基于 Wasserstein 距离（也被称为推土机距离 Earth Mover's Distance）。它衡量将一个分布“搬运”到另一个分布所需的最小成本。
- **优势**：
    1.  **有限样本保证**：Wasserstein 球包含真实分布的置信度可以被严格量化。
    2.  **数据驱动**：天然适合以经验分布为中心的场景。
    3.  **计算性质**：在特定条件下（如风险中性目标），Wasserstein DRO 可以转化为计算上可行的线性规划或正则化问题。
