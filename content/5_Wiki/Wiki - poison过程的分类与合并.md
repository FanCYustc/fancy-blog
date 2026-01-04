---
aliases: 
info: poison过程划分与合并
date: 2024-04-15-星期一 19:34
update: 
tags:
  - wiki/year2024
  - 随机过程/poison过程
  - wiki/month03
id: wiki20240415193408
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 分类

```ad-proposition
title: Propositon 1

```
Poisson 过程 [[Wiki - poison过程]] 事件分类设时刻 s 发生的事件以概率 $p(s)$ 划入丨型，以概率 $1-p(s)$ 划入 II 型。$N_i(t)=(0,t]$ 时段发生的 i 型事件个数，$i=1,2.$

设 $\{N(t),t\geq0\}$ 为 HPP $(\lambda)$, 则 $N_1(t)$ 与 $N_2(t)$ 独立 [[Wiki - 随机变量的独立性]]，且 $N_1(t)\sim\operatorname{Poisson}(\lambda pt)$, $N_2(t)\sim\operatorname{Poisson}(\lambda(1-p)t)$, [[Wiki - 泊松分布]] 其中

$$
p=\frac1t\int_0^tp(s)\operatorname{d}s,\quad t>0.
$$



### Proof

求 
$$
P (N_{1}(t)=n, N_{2}(t)=m)=P (N_{1}(t)=n, N_{2}(t)=m|N (t)=m+n)\cdot P(N(t)=m+n)
$$

[[Wiki - 条件概率与独立性]]利用 [[Wiki - poison过程的性质#Pro 1 与次序统计量]]的性质

还需要验证 $N_{1}(t) 和 N_{2}(t)$ 均满足 poison 过程的定义

具体见胡太忠实用随机过程第 2 章讲义

## Pro 2 合并

```ad-proposition
title: Propositon 2

设 $\{N_i(t),t\geq0\}$ 为 HPP $(\lambda_i),\quad i=1,2$, 且两个过程相互独立，记 $N(t)=N_{1}(t)+N_{2}(t)$，则

$$
\{N(t),t\geq0\}\text{ 为 HPP }(\lambda_1+\lambda_2).
$$


```

可自然推广到有限个 poison 过程之和

### Proof

逐一验证 poison 过程定义一的三条即可