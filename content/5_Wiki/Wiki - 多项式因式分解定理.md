---
aliases:
  - 多项式可约
  - reducible
  - 标准分解式
info: 可约多项式、因式分解定理及唯一性
date: 2023-09-13-星期三 11:44
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230913114438
banner: "![[astrowalk.gif]]"
---
---

## Def 1 可约

```ad-definition
title: Definition1


如果 F[x]中次数≥1 的多项式 f (x) 能够分解为 F[x]中两个次数≥1 的多项式 $f_{1}(x),f_{2}(x)$ 的乘积，就称 f (x) 在数域上可约（reducible）. 如果不能作这样的分解，就称 f（x) 是数域 F 上的不可约多项式

```

[[Wiki - 多项式最大公因式]]

## Pro 1 可约多项式性质

1、一次多项式不可约
2、p (x) 不可约，$f (x)\in F[x]$，则 $p (x)\mid f (x) 或gcd(p,f)=1$
3、$f, g\in F[x]$，p (x) 不可约，$p(x)\mid f(x)g(x)\to p(x)\mid f或p(x)\mid g(x)$

[[Wiki - 多项式整除的性质]]

类似数论中素数的角色

## The 1 因式分解定理

```ad-theorem
title: Theorem 1


数域 F 上每一个次数≥1 的多项式 f (x) 可以分解为 $F[x]$ 中有限个不可约多项式的乘积，并且分解式在如下的意义下是唯一的。

```

**在同一个域中唯一，不同的域不一定**[[Wiki - 数域]]
### Proof

存在性：对 n 归纳
唯一性：假设有两个证相同。

## Def 2 标准分解式

```ad-definition
title: Definition 2


$$
f(x)=cp_{1}(x)^{n_{1}}p_{2}(x)^{n_{2}}\dots p_{k}(x)^{n_{k}}
$$

其中 $p_{i}(x)$ 均为不可约的首一多项式，$n_{i}\in \mathbb{Z}^{+}$

这样的分解式称为**标准分解式**

```
