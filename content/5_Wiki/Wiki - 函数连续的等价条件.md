---
aliases:
  - 原像
  - 振幅与连续
info: 函数连续的几个判定
date: 2023-08-18-星期五 23:07
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 连续
id: wiki20230818230754
banner: "![[astrowalk.gif]]"
---
---
#数学分析/函数 

[[Wiki - 函数的连续性]]
## Pro 1 连续与数列的关系

```ad-proposition
title: Propositon 1

设 f 是 D 上的函数，那么 f 连续当且仅当对 D 中的任意收敛数 $\text{列}\{x_{n}\},$

且极限 lim $x_{n}=x\in D$ 。数列 $\{f(x_{n})\}$ 也收敛

```


[[Wiki - 数列极限]]


## Def 1 原像

$N\subset \mathbb{R}$ 是函数f 值域的子集合

```ad-definition
title: Definition 1

$$
f^{-1}(N)=\{x\in D\mid f(x) \in N\}
$$
定义为**N关于f的原像**

```

D 为定义域，对 $\forall x\in M\subset D$，if $f (x)\in N$，等价于 $M\subset f^{-1}(N)$


## Pro 2 连续与拓扑

```ad-proposition
title: Propositon 2

设 f 是定义在开集 D 的函数，则 f 连续当且仅当每个开集的原像是开集 


```
[[Wiki - 度量空间的开集闭集]]
### Proof

对 A 是开集，所以对 $\forall x_{0}\inf^{-1}(A),f (x_{0})\in A,\exists \epsilon>0$，$(f (x_{0})-\epsilon, f (x_{0})+\epsilon)\subset A$

由 f 的连续性，且 D 是开集，所以 $\exists \delta>0，s.t.(x_{0}-\delta,x_{0}+\delta)\subset D$，且 $f((x_{0}-\delta,x_{0}+\delta))\subset(f(x_{0})-\epsilon,f(x_{0})+\epsilon)\subset A$

从而 $(x_{0}-\delta,x_{0}+\delta)\subset f^{-1}(A)$ 即 $f^{-1}(A)$ 是开集

## Pro 3 振幅与连续

[[Wiki - 函数的振幅]]

```ad-proposition
title: Propositon 3


1、f 在 $x_{0}$ 连续当且仅当 $\omega_{f}(x_{0})=\lim_{ \delta \to 0^{+} }\omega_{f}(x_{0},\delta)=0$



```

