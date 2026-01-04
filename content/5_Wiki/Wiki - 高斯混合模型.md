---
aliases:
  - 高斯混合模型
  - GMM
info:
date: 2025-12-10-星期三 16:15
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/非监督学习
  - 统计学习
  - 概率论
  - 统计算法
id: wiki20251210161500
banner: "![[astrowalk.gif]]"
---
---

## Def 1 混合模型 (Mixture Model)

混合模型是一种概率模型，用于表示总体分布由若干个子分布（组分）混合而成。
最常见的是 **高斯混合模型 (Gaussian Mixture Model, GMM)**：
$$
f(x) = \sum_{m=1}^M \alpha_m \phi(x; \mu_m, \mathbf{\Sigma}_m)
$$
其中 $\alpha_m$ 是混合比例（$\sum \alpha_m = 1$），$\phi$ 是高斯密度函数。

## Pro 1 应用与求解

### 密度估计与聚类
-   **密度估计**：混合模型可以看作是一种半参数的密度估计方法，比单一高斯分布灵活，比 [[Wiki - 核平滑器]]（非参数）更平滑且参数更少。
-   **软聚类**：通过计算后验概率 $\hat{\gamma}_{im}$（观测 $x_i$ 属于组分 $m$ 的概率），可以实现软聚类。

### 求解算法
混合模型的参数通常使用 **[[Wiki - EM算法]]** (Expectation-Maximization) 进行极大似然估计。
1.  **E步**：计算后验概率（Responsibility）。
2.  **M步**：根据后验概率加权更新参数 $\mu_m, \mathbf{\Sigma}_m, \alpha_m$。

参见：[[Wiki - 核平滑器]], [[Wiki - 极大似然估计]]

