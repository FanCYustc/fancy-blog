---
aliases:
  - mixed product
info: 三个向量构成的平行六面体的有向体积
date: 2026-01-13-星期二 10:10
update:
tags:
  - wiki/month01
  - 几何学
  - wiki/year2023
id: wiki20260113101001
banner: "![[astrowalk.gif]]"
---

# 混合积 (Scalar Triple Product)

混合积是三维欧氏空间 [[Wiki - 欧几里得空间]]中三个向量的一种运算，它结合了内积和外积，其结果是一个标量。

## 1. 定义

对于三个向量 $\vec{u}, \vec{v}, \vec{w} \in \mathbb{E}^3$，它们的混合积定义为：
$$ V(\vec{u}, \vec{v}, \vec{w}) := (\vec{u} \times \vec{v}) \cdot \vec{w} $$
常记作 $[\vec{u}, \vec{v}, \vec{w}]$。

## 2. 几何意义

混合积的绝对值等于以 $\vec{u}, \vec{v}, \vec{w}$ 为三条邻棱张成的**平行六面体的体积**。
*   $|\vec{u} \times \vec{v}|$ 是底面平行四边形的面积。
*   $|\vec{w} \cdot \cos\theta|$ 是该平行六面体的高（$\theta$ 是 $\vec{w}$ 与法向量 $\vec{u} \times \vec{v}$ 的夹角）。

### 有向体积
混合积的值本身称为**有向体积**。
*   若 $(\vec{u}, \vec{v}, \vec{w})$ 构成右手系，混合积为正。
*   若 $(\vec{u}, \vec{v}, \vec{w})$ 构成左手系，混合积为负。
*   若三向量共面，混合积为零。

## 3. 性质

### 轮换对称性 (Cyclic Invariance)
由于行列式的性质，三个向量循环移位不改变混合积的值：
$$ (\vec{u} \times \vec{v}) \cdot \vec{w} = (\vec{v} \times \vec{w}) \cdot \vec{u} = (\vec{w} \times \vec{u}) \cdot \vec{v} $$
这也意味着可以在混合积中互换“点积”和“叉积”符号的位置（需保持向量顺序）：
$$ \vec{u} \cdot (\vec{v} \times \vec{w}) = (\vec{u} \times \vec{v}) \cdot \vec{w} $$
[[Wiki - 内积]]、[[Wiki - 混合积]]
### 反交换性
若交换任意两个向量的位置，混合积变号（对应行列式互换两行变号）：
$$ [\vec{u}, \vec{v}, \vec{w}] = -[\vec{v}, \vec{u}, \vec{w}] $$

## 4. 坐标计算

在标准正交基[[Wiki - Schmidt 正交化|标准正交基]]下，设 $\vec{u}=(x_1, y_1, z_1), \vec{v}=(x_2, y_2, z_2), \vec{w}=(x_3, y_3, z_3)$，则混合积等于以这三个向量为行的三阶行列式：

$$ 
[\vec{u}, \vec{v}, \vec{w}] = \begin{vmatrix} x_1 & y_1 & z_1 \ x_2 & y_2 & z_2 \ x_3 & y_3 & z_3 
\end{vmatrix} 
$$

[[Wiki - 行列式的定义|n阶行列式函数]]