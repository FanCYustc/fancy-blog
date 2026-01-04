---
aliases:
  - SVM
  - Support Vector Machine
info:
date: 2025-12-17-星期三 10:15
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 运筹学/评价问题
  - 机器学习
  - 分类
id: wiki20251217101500
banner: "![[astrowalk.gif]]"
---

# 支持向量机 (Support Vector Machine)

支持向量机 (SVM) 是一种二分类模型，其基本模型定义为特征空间上的间隔最大的线性分类器。

**核心思想**：在高维空间中寻找一个超平面，能够将样本点正确分类，且使样本点到平面的距离（间隔）尽可能大。

## 1. 线性可分支持向量机

### 1.1 基本定义

假设训练集 $T=\{[\boldsymbol{\alpha_{1}}, y_{1}],\dots,[\boldsymbol{\alpha_{l}}, y_{l}]\}\in \mathbb{R}^{n}\times Y$，其中 $y_i \in \{+1, -1\}$。

目标是寻找一个函数 $g(\boldsymbol{x})$，使得可以用$sgn(g(\boldsymbol{x}))$ 对样本点正确分类。

```ad-definition
title: 线性可分 (Linearly Separable)

如果存在 $\boldsymbol{\omega},b,\epsilon>0$，使得：
- 一类样本有 $\boldsymbol{\omega \cdot \alpha}+b\geq \epsilon$
- 另一类样本有 $\boldsymbol{\omega \cdot \alpha}+b\leq -\epsilon$ (通常取对称形式)

则称相应的问题是线性可分的。
```

```ad-proposition
title: 几何充要条件

线性可分的充要条件是两类样本集的**凸包 (Convex Hull)** 相离。
```

相关概念：[[Wiki - 超平面]]，[[Wiki - 凸集分离定理]]

### 1.2 规范超平面

在空间 $\mathbb{R}^n$ 中，超平面方程为 $(\boldsymbol{\omega}\cdot\boldsymbol{x})+b=0$。为了唯一确定超平面，我们需要对其进行规范化。

```ad-theorem
title: 规范超平面 (Canonical Hyperplane)

定义满足以下条件的超平面为训练集 $T$ 的规范超平面：

$$ \begin{cases} y_i[(\boldsymbol{\omega}\cdot\boldsymbol{a}_i)+b] \geqslant 0, & i=1,\cdots,l \\ \min\limits_{i=1,\cdots,l} |(\boldsymbol{\omega}\cdot\boldsymbol{a}_i)+b| = 1 \end{cases} $$

当训练集 $T$ 线性可分时，存在唯一的规范超平面，使得：
$$ \begin{cases} (\boldsymbol{\omega}\cdot\boldsymbol{a}_i)+b \geqslant 1, & y_i = 1 \\ (\boldsymbol{\omega}\cdot\boldsymbol{a}_i)+b \leqslant -1, & y_i = -1 \end{cases} $$
```

满足 $|(\boldsymbol{\omega}\cdot\boldsymbol{a}_i)+b| = 1$ 的样本点被称为**支持向量 (Support Vectors)**。

### 1.3 优化问题

几何间隔为 $\frac{1}{||\boldsymbol{\omega}||}$。最大化间隔等价于最小化 $||\boldsymbol{\omega}||^2$。

**原始问题 (Primal Problem):**
$$ \begin{aligned} \min \quad & \frac{1}{2}||\boldsymbol{\omega}||^{2} \\ s.t. \quad & y_{i}(\boldsymbol{\omega}\cdot \boldsymbol{\alpha}_{i} + b)\geq 1, \quad i=1,\dots,l \end{aligned} $$

这是一个凸二次规划问题，可以应用拉格朗日乘子法求解。[[Wiki - 拉格朗日乘数法]]

**对偶问题 (Dual Problem):**
$$ \begin{aligned} \max \quad & -\frac{1}{2}\sum_{i=1}^{l}\sum_{j=1}^{l}y_{i}y_{j}\lambda_{i}\lambda_{j}(\boldsymbol{\alpha}_{i}\cdot \boldsymbol{\alpha}_{j}) + \sum_{i=1}^{l}\lambda_{i} \\ s.t. \quad & \sum_{i=1}^{l}y_{i}\lambda_{i}=0 \\ & \lambda_{i}\geq 0 \end{aligned} $$

**性质**：最终解中，只有支持向量对应的 $\lambda_{i} > 0$，其他样本点的 $\lambda_{i} = 0$。这意味着分类决策仅由支持向量决定。

[[Wiki - Lagrange对偶问题]]
## 2. 软间隔 (Soft Margin)

当数据近似线性可分（存在噪声）时，允许部分样本点违反约束，引入松弛变量 $\xi_{i}\geq 0$ 和惩罚参数 $C$。

$$ \begin{aligned} \min \quad & \frac{1}{2}||\boldsymbol{\omega}||^2 + C\sum\limits_{i=1}^l\xi_i \\ s.t. \quad & y_i((\boldsymbol{\omega}\cdot\boldsymbol{a}_i)+b) \geqslant 1-\xi_i \\ & \xi_i \geqslant 0, \quad i=1,\cdots,l \end{aligned} $$

## 3. 非线性支持向量机 (Kernel SVM)

对于线性不可分的数据，可以通过非线性映射 $\phi(\boldsymbol{x})$ 将数据映射到高维特征空间，使其线性可分。

在对偶问题中，只涉及样本之间的内积 $(\boldsymbol{\alpha}_{i}\cdot \boldsymbol{\alpha}_{j})$。因此，只需计算映射后的内积 $K(\boldsymbol{\alpha}_{i}, \boldsymbol{\alpha}_{j}) = \phi(\boldsymbol{\alpha}_{i}) \cdot \phi(\boldsymbol{\alpha}_{j})$，而无需显式知道 $\phi$。这个函数 $K$ 称为**核函数 (Kernel Function)**。

```ad-tip
title: 常用核函数

1. **线性核 (Linear Kernel)**: 
   $K(\boldsymbol{a}_i, \boldsymbol{a}_j) = (\boldsymbol{a}_i \cdot \boldsymbol{a}_j)$

2. **多项式核 (Polynomial Kernel)**: 
   $K(\boldsymbol{a}_i, \boldsymbol{a}_j) = [(\boldsymbol{a}_i \cdot \boldsymbol{a}_j) + 1]^q$

3. **径向基核 (RBF / Gaussian Kernel)**: 
   $K(\boldsymbol{a}_i, \boldsymbol{a}_j) = \exp\left\{-\frac{||\boldsymbol{a}_i - \boldsymbol{a}_j||^2}{\sigma^2}\right\}$ (或 $\gamma = \frac{1}{\sigma^2}$)

4. **Sigmoid (S形) 核**: 
   $K(\boldsymbol{a}_i, \boldsymbol{a}_j) = \tanh[v(\boldsymbol{a}_i \cdot \boldsymbol{a}_j) + c]$
```

[[Scientech - 机器学习-基展开与平滑]]

