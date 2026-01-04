---
aliases:
  - LARS
  - Least Angle Regression
info:
date: 2025-12-10-星期三 13:40
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性回归
  - 统计学习
  - 算法
id: wiki20251210134000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 最小角回归 (Least Angle Regression, LARS)

最小角回归（LARS）是一种用于高维数据线性回归 [[Wiki - 多元线性回归模型]]的高效模型选择算法，由 Efron 等人于 2004 年提出。它可以看作是向前逐步回归（Forward Stepwise Regression）的一种“民主”版本。

LARS 能够高效地计算 [[Wiki - Lasso]] 的整个正则化路径。

## Alg 1 算法流程

1.  **初始化**：所有系数 $\beta_j = 0$，残差 $\mathbf{r} = \mathbf{y} - \bar{\mathbf{y}}$。
2.  **寻找最相关变量**：找出与当前残差 $\mathbf{r}$ 相关性[[Wiki - Pearson相关系数]]（绝对值）最大的预测变量 $\mathbf{x}_j$。
3.  **沿角平分线移动**：将系数 $\beta_j$ 从 0 向最小二乘方向移动，直到另一个预测变量 $\mathbf{x}_k$ 与当前残差的相关性等于 $\mathbf{x}_j$ 与残差的相关性。
4.  **加入活跃集**：此时，残差沿着 $\mathbf{x}_j$ 和 $\mathbf{x}_k$ 的角平分线方向移动（保持与两者相关性相等且递减），直到第三个变量进入。
5.  **重复**：重复上述过程，直到所有变量都进入模型，或达到预设条件。

## Pro 1 性质与 Lasso 的联系

-   **计算效率**：LARS 计算整个路径的复杂度与单次最小二乘拟合相当，即 $O(Np^2)$ 或 $O(N^2p)$，非常高效。
-   **与 Lasso 的关系**：LARS 算法经过微小修改即可生成 Lasso 路径。
    -   **Lasso 修正**：如果在移动过程中，某个非零系数变为 0，则将其从活跃集中移除，并重新计算方向。加上这个规则后，LARS 算法给出的就是 Lasso 的所有解路径。
-   **分段线性**：LARS 和 Lasso 的系数路径 $\beta(\lambda)$ 都是 $\lambda$ 的分段线性函数。

参见：[[Wiki - Lasso]], [[Wiki - 岭回归]]
