---
aliases: 
info: 
date: 2025-06-18-星期三 20:59
update: 
tags:
  - wiki/year2025
  - wiki/month06
  - 聚类分析
  - 机器学习
  - 图论
  - 多元统计分析
id: wiki20250618205919
banner: "![[astrowalk.gif]]"
---
---
## Def 2 谱聚类

```ad-definition
title: 谱聚类核心定义

给定$n$个对象的**相似度矩阵**$A = (a_{ij})_{n \times n}$（$a_{ij} \geq 0$），构建带权图：
- 节点：每个对象
- 边权：$a_{ij}$（相似度越大则连接越强）
- **度数矩阵**：$D = \text{diag}(d_1,...,d_n)$，其中$d_i = \sum_j a_{ij}$
- **拉普拉斯矩阵**：$L = D - A$

谱聚类目标：划分图节点为$K$类，使类间连接最小化（$\text{cut}$值）：
$$
\text{cut}(C_1,...,C_K) = \sum_{k<l} \sum_{i \in C_k, j \in C_l} a_{ij}
$$
通过**拉普拉斯矩阵的特征分解**求解
```

[[Wiki - 度量空间|距离空间]]

[[Wiki - 欧式相似系数矩阵]]

```ad-theorem
title: 谱聚类理论支撑（命题2-3）

**命题2（连通性）**：  
- $L \succeq 0$，最小特征值$\lambda_1=0$对应特征向量$\mathbf{1}$  
- 图全连通 $\iff \lambda_1=0$的重数为1  

**命题3（聚类结构）**：  
$\lambda_1=0$的重数$K$等于图**连通分量个数**，特征空间由指示向量张成：
$$
\text{span}\{ \mathbf{1}_{G_1}, ..., \mathbf{1}_{G_K} \}
$$
其中$G_k$为连通子图节点集

```

[[Wiki - 特征值和特征向量]]


**证明思路**：  
当图含 $K$ 个连通分量时，$L$ 可块对角化：
$$
L = \begin{pmatrix} 
L_{G_1} & & \\
& \ddots & \\
& & L_{G_K}
\end{pmatrix}
$$
每个子矩阵 $L_{G_k}$ 有特征值 0 对应 $\mathbf{1}_{G_k}$

## The 1 谱聚类算法

```ad-proposition
title: 谱聚类算法步骤

1. **输入**：相似度矩阵$A_{n \times n}$，聚类数$K$
2. **计算拉普拉斯矩阵**：
   - 未标准化：$L = D - A$
   - 标准化（常用）：$L_{\text{sym}} = D^{-1/2}LD^{-1/2}$
3. **特征分解**：取$L$前$K$个**最小特征值**对应特征向量$V = [v_1 | \cdots | v_K] \in \mathbb{R}^{n \times K}$
4. **行向量聚类**：将$V$的每行看作$\mathbb{R}^K$中的点，执行K-means聚类
5. **输出**：聚类标签$c_1,...,c_n$

```

[[Wiki - K-means聚类]]


```ad-lemma
title: 图切割优化（命题1）

**最小割等价形式**：
$$
\text{cut}(C_1,...,C_K) = \frac{1}{2} \sum_{k=1}^K \sum_{\substack{i \in C_k \\ j \notin C_k}} a_{ij} = \frac{1}{4} \mathbf{x}^\top L \mathbf{x}
$$
其中$\mathbf{x}$为类标签向量（离散值）。谱聚类通过**松弛离散约束**，转化为连续优化问题：
$$
\min_{V \in \mathbb{R}^{n \times K}} \text{tr}(V^\top L V) \quad \text{s.t.} \quad V^\top V = I
$$
解为$L$的最小$K$个特征值对应特征向量
```

[[Wiki - Eckart-Young-Mirsky定理]]

而谱聚类的 k-means 步骤就是将对应的特征向量离散化成聚类标签。

