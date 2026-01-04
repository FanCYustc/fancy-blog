---
aliases:
info:
date: 2025-06-11-星期三 16:54
update:
tags:
  - wiki/year2025
  - wiki/month06
  - 机器学习/线性分类
id: wiki20250611165442
banner: "![[astrowalk.gif]]"
---
---


## Def 1 感知机

```ad-definition
title: 感知机（Perceptron）

感知机是由 Frank Rosenblatt 于 1957 年提出的二分类线性分类模型，是神经网络的基础组件。其核心是通过特征权重的线性组合实现决策边界，数学形式为：
$$ f(\mathbf{x}) = \text{sign}\left( \mathbf{w}^T \mathbf{x} + b \right) $$
其中：
- $\mathbf{x} \in \mathbb{R}^n$ 为输入特征向量
- $\mathbf{w} \in \mathbb{R}^n$ 为权重向量
- $b \in \mathbb{R}$ 为偏置项
- $\text{sign}(z) = \begin{cases} +1 & \text{if } z \geq 0 \\ -1 & \text{otherwise} \end{cases}$

**学习算法**（误分类驱动）：
1. 初始化 $\mathbf{w} = \mathbf{0}$, $b=0$
2. 对每个样本 $(\mathbf{x}_i, y_i)$：
   - 若 $y_i (\mathbf{w}^T \mathbf{x}_i + b) \leq 0$（误分类）：
     $$ \mathbf{w} \leftarrow \mathbf{w} + \eta y_i \mathbf{x}_i $$
     $$ b \leftarrow b + \eta y_i $$
3. 重复直至无分类错误

**收敛性**（Novikoff 定理）：若训练数据线性可分，感知机在有限步内收敛。
```

**注释**：
- $\eta$ 为学习率，控制权重更新幅度
- 仅适用于线性可分数据（否则振荡不收敛）
- 几何解释：超平面 $\mathbf{w}^T\mathbf{x} + b = 0$ 划分特征空间

[[Wiki - 超平面]]

与 [[Wiki - 支持向量机]]对比

