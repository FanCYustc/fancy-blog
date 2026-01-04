---
aliases: 
info: 
date: 2025-06-18-星期三 20:25
update: 
tags:
  - wiki/year2025
  - 多元统计分析
id: wiki20250618202558
banner: "![[astrowalk.gif]]"
---
---
## Def 1 多维标度法 (Multidimensional Scaling, MDS)

```ad-definition
title: Definition

多维标度法（MDS）是一种在尽量保持对象间相近程度信息的前提下，用欧氏向量表示研究对象（object）的嵌入方法。研究对象可以是物体、样本个体、变量等。给定相似度矩阵 $S = (s_{ij})$ 或距离矩阵 $D = (d_{ij})$，MDS 求解 $k$ 维欧氏空间中的点集 $\mathbf{x}_1, \dots, \mathbf{x}_n \in \mathbb{R}^k$ 使得：
1. **经典MDS (cMDS)**：最小化应力函数 $\|S - XX^T\|_F^2$（相似度匹配）
2. **度量MDS (mMDS)**：最小化 $\sum_{i,j} (d_{ij} - \|\mathbf{x}_i - \mathbf{x}_j\|)^2$（距离匹配）
3. **非度量MDS**：保持距离大小次序关系（保序性）
其中 $X = [\mathbf{x}_1^T; \dots; \mathbf{x}_n^T]$ 为嵌入坐标矩阵。
```

## Prop 1 单向谱配列 (Unidimensional Scaling)

```ad-proposition
title: Proposition (一维嵌入优化)

给定相似度矩阵 $S = (s_{ij})$，一维嵌入通过求解拉普拉斯矩阵 $L = D - S$ ($D = \text{diag}(\sum_j s_{ij})$) 的最小非零特征值对应特征向量：
$$
\min_{\mathbf{x} \perp \mathbf{1}, \|\mathbf{x}\|=1} \mathbf{x}^T L \mathbf{x} = \min \frac{1}{2} \sum_{i,j} s_{ij} (x_i - x_j)^2
$$
最优解 $\mathbf{x}_{\text{min}}$ 的分量即为 $n$ 个对象的一维实数嵌入，其顺序反映对象邻近关系。
```

[[Wiki - 欧式相似系数矩阵]]

[[Wiki - 拉普拉斯矩阵]]
## Algorithm 1 经典 MDS (cMDS/PCoA)

```ad-cite
title: Algorithm (Classical MDS)

**输入**：相似度矩阵 $S$ 或距离矩阵 $D$，目标维度 $k$  
**输出**：嵌入坐标 $X \in \mathbb{R}^{n \times k}$  
1. **预处理**：  
   - 若输入为 $D$，计算 $A = (-d_{ij}^2/2)$ 和双中心化矩阵 $S = J_n A J_n$  
     （$J_n = I_n - \frac{1}{n}\mathbf{1}\mathbf{1}^T$）  
2. **谱分解**：$S = U \Lambda U^T$，$\Lambda = \text{diag}(\lambda_1 \geq \cdots \geq \lambda_n)$  
3. **截断**：取前 $k$ 个特征值 $\Lambda_k = \text{diag}(\lambda_1,\dots,\lambda_k)$ 和对应特征向量 $U_k$  
4. **坐标计算**：$X = U_k \Lambda_k^{1/2}$  
*注*：当 $S$ 为欧氏距离导出的相似矩阵时，该方法等价于PCA。
```

[[Wiki - 特征值和特征向量]]
## Def 2 非度量 MDS
```ad-definition
title: Definition (Non-metric MDS)

给定距离矩阵 $D = (d_{ij})$，求解 $\mathbf{x}_1,\dots,\mathbf{x}_n \in \mathbb{R}^k$ 和单调函数 $f$，极小化标准化应力函数：
$$
\text{Stress} = \sqrt{ \frac{\sum_{i \neq j} (f(d_{ij}) - \|\mathbf{x}_i - \mathbf{x}_j\|)^2}{\sum_{i \neq j} \|\mathbf{x}_i - \mathbf{x}_j\|^2} }
$$
核心要求：低维距离 $\delta_{ij} = \|\mathbf{x}_i - \mathbf{x}_j\|$ 保持 $d_{ij}$ 的大小次序（保序性）。
```

## Prop 2 MDS 与 PCA/SVD 的等价性

```ad-proposition
title: Proposition (对偶性)

当MDS的输入为数据矩阵 $X_{n \times p}$ 导出的欧氏距离时：  
1. cMDS 等价于对中心化数据 $X_c$ 的PCA  
2. 个体嵌入坐标为 $XV_k = U_k D_k$（$X$ 的右奇异向量）  
3. 变量嵌入坐标为 $V_k D_k$（$X$ 的左奇异向量）  
其中 $X = UDV^T$ 是SVD分解，$k$ 为截断秩。
```

[[Wiki - 主成分分析]]

[[Wiki - 矩阵的奇异值分解]]

## Algorithm 2 t-SNE

```ad-cite
title: Algorithm (t-Distributed Stochastic Neighbor Embedding)

**目标**：解决高维嵌入的"拥挤问题"  
**步骤**：  
1. **高维相似度**：  
   $$
   p_{j|i} = \frac{\exp(-\|\mathbf{x}_i - \mathbf{x}_j\|^2 / 2\sigma_i^2)}{\sum_{k \neq i} \exp(-\|\mathbf{x}_i - \mathbf{x}_k\|^2 / 2\sigma_i^2)}, \quad p_{ij} = \frac{p_{j|i} + p_{i|j}}{2n}
   $$
2. **低维相似度**（t-分布）：  
   $$
   q_{ij} = \frac{(1 + \|\mathbf{y}_i - \mathbf{y}_j\|^2)^{-1}}{\sum_{k \neq l} (1 + \|\mathbf{y}_k - \mathbf{y}_l\|^2)^{-1}}
   $$  
3. **优化**：最小化KL散度 $\min_Y KL(P\|Q) = \sum_{i,j} p_{ij} \log \frac{p_{ij}}{q_{ij}}$  
*特性*：t-分布重尾特性缓解了拥挤问题，擅长保留局部结构。
```


```ad-note
title: Remark (嵌入方法的核心)

所有嵌入方法均基于矩阵分解：
- **PCA/FA**：基于协方差矩阵 $X^TX$ 的特征分解  
- **MDS**：基于相似度矩阵 $S \approx XX^T$ 的谱分解  
- **SVD**：同时提供行($XX^T$)和列($X^TX$)的嵌入  
- **CA/CCA**：列联表或协方差矩阵的广义SVD
```
