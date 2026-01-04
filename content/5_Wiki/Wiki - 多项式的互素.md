---
aliases:
  - 裴蜀定理推论
info: 多项式互素的定义和性质
date: 2023-09-11-星期一 09:05
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
  - 数论
id: wiki20230911090525
banner: "![[astrowalk.gif]]"
---
---

## Def 1 互素
```ad-definition
title: Definition 1


若 gcd (f, g)=1, 则 f 与 g 互素 [[Wiki - 多项式最大公因式]]

```


## Pro 1

```ad-proposition
title: Propositon 1

1. Gcd (f, g)=1->gcd (f, h)=gcd (f, gh)
2. Gcd (f, g)=1, f|h, g|h->fg|h


```

## Pro 2 裴蜀定理

[[Wiki - 多项式的裴蜀定理#Pro 1]]

```ad-note

推广：可以去满足式子的 u, v 满足 $\deg u<\deg g, \deg v<\deg f$

```

Proof:

若 $\deg u>\deg g$, 取 u 除 g 的余式 $u_{0}(x)$，取 v 除 f 的余式 $v_{0}(x)$
$$
(q_{1}g+u_{0})f+(q_{2}f+v_{0})g=1
$$
所以
$$
(q_{1}+q_{2})fg=1-u_{0}f-v_{0}g
$$
比较次数得 $q_{1}+q_{2}=0\quad \Box$

