---
aliases: 
info: 可数集合的定义和性质
date: 2023-08-17-星期四 12:12
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230817121220
banner: "![[astrowalk.gif]]"
---
---
#数学分析/实数 

## Def 1 有限集合

```ad-definition
title: Definition 1

If A and {1, 2,..., n}有一一对应，那么 A 是有限集合；反之为无限集合


```

## Def 2 可数集合

```ad-definition
title: Definition 2

如果存在 A 与 $\mathbb{N}$ 的**一一对应**，那么称 A 为可数集合，也称为与 $\mathbb{N}$ 有相同基数

```

## Cal 1

推论：没有比 $\mathbb{N}$ 更小的可数集合

## Pro 1 可数集合的判定

如果存在 $\mathbb{N}$ 到无限集合 U 的满射 f，那么 U 是可数集合

### Proof

首先 $\mathbb{N}$ 的任意非空子集 A 都有最小元：取充分大的 n，A 的最小元就是 $A \cap \{1,2,\dots n\}$ 这个有限集合的最小元

只需要找到一种 U 的不重复的元素排列规则，就能说明 U 与 $\mathbb{N}$ 有相同基数

取 $y_{1}=f(j_{1})=f(1)$，取 $j_{2}$ 为 $E_{1}=\{n \in \mathbb{N}\mid f(n)\neq y_{1}\}$ 的最小元，令 $y_{2}=f(j_{2})$

依次操作，且由于 U 是无限集合，所以操作不会停止。

## Pro 2

```ad-proposition
title: Propositon 2

可数个可数集合的并是可数集合

```

### Proof

按矩阵排列，以 $a_{11},a_{21},a_{12},a_{31},a_{22},a_{13}\dots$ 的顺序重新排列

## Pro 3

```ad-proposition
title: Propositon 3

**有限个**可数集合的直积也是可数集合

```
### Proof

类似上个定理



