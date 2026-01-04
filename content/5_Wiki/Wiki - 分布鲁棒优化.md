---
aliases:
  - Distributionally Robust Optimization
  - DRO
info: 结合了随机规划与鲁棒优化，针对概率分布的不确定性进行建模
date: 2025-12-11-星期四 10:51:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化/分布鲁棒优化
id: wiki20251211105100
banner: "![[astrowalk.gif]]"
---

# 分布鲁棒优化 (Distributionally Robust Optimization)

## 定义
**分布鲁棒优化 (Distributionally Robust Optimization, DRO)** 是一种集成随机规划（Stochastic Programming）和鲁棒优化（Robust Optimization）优势的建模范式。它假设随机参数的真实概率分布 $\mathbb{P}$ 是未知的，但属于一个确定的分布集合——**模糊集 (Ambiguity Set, $\mathcal{F}$)** 中。

DRO 的目标是寻找一个决策 $\pmb{x}$，使得在模糊集中最坏的概率分布下，目标函数的期望值最小化：
$$ 
\min_{\pmb{x} \in \mathcal{X}} \left\{ \sup_{\mathbb{P} \in \mathcal{F}} \mathbb{E}_{\mathbb{P}} [f(\pmb{x}, \xi)] \right\} 
$$
[[Wiki - 数学期望]]
## 核心组件：模糊集 (Ambiguity Set)
模糊集 $\mathcal{F}$ 包含了所有与已知统计信息（如历史数据、矩信息）相容的概率分布。常见的构建方式包括：
1.  **基于矩 (Moment-based)**：包含所有满足特定矩（如均值、协方差）约束的分布。见 [[Wiki - 矩模糊集]]。
2.  **基于统计距离 (Statistical Distance-based)**：包含所有与经验分布距离（如 Wasserstein 距离、$\phi$-散度）在一定范围内的分布。见 [[Wiki - Wasserstein模糊集]] 和 [[Wiki - Phi散度模糊集]]。

## 与其他方法的联系
- **与随机规划 (SP)**：当模糊集只包含一个分布（即 $\mathcal{F} = \{\mathbb{P}_0\}$）时，DRO 退化为传统的随机规划。
- **与鲁棒优化 (RO)**：当模糊集包含支撑集上的所有可能的狄拉克分布（Dirac measures）时，DRO 类似于针对支撑集的最坏情况分析，即经典的鲁棒优化 [[Wiki - 鲁棒优化]]。

## 优势
1.  **数据驱动 (Data-driven)**：能够直接利用历史数据构建模糊集（例如通过 Wasserstein 球）。
2.  **克服过拟合**：相比于直接使用经验分布的随机规划（SAA 方法），DRO 考虑了分布的扰动，对训练数据中的噪声具有更强的免疫力（Out-of-sample performance 更好）。
3.  **概率保证**：能够提供在置信水平下的性能保证。
