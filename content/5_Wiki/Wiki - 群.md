---
aliases:
  - Group
info: 抽象代数中最基本的代数结构之一
date: 2026-01-13-星期二 12:00
update:
tags:
  - wiki/year2026
  - wiki/month01
  - 抽象代数/群论
id: wiki20260113120001
banner: "![[astrowalk.gif]]"
---

# 群 (Group)

**群 (Group)** 是一个配有二元运算（通常记为乘法 $a \cdot b$ 或加法 $a + b$）的非空集合 $G$，满足以下四个基本公理。群论是研究对称性的数学语言。

## 1. 定义与公理

一个集合 $G$ 及其上的二元运算 $\cdot : G \times G \to G$ 构成一个群 $(G, \cdot)$，若满足：

1.  **封闭性 (Closure)**: 对任意 $a, b \in G$，有 $a \cdot b \in G$。
2.  **结合律 (Associativity)**: 对任意 $a, b, c \in G$，有 $(a \cdot b) \cdot c = a \cdot (b \cdot c)$。
3.  **单位元 (Identity)**: 存在唯一的元素 $e \in G$，使得对任意 $a \in G$，有 $e \cdot a = a \cdot e = a$。
4.  **逆元 (Inverse)**: 对任意 $a \in G$，存在唯一的元素 $a^{-1} \in G$，使得 $a \cdot a^{-1} = a^{-1} \cdot a = e$。

若群运算还满足**交换律** ($a \cdot b = b \cdot a$)，则称 $G$ 为**Abel 群** (Abelian Group) 或**交换群**。详见 [[Wiki - 有限Abel群]]。

## 2. 常用术语

*   **阶 (Order)**: 群 $G$ 中元素的个数，记为 $|G|$。
    *   若 $|G| < \infty$，称 $G$ 为**有限群**。
    *   若 $|G| = \infty$，称 $G$ 为**无限群**。
*   **元素的阶**: 使得 $a^n = e$ 的最小正整数 $n$，记为 $|a|$ 或 $o(a)$。
*   **子群 (Subgroup)**: 若 $G$ 的子集 $H$ 在 $G$ 的运算下也构成群，记为 $H \leq G$。

## 3. 典型例子

### 3.1 数系中的群
*   **整数加法群 $(\mathbb{Z}, +)$**: 无限 Abel 群，单位元是 0。
*   **非零实数乘法群 $(\mathbb{R}^*, \cdot)$**: 无限 Abel 群，单位元是 1。

### 3.2 矩阵群与变换群
*   **一般线性群 $GL(n, \mathbb{R})$**: $n$ 阶可逆实矩阵在矩阵乘法下构成的群。这是典型的**非 Abel 群** ($AB \neq BA$)。
*   **正交群 $O(n)$** 与 **特殊正交群 $SO(n)$**: 保持距离（及定向）的变换群。详见 [[Wiki - 等距变换]]。

### 3.3 置换群
*   **对称群 $S_n$**: $n$ 个元素的所有双射变换构成的群。$|S_n| = n!$。
