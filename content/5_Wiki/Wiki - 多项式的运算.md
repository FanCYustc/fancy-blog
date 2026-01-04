---
aliases: []
info: 多项式加法乘法，商和余式
date: 2023-09-06-星期三 11:45
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230906114548
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 多项式环]]
## Pro 1

1、$fg=0\to f=0或g=0$
2、$deg (f+g)\leq max\{deg(f),deg(g)\}$
3、$deg(fg)=deg(f)+deg(g)$
4、$fh=gh, h\neq 0\to f=g$


## The 1 带余除法基本定理

```ad-theorem
title: Propositon

$f (x), g (x)\in F[x]$, $g (x)\neq 0$，so**存在唯一** 的 $q (x), r (x)\in F[x]$ s.t.
$$
f(x)=g(x)q(x)+r(x),deg(r)<deg(g)
$$


```

### Proof

唯一性用反证法
存在性对 n 归纳，辗转相除

```ad-attention

特别的，$r(x)=0$时称g整除f

```



