---
aliases: 
info: 
date: 2024-04-11-星期四 11:12
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/级数
  - 收敛
id: wiki20240411111255
banner: "![[astrowalk.gif]]"
---
---

## The 1 weierstrass 定理

```ad-theorem
title: Theorem 1

设 $D$ 是 $C$ 中的域，如果 (i) $f_n{\in}H(D),n{=}1,2,...;$
(ii) $\sum f_n(z)$ 在 $D$ 中内闭一致收敛到 $f(z)$, 那么

(i) $f\in H (D)$；

(ii) $\forall k,\sum_{n=1}^{+\infty}f_{n}^{(k)}(z)$ 在 D 中内闭一致收敛到 $f^{(k)}(z)$。

```

[[Wiki - 复变函数内闭一致收敛]]

[[Wiki - 全纯函数]]

### Proof

```ad-lemma

设 $D$ 是 $C$ 中的域，$K$ 是 $D$ 中的紧子集，且包含在相对于 $D$ 是紧的开集 $G$ 中，即 $K\subset G\subset\subset D$, 那么对任意 $f\in$ $H(D)$, 均有

$\sup\{|f^{(k)}(z)|:z\in K\}\leqslant C\sup\{|f(z)|:z\in G\}$， 这里，k 是任意自然数，C 是与 $k,K,G$ 有关的常数.

```

[[Wiki - 复变函数内闭一致收敛#Def 2 相对紧]]

用 cauchy 不等式可以证明

详细证明见史济怀《复变函数》 [[Book - 复变函数]] 4.1 节末尾

对 (i) 证明，只需证 f 在 $z_{0}$ 邻域内全纯，利用 
![[Scientech - 复分析-Taylor级数#^8faba8]]

得到 $\int _{\gamma}f(z) \, dz=0$ [[Wiki - cauchy积分定理]]，再利用 [[Wiki - Morera定理]]即证

对结论 (ii)，要利用紧致集合 [[Wiki - 紧致集合]]的性质

