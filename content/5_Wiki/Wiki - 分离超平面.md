---
aliases:
info:
date: 2025-12-10-星期三 14:45
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性分类
  - 统计学习
  - 凸优化
id: wiki20251210144500
banner: "![[astrowalk.gif]]"
---

## Def 1 分离超平面 (Separating Hyperplane)

分离超平面是指在 $p$ 维空间中，能够将两个不同类别的数据点完全分开的线性决策边界（超平面）[[Wiki - 超平面]]。
超平面方程通常定义为：
$$
f(x) = \beta_0 + \beta^T x = 0
$$
如果对于所有满足 $y_i=1$ 的样本都有 $\beta_0 + \beta^T x_i > 0$，且对于所有 $y_i=-1$ 的样本都有 $\beta_0 + \beta^T x_i < 0$，则称该超平面将两类数据分离。

## Alg 1 寻找分离超平面的算法

### 1. Rosenblatt 感知器 (Perceptron)
[[Wiki - 感知机]] 算法旨在通过最小化误分类点到超平面的距离之和来寻找分离超平面。
$$
D(\beta, \beta_0) = - \sum_{i \in \mathcal{M}} y_i (x_i^T \beta + \beta_0)
$$
其中 $\mathcal{M}$ 是误分类点的集合。通过随机梯度下降法进行更新。如果数据线性可分，感知器算法保证在有限步内收敛。

### 2. 最优分离超平面 (Optimal Separating Hyperplane)
为了解决感知器解不唯一的问题，Vapnik 提出了最优分离超平面，即最大化**间隔 (Margin)** 的超平面。
$$
\max_{\beta, \beta_0, \|\eta\|=1} M \quad \text{subject to} \quad y_i(x_i^T \beta + \beta_0) \geq M, \forall i
$$
这导出了 **[[Wiki - 支持向量机]]** (SVM) 的概念，通过仅依赖于支持向量（落在间隔边界上的点）来确定超平面，具有很好的鲁棒性。

参见：[[Wiki - 线性判别分析]], [[Wiki - 逻辑斯蒂回归]]

[[Wiki - 承托超平面]]