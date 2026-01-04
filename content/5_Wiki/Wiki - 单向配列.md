---
aliases: 
info: 
date: 2025-06-18-星期三 16:55
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 多元统计分析
id: wiki20250618165541
banner: "![[astrowalk.gif]]"
---
---
## Prop 1 单向谱配列 (Spectral Seriation for One-mode)

```ad-proposition
title: 谱配列优化与特征向量解

给定 $n$ 个物体的**对称相似度矩阵** $S = (s_{ij})$（$s_{ij} \geq 0$)，定义：
- **度矩阵** $D = \text{diag}(d_1,\dots,d_n)$，其中 $d_i = \sum_{j=1}^n s_{ij}$
- **拉普拉斯矩阵** $L = D - S$（半正定矩阵）

单向配列问题可松弛为连续优化问题：
$$
\min_{x \in \mathbb{R}^n} \frac{1}{2} \sum_{i,j} s_{ij}(x_i - x_j)^2 = \min_{x} x^T L x
$$
在约束条件 $\|x\|=1$ 且 $x \perp \mathbf{1}$（$x$ 与全1向量正交）下，最优解是 $L$ 的**最小非零特征值**对应的特征向量（Fiedler 向量）。将特征向量分量排序：
$$
x_{(1)} \leq x_{(2)} \leq \cdots \leq x_{(n)}
$$
得到的索引序列即为最优排列 $\pi$。
```

[[Wiki - 典则相关分析]]
### **推导过程**：

1. 目标函数展开：
$$
\frac{1}{2}\sum_{i, j} s_{ij}(x_i - x_j)^2 = \sum_i d_i x_i^2 - \sum_{i, j} s_{ij}x_i x_j = x^T D x - x^T S x = x^T L x
$$
2. $L$ 半正定 [[Wiki - 正定矩阵]]且 $L\mathbf{1} = 0$，最小特征值 $\lambda_1=0$ 对应特征向量 $\mathbf{1}$
3. 在 $x \perp \mathbf{1}$ 且 $\|x\|=1$ 约束下，由 Rayleigh 商性质 [[Wiki - Eckart-Young-Mirsky定理]] ：
$$
\min x^T L x = \lambda_2 \quad (\text{第二小特征值})
$$
4. 最优解 $x$ 是 $\lambda_2$ 的特征向量，其分量顺序反映物体相似性关联强度。[[Wiki - 特征值和特征向量]]

**示例**（食品评价数据）：
- 相似矩阵 $S$（相关系数）：
$$
\begin{pmatrix}
1 & 0.02 & 0.96 & 0.42 & 0.01 \\
0.02 & 1 & 0.13 & 0.71 & 0.85 \\
0.96 & 0.13 & 1 & 0.50 & 0.11 \\
0.42 & 0.71 & 0.50 & 1 & 0.79 \\
0.01 & 0.85 & 0.11 & 0.79 & 1 \\
\end{pmatrix}
$$
- Fiedler 向量：$(-0.600, -0.449, 0.131, 0.458, 0.480)$
- 排序结果：Taste → Goodbuy → Flavor → Snack → Energy

[[Wiki - 拉普拉斯矩阵]]