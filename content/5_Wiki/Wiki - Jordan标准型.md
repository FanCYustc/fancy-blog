---
aliases: 
info: 若尔当标准型的概念和重要量
date: 2023-11-22-星期三 19:07
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/相似标准型
id: wiki20231122190734
banner: "![[astrowalk.gif]]"
---
---

## Def 1 若尔当标准型

在复数域上，每个方阵 $A\in \mathbb{C}^{n\times n}$ 都可以相似成 Jordan 标准型
设 A 的特征多项式 [[Wiki - 特征值和特征向量]] $J_{A}(\lambda)=(\lambda-\lambda_{1})^{n_{1}}\dots(\lambda-\lambda_{s})^{n_{s}}$

$$
J=\begin{pmatrix}
J_{1} \\
& J_{2} \\
& & \ddots \\
& & &J_{s}
\end{pmatrix}
$$

为准对角矩阵 [[Wiki - 矩阵分块运算]], 其中每个 $J_{i}\in \mathbb{C}^{n_{i}\times n_{i}}$

其中 $J_{i}=diag(J_{i1},\dots,J_{i m_{i}})$

其中每一个

$$
J_{ij}=\begin{pmatrix}
\lambda_{i} & 1 \\
& \lambda_{i} & 1 \\
& & \ddots & \ddots \\  
& & & & 1\\
& & & & \lambda_{i}
\end{pmatrix}\in \mathbb{C}^{l_{ij}\times l_{ij}}
$$

为**标准若尔当块**, $j=1,\dots,m_{i}$

在不计 Jordan 块的排列，此若尔当标准型唯一

## Pro 1 若尔当标准型的示性量

1、$\lambda_{1},\dots \lambda_{s}$ 为 A 的特征值 [[Wiki - 特征值和特征向量]]

2、$n_{i}$ 为特征值 $\lambda_{i}$ 的代数重数 [[Wiki - 几何重数与代数重数]]

3、$m_{i}$ 为特征值 $\lambda_{i}$ 的几何重数 [[Wiki - 几何重数与代数重数]]

4、$\sum_{j=1}^{m_{i}} l_{ij}=n_{i}$, 若 A 的最小多项式 [[Wiki - 矩阵的最小多项式]] $d_{A}(\lambda)=(\lambda-\lambda_{1})^{k_{1}}\dots(\lambda-\lambda_{s})^{k_{s}}$，则 $k_{i}=\max_{j} l_{ij}$

