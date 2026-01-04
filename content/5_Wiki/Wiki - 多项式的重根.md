---
aliases:
  - 多项式重数
  - 多项式重因式
info: 重根的定义、重数判断
date: 2023-09-18-星期一 08:28
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230918082832
banner: "![[astrowalk.gif]]"
---
---

## Def 1 重因式

```ad-definition
title: Definition 1

如果不可约多项式 p（x）是多项式 f（x）的因式，$p(x)^{k} \mid f(x)$ 且 $p(x)^{k+1} not\mid f(x)$，就称 p（x) 是 f (x) 的 k 重因式，k 是因式 p (x) 在 f (x) 中的**重数** (multiple number）. 如果 k=1, p（x) 称为 f (x）的单因式 (single factor)；如果 h>1，那么 p（x) 称为 f (x）的重因式 (multiple fac-tor）。如果 x-c 是 f (x) 的 **k 重因式**，就称 c 是 f (x) 的 **k 重根 (k-ple root)**，当 k=1 时称 c 是 f(x) 的单根 (single root)，当 k>1 时称 c 是 f (x) 的重根（multiple root）.

```

[[Wiki - 多项式的根]]

## The  1

$f (x) \in F[x]$ 有重因式 $\leftrightarrow gcd(f (x), f'(x))\neq 1$, gcd（f (x), f′(x)) 的每个不可约因式 p（x) 都是 f (x) 的重因式。**如果不可约多项式 p（x) 是 gcd(f (x) f' (x)) 的 k 重因式，那么它是 f (x) 的 k+1 重因式**

[[Wiki - 多项式最大公因式]]



