---
aliases: 
info: Chebyshev弱大数律
date: 2023-11-30-星期四 14:28
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/极限理论
id: wiki20231130142802
banner: "![[astrowalk.gif]]"
---
---

## The 1 Chebyshev 弱大数律

```ad-theorem
title: Theorem 1

```
 如果序列 $\{X_n,~n\in\mathbb{N}\}$ 中的随机变量**两两不相关** [[Wiki - 变量的不相关]]且存在常数 $C> 0$, 使得 $Var X_n\leqslant C, \forall n\in \mathbb{N}$, [[Wiki - 方差]]那么就有如式
 $$
\frac{{S_{n}-ES_{n}}}{n}\xrightarrow{p}0
$$
 
 的弱大数律[[Wiki - 弱大数律]]成立.

**需要两两不相关**

### Proof

由于不相关，所以

$$
Var S_{n}=\sum_{k=1}^{n} Var X_{k}\leq Cn
$$

由 [[Wiki - markov弱大数律]]即证


