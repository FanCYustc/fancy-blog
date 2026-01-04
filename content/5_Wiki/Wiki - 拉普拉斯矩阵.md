---
aliases: 
info: 
date: 2025-06-18-星期三 21:14
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 聚类分析
  - 多元统计分析
  - 线性代数/矩阵
id: wiki20250618211402
banner: "![[astrowalk.gif]]"
---
---
## Def 1 拉普拉斯矩阵

```ad-definition
title: 拉普拉斯矩阵（Laplacian Matrix）

对于一个无向图$G=(V,E)$，其中$V$是顶点集（$|V|=n$），$E$是边集：
1. **度矩阵** $D$：对角矩阵，$D_{ii} = \deg(v_i)$
2. **邻接矩阵** $A$：$A_{ij} = \begin{cases} 1 & (v_i,v_j) \in E \\ 0 & \text{否则} \end{cases}$

则拉普拉斯矩阵定义为：
$$ L = D - A $$

矩阵元素表示为：
$$ L_{ij} = \begin{cases} 
\deg(v_i) & i = j \\
-1 & i \neq j \text{ 且 } (v_i,v_j) \in E \\
0 & \text{否则}
\end{cases} $$

**归一化形式**（Symmetric Normalized Laplacian）：
$$ L_{\text{sym}} = D^{-1/2}LD^{-1/2} = I - D^{-1/2}AD^{-1/2} $$
```

### 关键性质
1. **半正定性**：$\forall \mathbf{x} \in \mathbb{R}^n, \mathbf{x}^T L \mathbf{x} = \frac{1}{2}\sum_{(i,j)\in E}(x_i - x_j)^2 \geq 0$
2. **特征值**：$0 = \lambda_1 \leq \lambda_2 \leq \cdots \leq \lambda_n$，$\lambda_2$（代数连通度）反映图连通性
3. **零空间**：$\ker(L) = \operatorname{span}(\mathbf{1})$（连通图）
4. **矩阵和**：每行/列元素和为 0

### 应用场景
- 谱聚类：将拉普拉斯特征向量用于顶点划分 [[Wiki - 谱聚类]]
- 图信号处理：作为图上的拉普拉斯算子
- 流形学习：离散逼近黎曼流形上的拉普拉斯-贝尔特拉米算子
