---
aliases:
  - Ridge Regression
info:
date: 2025-12-10-星期三 13:30
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/线性回归
  - 统计学习
id: wiki20251210133000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 岭回归 (Ridge Regression)

岭回归是一种线性回归的收缩方法，通过对回归系数的大小施加 $L_2$ 惩罚来控制模型的复杂度，从而解决多重共线性问题并降低方差。[[Wiki - 偏差方差分解]]但会带来偏差。

其优化目标为最小化带惩罚的残差平方和：
$$
\hat{\beta}^{ridge} = \underset{\beta}{\text{argmin}} \left\{ \sum_{i = 1}^{N} \left( y_{i} - \beta_{0} - \sum_{j = 1}^{p} x_{i j} \beta_{j} \right)^{2} + \lambda \sum_{j = 1}^{p} \beta_{j}^{2} \right\}
$$
其中 $\lambda \geq 0$ 是控制收缩程度的复杂度参数：$\lambda$ 越大，收缩程度越大，系数越趋近于 0。

[[Wiki - 线性回归模型]]
### 矩阵形式
$$
\text{RSS}(\lambda) = (\mathbf{y} - \mathbf{X}\beta)^T (\mathbf{y} - \mathbf{X}\beta) + \lambda \beta^T \beta
$$
岭回归有显式解析解：
$$
\hat{\beta}^{ridge} = (\mathbf{X}^T \mathbf{X} + \lambda \mathbf{I})^{-1} \mathbf{X}^T \mathbf{y}
$$
其中 $\mathbf{I}$ 为单位矩阵。该解法在求逆之前向 $\mathbf{X}^T \mathbf{X}$ 的对角元加入正数 $\lambda$，使得即使 $\mathbf{X}^T \mathbf{X}$ 非满秩（奇异）时问题也有唯一解。

## Pro 1 几何解释与性质

### 奇异值分解 (SVD) 视角
设 $\mathbf{X} = \mathbf{U}\mathbf{D}\mathbf{V}^T$ 为 $\mathbf{X}$ 的 [[Wiki - 矩阵的奇异值分解|SVD 分解]]，则岭回归的预测值为：
$$
\mathbf{X}\hat{\beta}^{ridge} = \sum_{j=1}^p \mathbf{u}_j \frac{d_j^2}{d_j^2 + \lambda} \mathbf{u}_j^T \mathbf{y}
$$
岭回归通过因子 $\frac{d_j^2}{d_j^2 + \lambda}$ 收缩了主成分的坐标。$d_j$ 越小（对应方差较小的主成分方向），收缩越剧烈。这表明岭回归主要压缩那些方差较小（通常对应噪声）的方向。

### 贝叶斯解释
岭回归估计可以看作是当回归系数 $\beta$ 服从均值为 0、方差为 $\tau^2$ 的独立正态先验分布时的后验均值（或后验众数）。此时 $\lambda = \sigma^2 / \tau^2$。

### 与 Lasso 的对比
- 岭回归采用 $L_2$ 范数惩罚 ($\sum \beta_j^2$)。
- 它是连续收缩，虽然会将系数向 0 压缩，但一般不会将系数**精确**置为 0。
- 适合处理变量间存在多重共线性的情况。

参见：[[Wiki - Lasso]], [[Wiki - 主成分回归]]
