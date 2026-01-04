---
aliases:
  - Gauss引理
info: 本原多项式乘积还是本原多项式
date: 2023-09-20-星期三 11:00
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230920110057
banner: "![[astrowalk.gif]]"
---
---

## The 1 gauss 引理

```ad-theorem
title: Theorem 1

两个本原多项式的乘积仍然还是本原多项式


```

### Proof 

反证，取各系数的素公因子 p，
$f(x)=pf_{0}(x)+f_{1}(x),g(x)=pg_{0}(x)+g_{1}(x)$

So $f(x)g(x)=ph_{0}(x)+f_{1}(x)g_{1}(x)$

考察 $f_{1}(x)g_{1}(x)$ 首项系数 mod p 不为 0

## Cal 1

如果 $g(x)\mid f(x)$，g (x) 是本原多项式 [[Wiki - 本原多项式]]，则其商 $q(x)$ 是整系数多项式，且当 f (x) 是本原多项式时 q (x) 也是本原多项式。

### Proof

$f(x)=q(x)g(x)=\frac{s}{t}h(x)g(x)$
H (x) 是本原多项式 [[Wiki - 本原多项式#Pro 1]]

由于 $h (x) g (x)=\sum d_{i}x^{i}$ 是本原多项式，且
$f (x)=\sum \frac{{sd_{i}}}{t}x^{i}$ 是整系数多项式

所以 $t\mid sd_{i}\forall i$。又因为 gcd (s, t)=1，所以 $t\mid d_{i}$ [[Wiki - 多项式整除的性质]]

所以 t=1

## Pro 1

```ad-proposition
title: Propositon 1

如果整系数多项式 f (x) 可以分解成次数大于等于 1 的有理系数多项式乘积，则可以分解成次数大于等于 1 的整系数多项式乘积


```
**另一种表述：多项式在 $\mathbb{Z}$ 上不可约等价于在 $\mathbb{Q}$ 上不可约**[[Wiki - 多项式因式分解定理|多项式可约]]


### Proof

设 $f(x)=f_{1}(x)f_{2}(x)=c_{1}c_{2}g_{1}(x)g_{2}(x)$

$g_{1},g_{2}$ 为本原多项式

由 [[#Cal 1]]，$g_{1}(x),c_{1}c_{2}g_{2}(x)$ 都是整系数多项式

