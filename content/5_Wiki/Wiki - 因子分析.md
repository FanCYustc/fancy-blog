---
aliases: 
info: 
date: 2025-06-17-星期二 16:59
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 多元统计分析/主成分分析
id: wiki20250617165939
banner: "![[astrowalk.gif]]"
---
---

## Def 1 因子分析 (Factor Analysis)

```ad-definition
title: 正交因子模型 (Orthogonal Factor Model)

因子分析是一种多元统计方法，旨在通过少数几个不可观测的**潜变量**（称为**公共因子**，Common Factors）来解释一组可观测变量之间的协方差或相关性结构。

假设观测随机向量 $\mathbf{x}_{p \times 1}$ 满足以下线性模型：

$$
\mathbf{x} = \boldsymbol{\mu} + \mathbf{L}\mathbf{f} + \boldsymbol{\varepsilon}
$$

其中：
- $\mathbf{x}$ 是 $p$ 维可观测随机向量。
- $\boldsymbol{\mu}$ 是 $\mathbf{x}$ 的均值向量。
- $\mathbf{f}$ 是 $m$ 维 ($m \le p$) 的公共因子向量，是不可观测的潜变量。
- $\mathbf{L}$ 是 $p \times m$ 的**因子载荷矩阵** (Factor Loading Matrix)。
- $\boldsymbol{\varepsilon}$ 是 $p$ 维的**特殊因子** (Specific Factor) 或误差向量。

模型的基本假设为：
1. 公共因子不相关且方差为1：$E(\mathbf{f}) = \mathbf{0}$，$Var(\mathbf{f}) = \mathbf{I}_m$。
2. 特殊因子之间不相关：$E(\boldsymbol{\varepsilon}) = \mathbf{0}$，$Var(\boldsymbol{\varepsilon}) = \mathbf{\Psi}$，其中 $\mathbf{\Psi} = \text{diag}(\psi_1, \psi_2, \dots, \psi_p)$ 是一个对角矩阵。
3. 公共因子与特殊因子不相关：$Cov(\mathbf{f}, \boldsymbol{\varepsilon}) = \mathbf{0}$。
```

[[Wiki - 主成分分析]]

[[Wiki - 变量的不相关]]

---

## Pro 1 因子分析的协方差结构 (Covariance Structure of Factor Analysis)

```ad-proposition
title: 协方差结构与方差分解

基于正交因子模型的假设，可观测变量 $\mathbf{x}$ 的协方差矩阵 $\mathbf{\Sigma} = Var(\mathbf{x})$ 具有以下结构：

$$
\begin{aligned}
\mathbf{\Sigma} &= Var(\boldsymbol{\mu} + \mathbf{L}\mathbf{f} + \boldsymbol{\varepsilon}) \\
&= Var(\mathbf{L}\mathbf{f}) + Var(\boldsymbol{\varepsilon}) \\
&= \mathbf{L} Var(\mathbf{f}) \mathbf{L}^T + \mathbf{\Psi} \\
&= \mathbf{L}\mathbf{L}^T + \mathbf{\Psi}
\end{aligned}
$$

该结构表明，可观测变量的协方差矩阵可以分解为一个由公共因子引起的低秩部分 $\mathbf{L}\mathbf{L}^T$ 和一个由特殊因子引起的对角矩阵 $\mathbf{\Psi}$。

**方差分解 (Variance Decomposition)**
对于第 $i$ 个观测变量 $x_i$，其方差 $\sigma_{ii}$ 可以分解为：

$$
\sigma_{ii} = \underbrace{\sum_{j=1}^{m} l_{ij}^2}_{\text{共性方差 } h_i^2} + \underbrace{\psi_i}_{\text{特殊方差}}
$$

- **共性方差 (Communality, $h_i^2$)**: 变量 $x_i$ 的方差中能被所有公共因子解释的部分。
- **特殊方差 (Specific Variance / Uniqueness, $\psi_i$)**: 变量 $x_i$ 的方差中不能被公共因子解释的部分，是其独有的变异。
```

[[Wiki - 协方差矩阵]]

**推论**:
- 因子载荷 $l_{ij}$ 表示第 $i$ 个变量与第 $j$ 个公共因子之间的协方差 $Cov(x_i, f_j)$。
- 因子分析的目标是根据样本协方差矩阵 $\mathbf{S}$ (或相关矩阵 $\mathbf{R}$) 来估计因子载荷矩阵 $\mathbf{L}$ 和特殊方差矩阵 $\mathbf{\Psi}$。常用的估计方法包括主因子法和 [[Wiki - 极大似然估计]]。

---

## Pro 2 因子旋转 (Factor Rotation)

```ad-proposition
title: 载荷矩阵的不确定性与旋转

因子模型的一个重要特性是其解的**不唯一性**。对于任何 $m \times m$ 的正交矩阵 $\mathbf{O}$ (即 $\mathbf{O}\mathbf{O}^T = \mathbf{I}$)，我们可以定义一组新的因子和载荷：

$$
\mathbf{L}^* = \mathbf{L}\mathbf{O} \quad \text{and} \quad \mathbf{f}^* = \mathbf{O}^T\mathbf{f}
$$

这组新的因子和载荷仍然满足因子模型的基本假设，并且导出的协方差结构不变：

$$
\mathbf{L}^* (\mathbf{L}^*)^T = (\mathbf{L}\mathbf{O})(\mathbf{L}\mathbf{O})^T = \mathbf{L}\mathbf{O}\mathbf{O}^T\mathbf{L}^T = \mathbf{L}\mathbf{L}^T
$$

为了解决这种不确定性并获得更易于解释的因子结构，通常对初始的载荷矩阵进行**因子旋转**。旋转的目标是使载荷矩阵的结构更简单（Simple Structure），即每个变量仅在少数几个因子上有高载荷，而在其他因子上的载荷接近于零。

**Varimax旋转 (Varimax Rotation)**
Varimax是一种最常用的**正交旋转**方法，其准则是最大化每一列载荷的平方值的方差。这使得每个因子上的高载荷和低载荷分化更明显，从而简化了对每个因子的解释。
```


