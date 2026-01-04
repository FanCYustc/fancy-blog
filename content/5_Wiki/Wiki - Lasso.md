---
aliases:
info:
date: 2025-12-10-星期三 13:35
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性回归
  - 统计学习
id: wiki20251210133500
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Lasso (Least Absolute Shrinkage and Selection Operator)

Lasso 是一种兼具收缩（shrinkage）和变量选择（selection）功能的线性回归方法。它通过对回归系数施加 $L_1$ 范数惩罚来实现稀疏解。

优化目标为：
$$
\hat{\beta}^{lasso} = \underset{\beta}{\text{argmin}} \left\{ \frac{1}{2}\sum_{i = 1}^{N} \left( y_{i} - \beta_{0} - \sum_{j = 1}^{p} x_{i j} \beta_{j} \right)^{2} + \lambda \sum_{j = 1}^{p} |\beta_{j}| \right\}
$$
或者等价的约束形式：
$$
\hat{\beta}^{lasso} = \underset{\beta}{\text{argmin}} \sum_{i = 1}^{N} \left( y_{i} - \beta_{0} - \sum_{j = 1}^{p} x_{i j} \beta_{j} \right)^{2} \quad \text{subject to} \sum_{j = 1}^{p} |\beta_{j}| \leq t
$$
[[Wiki - 线性回归模型]]
## Pro 1 稀疏性与几何解释

### 稀疏性 (Sparsity)
与 [[Wiki - 岭回归]] 不同，Lasso 采用 $L_1$ 惩罚 ($\sum |\beta_j|$)。由于 $L_1$ 球（菱形）在坐标轴上具有尖角，当残差平方和的等高线切到约束区域时，往往会切在坐标轴上，从而使得某些系数 $\beta_j$ **精确地等于 0**。这使得 Lasso 能够自动进行变量选择。

### 计算求解
Lasso 目标函数是凸的但不可导（在 0 处），因此没有像岭回归那样的封闭解析解。常用的求解算法包括：
- **LARS (最小角回归)**[[Wiki - 最小角回归]] ：可以高效地计算 Lasso 的整个正则化路径。
- **坐标下降法 (Coordinate Descent)**：固定其他变量，对单一变量进行优化，循环迭代。

### 贝叶斯解释
Lasso 估计可以看作是当回归系数 $\beta$ 服从独立拉普拉斯（Laplace）先验分布（双指数分布）时的后验众数（MAP）。

### 软阈值 (Soft Thresholding)
在正交设计矩阵的情况下，Lasso 的解是对最小二乘估计进行软阈值操作：
$$
\hat{\beta}_j^{lasso} = \text{sign}(\hat{\beta}_j^{ls})(|\hat{\beta}_j^{ls}| - \lambda)_+
$$
即将系数向 0 收缩，若绝对值小于 $\lambda$ 则置为 0。

参见： [[Wiki - 岭回归]]
