---
aliases:
  - cross product
info: 三维欧氏空间特有的二元运算
date: 2026-01-13-星期二 10:05
update:
tags:
  - wiki/month01
  - 几何学
  - wiki/year2023
id: wiki20260113100501
banner: "![[astrowalk.gif]]"
---


# 向量外积 (Cross Product)

在三维欧氏空间 $\mathbb{E}^3$ 中，除了内积（点积）外，还存在一种特殊的向量积——**外积**（亦称叉积）。与内积不同，外积的结果是一个向量，且其定义依赖于空间的**定向**（右手系）。[[Wiki - 欧几里得空间]]

## 1. 定义

对于 $\mathbb{E}^3$ 中任意两个向量 $\vec{u}, \vec{v}$，其外积 $\vec{u} \times \vec{v}$ 定义为满足以下三个条件的唯一向量：
1.  **模长**：$|\vec{u} \times \vec{v}| = |\vec{u}| |\vec{v}| \sin\theta$，其数值等于以 $\vec{u}, \vec{v}$ 为邻边的平行四边形的面积。
2.  **方向**：$\vec{u} \times \vec{v}$ 垂直于 $\vec{u}$ 和 $\vec{v}$ 所在的平面。
3.  **定向**：有序向量组 $(\vec{u}, \vec{v}, \vec{u} \times \vec{v})$ 满足**右手螺旋法则**。

> **右手螺旋法则**：伸出右手，四指从 $\vec{u}$ 弯向 $\vec{v}$（转角小于 $\pi$），大拇指所指的方向即为 $\vec{u} \times \vec{v}$ 的方向。

## 2. 基本性质

外积运算不满足交换律和结合律，但满足以下性质：

*   **反对称性**：
    $$ \vec{u} \times \vec{v} = - (\vec{v} \times \vec{u}) $$ 
    特别地，$\vec{u} \times \vec{u} = \vec{0}$。
*   **双线性性**：
    $$ (\lambda \vec{u} + \mu \vec{v}) \times \vec{w} = \lambda (\vec{u} \times \vec{w}) + \mu (\vec{v} \times \vec{w}) $$ 
*   **雅可比恒等式 (Jacobi Identity)**：
    $$ \vec{u} \times (\vec{v} \times \vec{w}) + \vec{v} \times (\vec{w} \times \vec{u}) + \vec{w} \times (\vec{u} \times \vec{v}) = \vec{0} $$ 
    这也意味着 $(\mathbb{E}^3, \times)$ 构成一个**李代数** (Lie Algebra)。[[Wiki - 李代数]]

## 3. 重要恒等式

### 拉格朗日恒等式 (Lagrange Identity)
联系了外积的模长与内积：
$$ |\vec{u} \times \vec{v}|^2 = |\vec{u}|^2 |\vec{v}|^2 - (\vec{u} \cdot \vec{v})^2 $$ 

### BAC-CAB 恒等式
描述了三重外积的展开：
$$ \vec{a} \times (\vec{b} \times \vec{c}) = \vec{b}(\vec{a} \cdot \vec{c}) - \vec{c}(\vec{a} \cdot \vec{b}) $$ 
记忆口诀：“**B**ack of the **C**ab” (出租车后座)。

## 4. 坐标公式

在右手标准正交基 ${\vec{e}_x, \vec{e}_y, \vec{e}_z}$ 下，设 $\vec{u} = (x_1, y_1, z_1)$，$\vec{v} = (x_2, y_2, z_2)$，则：

$$ 
\vec{u} \times \vec{v} = \begin{vmatrix} \vec{e}_x & \vec{e}_y & \vec{e}_z \\ x_1 & y_1 & z_1 \\ x_2 & y_2 & z_2 
\end{vmatrix} = (y_1 z_2 - z_1 y_2) \vec{e}_x + (z_1 x_2 - x_1 z_2) \vec{e}_y + (x_1 y_2 - y_1 x_2) \vec{e}_z 
$$ 

这一公式可以通过行列式的展开方便地记忆。
