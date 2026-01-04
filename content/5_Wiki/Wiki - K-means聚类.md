---
aliases: 
info: 
date: 2025-06-11-星期三 17:12
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 机器学习
  - 聚类分析
id: wiki20250611171219
banner: "![[astrowalk.gif]]"
---
---

## Def 1 K-means 聚类算法

```ad-definition
title: K-means聚类定义

给定样本集 $D = \{\boldsymbol{x}_1, \boldsymbol{x}_2, \dots, \boldsymbol{x}_m\}$，其中 $\boldsymbol{x}_i \in \mathbb{R}^n$。K-means 算法旨在将样本划分为 $k$ 个互斥簇 $\mathcal{C} = \{C_1, C_2, \dots, C_k\}$，最小化平方误差：
$$E = \sum_{i=1}^k \sum_{\boldsymbol{x} \in C_i} \|\boldsymbol{x} - \boldsymbol{\mu}_i\|^2$$
其中 $\boldsymbol{\mu}_i = \frac{1}{|C_i|}\sum_{\boldsymbol{x} \in C_i} \boldsymbol{x}$ 是簇 $C_i$ 的均值向量。
```

```ad-proposition
title: K-means算法流程

1. **初始化**：随机选择 $k$ 个样本作为初始聚类中心 $\boldsymbol{\mu}^{(0)}_1, \dots, \boldsymbol{\mu}^{(0)}_k$
2. **迭代直至收敛**：
   - **分配步骤**：将每个样本分配到最近中心的簇
     $$C_i^{(t)} = \left\{ \boldsymbol{x} : \|\boldsymbol{x} - \boldsymbol{\mu}_i^{(t)}\|^2 \leq \|\boldsymbol{x} - \boldsymbol{\mu}_j^{(t)}\|^2, \forall j \neq i \right\}$$
   - **更新步骤**：重新计算簇中心
     $$\boldsymbol{\mu}_i^{(t+1)} = \frac{1}{|C_i^{(t)}|} \sum_{\boldsymbol{x} \in C_i^{(t)}} \boldsymbol{x}$$
3. **输出**：最终簇划分 $\mathcal{C} = \{C_1, \dots, C_k\}$
```

**数学性质**：
- 收敛性：目标函数 $E$ 单调递减，有限步收敛至局部最优
- 复杂度：每轮迭代 $O(mnk)$，$m$ 为样本数，$n$ 为维度
- 超参数：$k$ 值通过肘部法则确定 $\min_k \left[ E(k) + \alpha k \right]$

**注意事项**：
1. 对初始中心敏感，常用 K-means++初始化
2. 假设簇为凸形且方差相近
3. 需数据标准化：$\tilde{x}_{ij} = \frac{x_{ij} - \mu_j}{\sigma_j}$

