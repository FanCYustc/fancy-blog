---
aliases:
  - Finite Abelian Group
info: Stein Fourier Analysis Chapter 7.2
date: 2025-12-23-星期二 16:11:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 抽象代数/群论
id: wiki20251223161100
banner: "![[astrowalk.gif]]"
---

# 有限 Abel 群

**有限 Abel 群 (Finite Abelian Group)** 是一个配有二元运算（通常记为乘法 $a · b$ 或加法 $a + b$）的有限集合 $G$，满足以下四个公理：

1.  **封闭性**: 对任意 $a, b \in G$，有 $a \cdot b \in G$。
2.  **结合律**: 对任意 $a, b, c \in G$，有 $(a · b) · c = a · (b · c)$。
3.  **单位元**: 存在 $e \in G$（或 $0 \in G$），使得对任意 $a \in G$，$a · e = a$。
4.  **逆元**: 对任意 $a \in G$，存在 $a^{-1} \in G$（或 $-a$），使得 $a · a^{-1} = e$。
5.  **交换律**: 对任意 $a, b \in G$，有 $a · b = b · a$。

## 典型例子

*   **$\mathbb{Z}(N)$**: 整数模 $N$ 加法群，或 $N$ 次单位根乘法群。见 [[Wiki - Z(N)群]]。
*   **$\mathbb{Z}^*(q)$**: 模 $q$ 的既约剩余系构成的乘法群。见 [[Wiki - Z_star(q)群]]。
*   **直积群**: 两个有限 Abel 群 $G_1, G_2$ 的直积 $G_1 \times G_2$ 也是有限 Abel 群。


