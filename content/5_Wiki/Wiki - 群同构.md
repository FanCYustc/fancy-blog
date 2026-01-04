---
aliases:
  - Group Isomorphism
info: Stein Fourier Analysis Chapter 7.2
date: 2025-12-23-星期二 16:12:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 抽象代数/群论
id: wiki20251223161200
banner: "![[astrowalk.gif]]"
---

# 群同构

两个群 $G$ 和 $H$ 称为**同构 (Isomorphic)**，记为 $G \approx H$，如果存在一个双射 $\phi: G \to H$，使得对任意 $a, b \in G$，都满足：
$$ \phi(a \cdot b) = \phi(a) \cdot \phi(b) $$
其中左边的运算在 $G$ 中进行，右边的运算在 $H$ 中进行。

## 意义
同构的群在抽象代数的层面上被视为“相同”的结构，仅仅是元素的标记或表示方式不同。

## 例子
*   $\mathbb{Z}(N)$ 的加法表示（模 $N$ 整数）与乘法表示（$N$ 次单位根）是同构的。
*   实数加法群 $\mathbb{R}$ 与正实数乘法群 $\mathbb{R}^+$ 通过指数映射 $x \mapsto e^x$ 同构。

