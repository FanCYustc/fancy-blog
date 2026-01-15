---
aliases:
  - isometry
info: 保持点间欧氏距离不变的几何变换
date: 2026-01-13-星期二 11:00
update:
tags:
  - wiki/month01
  - 几何学
  - wiki/year2023
id: wiki20260113110001
banner: "![[astrowalk.gif]]"
---

# 等距变换 (Isometry)

等距变换是欧氏几何中最基础的变换类型，它保持空间中任意两点之间的欧氏距离不变。

## 1. 定义与基本性质

### 定义
设 $\phi: \mathbb{E}^n \to \mathbb{E}^n$ 是一个双射。若对于任意点 $P, Q \in \mathbb{E}^n$，均有
$$ d(\phi(P), \phi(Q)) = d(P, Q) $$
则称 $\phi$ 为**等距变换**（或保距变换）。[[Wiki - 等距映射与等距同构]]

### 核心性质
1.  **保角性**：等距变换保持三点构成的夹角不变（全等三角形判定）。
2.  **平移不变性**：若 $\vec{AB} = \vec{CD}$，则 $\overrightarrow{\phi(A)\phi(B)} = \overrightarrow{\phi(C)\phi(D)}$。
3.  **诱导向量变换**：等距变换 $\phi$ 自然诱导一个向量变换 $\widetilde{\phi}: \vec{v} \to \widetilde{\phi}(\vec{v})$。该变换是**线性**的，且保持向量内积不变 [[Wiki - 内积]] ：
    $$ \widetilde{\phi}(\vec{u}) \cdot \widetilde{\phi}(\vec{v}) = \vec{u} \cdot \vec{v} $$

## 2. 分类

根据是否保持空间的定向，等距变换可分为两大类：

### 刚体变换 (Rigid Transformation)
*   **特性**：保距且**保定向**（将右手系映为右手系）。[[Wiki - 向量外积]]、[[Wiki - 曲面的定向]]
*   **代数判别**：其诱导线性变换的矩阵 $A$ 满足 $A^T A = I$ 且 $\det A = 1$。
*   **基本形式**：平移、旋转。

### 翻转定向的等距变换
*   **特性**：保距但**翻转定向**（将右手系映为左手系）。
*   **代数判别**：其矩阵 $A$ 满足 $A^T A = I$ 且 $\det A = -1$。
*   **基本形式**：反射（Reflection）、滑动反射（Glide Reflection）。

## 3. 代数表达

在标准直角坐标系下，任何等距变换 $\phi$ 均可表示为：
$$ \phi(\vec{x}) = A\vec{x} + \vec{a} $$
其中 $A$ 为正交矩阵（$A \in O(n)$），$\vec{a}$ 为平移向量。[[Wiki - 正交矩阵]]
*   若 $A \in SO(n)$，则为刚体变换。

## 4. 群结构
$\mathbb{E}^n$ 上的所有等距变换构成**欧氏群** $E(n)$，刚体变换构成其子群 $SE(n)$。根据埃尔朗根纲领，欧氏几何研究的就是在该群作用下的不变量（如长度、角度、面积）。
