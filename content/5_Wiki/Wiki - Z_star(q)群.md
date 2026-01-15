---
aliases:
info: Stein Fourier Analysis Chapter 7.2
date: 2025-12-23-星期二 16:20:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 抽象代数/群论
id: wiki20251223162000
banner: "![[astrowalk.gif]]"
---

# Z*(q) 群

$\mathbb{Z}^*(q)$ 表示所有模 $q$ 的单位元（Unit）构成的集合。[[Wiki - 群]]

如果不清楚模运算，参考 [[Wiki - Z(N)群]]。

## 定义
一个整数 $n$ 是模 $q$ 的单位元，如果存在整数 $m$ 使得 $nm \equiv 1 \pmod q$。这等价于 $n$ 与 $q$ 互素，即 $\gcd(n, q) = 1$。
$$ \mathbb{Z}^*(q) = \{ n \in \mathbb{Z}(q) : \gcd(n, q) = 1 \} $$

在模 $q$ 乘法下，$\mathbb{Z}^*(q)$ 构成一个有限 Abel 群 [[Wiki - 有限Abel群]]。该群的阶数由欧拉函数 $\varphi(q)$ 给定。

## 重要性

$\mathbb{Z}^*(q)$ 上的傅里叶分析是证明算术级数中素数定理（Dirichlet 定理）的关键工具。定义在该群上的特征被称为 **Dirichlet 特征**。

