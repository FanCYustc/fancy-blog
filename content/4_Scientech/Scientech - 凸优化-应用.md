---
aliases: 
info: 25春凸优化第6章第7章第8章
date: 2025-04-28-星期一 17:16
update: 
tags:
  - scientech/year2025
  - scientech/month04
  - 凸优化
id: scientech20250428171632
banner: "![[astrofishing.gif]]"
---
---
# CH 6-逼近与拟合

## 6.1 **范数逼近 (Norm Approximation)**

```ad-definition
title: 定义
**范数逼近问题**的标准形式为：
$$
\begin{array}{ll}
{\text{minimize}} & \|A x - b\| \\
\end{array}
$$
其中：
- $A \in \mathbb{R}^{m \times n}$ 为数据矩阵，$b \in \mathbb{R}^{m}$ 为目标向量
- $x \in \mathbb{R}^{n}$ 为优化变量
- $\|\cdot\|$ 为 $\mathbb{R}^m$ 上的任意范数
```

[[Wiki - 范数]]

**关键性质：**
1. **几何解释**：寻找 $A$ 列向量的线性组合 $x_1 a_1 + \cdots + x_n a_n$ 在给定范数下最佳逼近 $b$。
2. **统计解释**：在测量模型 $y = A x + \epsilon$ 中，$\widehat{x} = \arg\min_z \|A z - y\|$ 是噪声 $\epsilon$ 的极大似然估计 [[Wiki - 极大似然估计]]。

```ad-theorem
title: 重要特例与求解方法
**1. 最小二乘逼近 ($l_2$-范数)**：
$$
\min_x \|A x - b\|_2^2
$$
- **解析解**：通过正规方程 $A^\top A x = A^\top b$ 求解，解为 $x = (A^\top A)^{-1} A^\top b$（$A$ 列满秩时唯一）。
- **复杂度**：$O(n^2 m)$，可利用 $A$ 的稀疏性加速。

**2. 极小极大逼近 ($l_\infty$-范数)**：
$$
\min_x \max_{i=1,\dots,m} |a_i^\top x - b_i|
$$
- **等价线性规划**：
  $$
  \begin{array}{ll}
  \text{minimize} & t \\
  \text{subject to} & -t \mathbf{1}_m \preceq A x - b \preceq t \mathbf{1}_m
  \end{array}
  $$

**3. 残差绝对值和逼近 ($l_1$-范数)**：
$$
\min_x \|A x - b\|_1
$$
- **等价线性规划**：
$$
  \begin{array}{ll}
  \text{minimize} & \mathbf{1}_m^\top t \\
  \text{subject to} & -t \preceq A x - b \preceq t
  \end{array}
$$
```

## 6.2 **罚函数逼近 (Penalty Function Approximation)**

[[Wiki - 罚函数逼近]]

## 6.3 **正则化 (Regularization)**

正则化通过添加惩罚项避免过拟合：
$$
\min_x \|A x - b\| + \lambda \|x\|
$$
**重要形式**：
1. **Tikhonov 正则化（岭回归）**：
   $$
   \min_x \|A x - b\|_2^2 + \lambda \|x\|_2^2
   $$
   - 显式解：$x = (A^\top A + \lambda I)^{-1} A^\top b$
   
2. **$l_1$-正则化（Lasso）**：
   $$
   \min_x \frac{1}{2} \|A x - b\|_2^2 + \lambda \|x\|_1
   $$
   - 产生稀疏解，用于特征选择。

# CH7-统计估计



# CH8-几何问题


