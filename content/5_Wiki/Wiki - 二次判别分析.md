---
aliases:
  - QDA
  - Quadratic Discriminant Analysis
info:
date: 2025-12-10-星期三 14:35
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性分类
  - 统计学习
id: wiki20251210143500
banner: "![[astrowalk.gif]]"
---

## Def 1 二次判别分析 (Quadratic Discriminant Analysis, QDA)

二次判别分析（QDA）是 [[Wiki - 线性判别分析]] 的推广。它依然假设各类别的条件概率密度服从多元正态分布[[Wiki - 多元正态分布]]，但**不假设**各类别具有相同的协方差矩阵，即允许 $\mathbf{\Sigma}_k$ 各不相同。

此时，判别函数为：
$$
\delta_k(x) = -\frac{1}{2} \log |\mathbf{\Sigma}_k| - \frac{1}{2} (x - \mu_k)^T \mathbf{\Sigma}_k^{-1} (x - \mu_k) + \log \pi_k
$$
由于包含 $x$ 的二次项，判别边界 $\delta_k(x) = \delta_l(x)$ 是二次曲面，因此称为二次判别分析。

[[Wiki - 协方差矩阵]]
## Pro 1 性质与比较

- **灵活性**：QDA 比 LDA 更灵活，可以适应更复杂的判别边界。
- **参数数量**：QDA 需要为每个类别估计一个协方差矩阵，参数数量随着特征维度 $p$ 的增加呈平方级增长（约为 $K \times p^2/2$）。这使得 QDA 在高维数据下容易过拟合，且计算开销更大。
- **正则化判别分析 (RDA)**：为了在 LDA（高偏差、低方差）和 QDA（低偏差、高方差）之间取得平衡，可以使用正则化判别分析，对协方差矩阵进行收缩：
  $$ 
  \hat{\mathbf{\Sigma}}_k(\alpha) = \alpha \hat{\mathbf{\Sigma}}_k + (1-\alpha) \hat{\mathbf{\Sigma}} 
  $$ 
  其中 $\hat{\mathbf{\Sigma}}$ 是 LDA 中的合并协方差矩阵。

参见：[[Wiki - 线性判别分析]]
