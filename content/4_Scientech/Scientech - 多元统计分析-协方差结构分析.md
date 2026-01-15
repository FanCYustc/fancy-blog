---
aliases: 
info: 
date: 2025-06-15-星期日 11:53
update: 
tags:
  - scientech/year2025
  - scientech/month04
  - 多元统计分析/主成分分析
id: scientech20250615115315
banner: "![[astrofishing.gif]]"
---
---
# 协方差结构分析

## Lec 11 主成分分析

[staff.ustc.edu.cn/\~ynyang/vector/lecture11.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture11.pdf)

[lec11讲义](E:\课程资料\多元统计分析\2025春讲义\lecture11.pdf)

分为总体 PCA 和样本 PCA

主要思想是对随机向量 $EX=\mu, VarX= \Sigma$，在空间中的每一个方向都有不同的投影“长度”

$$
E(v^{T}\mathbf{x}-v^{T}\boldsymbol{\mu})^{2}= v^{T}\Sigma v; \quad \|v\|=1
$$

PCA 寻找一个低维空间（特别地，一组正交基），使得随机向量在其上的投影最大可能地保留原始数据的信息，信息以投影坐标的方差（$长度^{2}$）代表。这些正交基称为**主成分方向（或载荷）**，而随机向量在这些方向上的投影坐标称为**主成分**。

PCA 只考虑方差

[[Wiki - 主成分分析]]

## Lec 12 双标图

[staff.ustc.edu.cn/\~ynyang/vector/lecture12.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture12.pdf)

[lec12讲义](E:\课程资料\多元统计分析\2025春讲义\lecture12.pdf)


对于样本的主成分分析，样本为 $\boldsymbol{x}_{1},\dots,\boldsymbol{x}_{n}\in \mathbb{R}^{p}$，对于载荷 V，样本的主成分值为 $Y= XV, Y\in \mathbb{R}^{n\times p}$

提取 Y 的前两列就可以画出散点图，两个方向分别为 PC1 和 PC2，称为双标图

## Lec 13 因子分析

[staff.ustc.edu.cn/\~ynyang/vector/lecture13.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture13.pdf)

[lec13讲义](E:\课程资料\多元统计分析\2025春讲义\lecture13.pdf)

[[Wiki - 因子分析]]

[[Wiki - 因子模型的参数估计]]

## Lec 14 结构方程模型


## Lec 16 典则相关分析

[staff.ustc.edu.cn/\~ynyang/vector/lecture16.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture16.pdf)

[lec16讲义](E:\课程资料\多元统计分析\2025春讲义\lecture16.pdf)

[[Wiki - Eckart-Young-Mirsky定理]]

这一部分的背景定理：

[[Wiki - 矩阵的奇异值]]

[[Wiki - 矩阵的奇异值分解]]

典则相关分析试图分析两个**随机向量之间的相关性**

[[Wiki - 典则相关分析]]

## Lec 17 列联表与对应分析

[staff.ustc.edu.cn/\~ynyang/vector/lecture17.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture17.pdf)

[lec17讲义](E:\课程资料\多元统计分析\2025春讲义\lecture17.pdf)

[[Wiki - pearson卡方检验]]

[[Wiki - 独立性检验]]

这里从协方差矩阵中心化的角度解释了 pearson 卡方独立性检验的形式。

标准化残差、中心化矩阵与 Pearson 卡方的关系：

- **数据结构**：  
  - 行属性变量 $x$（$p$ 个水平）→ 哑变量矩阵 $X_{n \times p}$（每行仅一个 1）  
  - 列属性变量 $y$（$q$ 个水平）→ 哑变量矩阵 $Y_{n \times q}$（每行仅一个 1）  
  - 列联表 $W_{p \times q} = X^TY$（即 $w_{ij}$ 是同时取 $(x=i, y=j)$ 的样本数）

- **样本协方差矩阵**：  
  $$
  S = \frac{1}{n-1} \begin{pmatrix}
  X^TX - \frac{(X^T\mathbf{1})(\mathbf{1}^TX)}{n} & X^TY - \frac{(X^T\mathbf{1})(\mathbf{1}^TY)}{n} \\
  Y^TX - \frac{(Y^T\mathbf{1})(\mathbf{1}^TX)}{n} & Y^TY - \frac{(Y^T\mathbf{1})(\mathbf{1}^TY)}{n}
  \end{pmatrix}
  $$
  - 其中关键块：  
    $$
    S_{xy} = \frac{1}{n-1} \left ( X^TY - \frac{(X^T\mathbf{1})(\mathbf{1}^TY)}{n} \right) = \frac{1}{n-1} W_c
    $$
    **$W_c$ 即中心化列联表**：$W_c = W - \frac{\mathbf{r} \mathbf{c}^T}{n}$，满足行和=列和=0（双向中心化）。

**标准化残差矩阵 $W_s$ ：**

- **构造目的**：消除行列总和差异的影响，纯量化关联性。  
- **定义**：  
  $$
  W_s = D_r^{-1/2} W_c D_c^{-1/2} = \left ( \frac{w_{ij} - r_i c_j / n}{\sqrt{r_i c_j}} \right)
  $$
  - $D_r = \text{diag}(r_1,..., r_p)$（行和矩阵），$D_c = \text{diag}(c_1,..., c_q)$（列和矩阵）  
  - **元素 $\phi_{ij}$ 的统计意义**：  
    - 分子 $w_{ij} - \frac{r_i c_j}{n}$：观测值与独立假设下期望的偏差  
    - 分母 $\sqrt{r_i c_j}$：标准差估计（泊松分布性质）→ 标准化残差  

- **与协方差的联系**：  
  $$
  W_s = \underbrace{(D_r - \mathbf{r}\mathbf{r}^T/n)^{-1/2}}_{\text{行标准化}} \cdot S_{xy} \cdot \underbrace{(D_c - \mathbf{c}\mathbf{c}^T/n)^{-1/2}}_{\text{列标准化}}
  $$
  实际计算中简化为 $D_r^{-1/2} W_c D_c^{-1/2}$（因中心化后 $D_r \approx D_r - \mathbf{r}\mathbf{r}^T/n$）。


[[Wiki - 对应分析]]**对应分析**（Correspondence Analysis, CA）是一种用于分析列联表的多元统计方法，通过奇异值分解 (SVD) 和双标图可视化技术，揭示行变量与列变量水平之间的关联模式。

[[Wiki - 普氏分析]]

