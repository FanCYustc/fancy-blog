---
aliases: []
info: poison过程的等价定义
date: 2024-03-04-星期一 08:09
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 随机过程/poison过程
id: wiki20240304080920
banner: "![[astrowalk.gif]]"
---
---

前提是基于  [[Wiki - 计数过程]]

## Def 1 poison 过程

```ad-definition
title: Definition 1

计数过程 $\{N(t),t\geq0\}$ 称为强度入的 Poisson 过程，若·

1.  $N(0)=0;$
2. 过程具有**独立增量**；

3. 
$$
N(t+s)-N(s)\sim\mathrm{Poisson}(\lambda t),\forall s,t\geq0.
$$



```
[[Wiki - 泊松分布]]

## Def 2 poison 过程

第二种等价定义：

```ad-definition
title: Definition 2

计数过程 $\{N(t),t\geq0\}$ 称为强度入的 Poisson 过程，若

1. N (0)=0
2. 过程具有平稳增量和独立增量性质；
3. P $(N(h)=1)=\lambda h+\circ(h);$
4. $P(N(h)\geq2)=\circ(h).$


```
Definition 1 and definition 2 's equality need to be proved:

1 推 2 的证明见 Ross [[Book - 随机过程-Ross]] 第二章第一页；

2 推 1 的证明只需证 $N (t)\sim Poi(\lambda t)$，再由平稳增量性即可推到定义 1 的第三条。证明见胡太忠随机过程 PPT [[实用随机过程PPT.pdf]] 2.1 节。



## Def 3 poison 过程

第三种用时间间隔

```ad-definition
title: Definition 3

Suppose 时间间隔为 $0=S_{0}<S_{1}<\dots$

记 $X_{k}=S_{k}-S_{k=1},k=1,2,\dots$

则 poison 过程等价于 $\{X_{n}\}$ i.i.d $\sim Exp(\lambda)$

```

[[Wiki - 指数分布]]

## Cal 1 

一个直接的推论是 $S_{n}$ 服从 $\Gamma(n,\lambda)$ [[Wiki - gamma分布]] [[Wiki - Erlang分布]]


参考：[Poisson过程的等价定义 - 知乎](https://zhuanlan.zhihu.com/p/508147310)

