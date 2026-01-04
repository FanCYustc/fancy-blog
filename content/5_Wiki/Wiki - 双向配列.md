---
aliases: 
info: 
date: 2025-06-18-星期三 17:14
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 多元统计分析
  - 线性代数
id: wiki20250618171444
banner: "![[astrowalk.gif]]"
---
---

## Prop 2 双向谱配列 (Spectral Seriation for Two-mode)

```ad-proposition
title: 双向配列的优化与特征向量解

给定 $p \times q$ 非负**关联矩阵** $W = (w_{ij})$（如列联表、丰度矩阵），定义：
- **行和向量** $\mathbf{r} = W\mathbf{1}_q$，**列和向量** $\mathbf{c} = W^\top\mathbf{1}_p$
- **块对角度矩阵** $D = \begin{pmatrix} D_r & 0 \\ 0 & D_c \end{pmatrix}$，其中 $D_r = \text{diag}(\mathbf{r})$, $D_c = \text{diag}(\mathbf{c})$
- **块邻接矩阵** $A = \begin{pmatrix} 0 & W \\ W^\top & 0 \end{pmatrix}$
- **拉普拉斯矩阵** $L = D - A = \begin{pmatrix} D_r & -W \\ -W^\top & D_c \end{pmatrix}$

双向配列问题松弛为：
$$
\min_{u \in \mathbb{R}^p, v \in \mathbb{R}^q} \sum_{i=1}^p \sum_{j=1}^q w_{ij}(u_i - v_j)^2 = \min_{\mathbf{z}} \mathbf{z}^\top L \mathbf{z}, \quad \mathbf{z} = \begin{pmatrix} u \\ v \end{pmatrix}
$$
在约束 $\|\mathbf{z}\|=1$ 且 $\mathbf{z} \perp \mathbf{1}$ 下，最优解是 $L$ 的**最小非零特征值**对应的特征向量。将 $\mathbf{z}$ 分解为行得分 $u$ 和列得分 $v$：
$$
\text{行排序：} u_{(1)} \leq \cdots \leq u_{(p)}, \quad \text{列排序：} v_{(1)} \leq \cdots \leq v_{(q)}
$$
所得置换即为最优双向排列。
```

[[Wiki - 独立性检验]]

### **推导与性质**：

1. **目标函数展开**：
   $$
   \sum w_{ij}(u_i - v_j)^2 = \underbrace{\sum_i r_i u_i^2}_{u^\top D_r u} + \underbrace{\sum_j c_j v_j^2}_{v^\top D_c v} - \underbrace{2\sum w_{ij}u_i v_j}_{2u^\top W v}
   $$

2. **与对应分析的关系**：
   当 $W$ 双向中心化时，目标函数等价于：
   $$
   \min -u^\top W v \quad \Leftrightarrow \quad \max u^\top W v
   $$
   此时最优解为 $W$ 的**最大奇异向量**（对应分析结果）

3. **计算步骤**：
   a. 计算 $L$ 的特征分解  
   b. 取最小非零特征值 $\lambda_2$ 的特征向量 $\mathbf{z} = \begin{pmatrix} u \\ v \end{pmatrix}$  [[Wiki - 特征值和特征向量]]
   c. 对 $u$ 和 $v$ 分别升序排列

[[Wiki - 对应分析]]