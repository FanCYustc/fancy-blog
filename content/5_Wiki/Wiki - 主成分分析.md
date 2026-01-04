---
aliases: 
info: 
date: 2025-06-17-星期二 10:11
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 多元统计分析/主成分分析
id: wiki20250617101122
banner: "![[astrowalk.gif]]"
---
---
## Def 1 总体 PCA

```ad-definition
title: Def 1 主成分分析（PCA）
**核心目标**：将 $p$ 维随机向量 $\mathbf{x} \in \mathbb{R}^p$ 降维，通过线性组合构造新的正交变量（主成分），使少数变量保留原始数据的大部分方差信息。

**数学定义**：
设 $\mathbf{x}$ 的协方差矩阵 $\Sigma = \text{var}(\mathbf{x}) > 0$，其谱分解为：
$$\Sigma = V\Lambda V^T, \quad V = (\mathbf{v}_1,...,\mathbf{v}_p), \quad \Lambda = \text{diag}(\lambda_1,...,\lambda_p)$$
其中 $\lambda_1 \geq \cdots \geq \lambda_p > 0$ 为特征值，$\mathbf{v}_i$ 为单位正交特征向量。

- **主成分方向**（载荷）：$\mathbf{v}_k = \arg\max_{\|\mathbf{v}\|=1, \mathbf{v}\perp\{\mathbf{v}_1,...,\mathbf{v}_{k-1}\}} \mathbf{v}^T\Sigma\mathbf{v}$
- **第 $k$ 主成分**：$y_k = \mathbf{v}_k^T\mathbf{x}$
- **主成分变换**：$\mathbf{y} = V^T\mathbf{x}$
```

[[Wiki - 对称矩阵]]

[[Wiki - 特征值和特征向量]]

[[Wiki - 正交投影]]

[[Wiki - 协方差矩阵]]

## Pro 1

```ad-theorem
title: Th 1 主成分的方差性质
**命题**：
1. 主成分的协方差矩阵为对角阵：
   $$\text{var}(\mathbf{y}) = \Lambda = \text{diag}(\lambda_1,...,\lambda_p)$$
2. 总方差守恒：
   $$\sum_{i=1}^p \text{var}(x_i) = \text{tr}(\Sigma) = \text{tr}(\Lambda) = \sum_{i=1}^p \lambda_i$$
3. 第 $k$ 主成分的方差贡献率：
   $$\frac{\lambda_k}{\sum_{i=1}^p \lambda_i}$$

**证明**：
由谱分解 $\Sigma = V\Lambda V^T$ 和正交性 $V^TV = I$：
$$\text{var}(\mathbf{y}) = V^T\Sigma V = V^T(V\Lambda V^T)V = \Lambda$$
总方差 $\text{tr}(\Sigma) = \text{tr}(V\Lambda V^T) = \text{tr}(\Lambda V^TV) = \text{tr}(\Lambda)$。
```

[[Wiki - 矩阵的迹]]

```ad-proposition
title: Prop 1 载荷的统计含义
**载荷与协方差关系**：
$$\text{cov}(\mathbf{x}, y_j) = \mathbf{v}_j\lambda_j$$
**分量形式**：
$$\text{cov}(x_i, y_j) = v_{ij}\lambda_j$$
其中 $v_{ij}$ 是第 $j$ 个载荷向量的第 $i$ 个分量。

**解释**：
载荷 $v_{ij}$ 表征原始变量 $x_i$ 与主成分 $y_j$ 的线性相关强度，符号表示相关性方向。

**证明**：
$$\text{cov}(\mathbf{x}, y_j) = \text{cov}(\mathbf{x}, \mathbf{v}_j^T\mathbf{x}) = \Sigma\mathbf{v}_j = \mathbf{v}_j\lambda_j$$
```

[[Wiki - 协方差]]

## Def 2 样本 PCA

样本 PCA 计算步骤：

**输入**：数据矩阵 $X_{n\times p} = (\mathbf{x}_1^T,...,\mathbf{x}_n^T)^T$
1. **中心化**：[[Wiki - 线性模型的中心化]]
   $$\bar{\mathbf{x}} = \frac{1}{n}\sum_{i=1}^n \mathbf{x}_i, \quad X_c = X - \mathbf{1}_n\bar{\mathbf{x}}^T$$
2. **计算样本协方差**：
   $$S = \frac{1}{n-1}X_c^TX_c$$
3. **特征分解**：
   $$S = V\Lambda V^T, \quad \lambda_1 \geq \cdots \geq \lambda_p$$
4. **主成分得分**：
   $$Y = X_{c}V, \boldsymbol{y}_{i}= V^{T}(\boldsymbol{x}_{i}-\bar{\boldsymbol{x}}), i=1,\dots,n
$$
[[Wiki - 不同基下的坐标变换]]
6. **选择主成分数 $k$**：
   $$\frac{\sum_{i=1}^k \lambda_i}{\sum_{i=1}^p \lambda_i} \geq 0.8$$

**注意事项**：
- 当变量量纲差异大时，优先使用**相关系数矩阵**[[Wiki - Pearson相关系数]]
- $R$ 实现：`princomp(x)` 或 `prcomp(x, scale=TRUE)`


```ad-example
title: Ex 1 等相关系数矩阵的PCA
**模型**：
$$\Sigma = \begin{pmatrix}
1 & \rho & \cdots & \rho \\
\rho & 1 & \cdots & \rho \\
\vdots & \vdots & \ddots & \vdots \\
\rho & \rho & \cdots & 1
\end{pmatrix} = \rho\mathbf{11}^T + (1-\rho)I_p$$

**特征分解**：
- $\lambda_1 = 1 + (p-1)\rho$，特征向量 $\mathbf{v}_1 = \mathbf{1}/\sqrt{p}$
- $\lambda_2 = \cdots = \lambda_p = 1-\rho$，特征向量 $\perp \mathbf{1}$

**解释**：
- 第一主成分 $y_1 = \frac{1}{\sqrt{p}}\sum_{i=1}^p x_i$ 反映共同因子
- 方差贡献率 $\frac{1+(p-1)\rho}{p}$
- 当 $\rho > 0$ 时可用单因子模型近似
```

