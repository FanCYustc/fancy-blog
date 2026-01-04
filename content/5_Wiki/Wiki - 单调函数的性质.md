---
aliases: 
info: 单调函数的性质
date: 2023-08-19-星期六 10:20
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230819102025
banner: "![[astrowalk.gif]]"
---
---
#数学分析/函数 

## Pro 1

```ad-proposition
title: Propositon 1

开区间上的单调函数至多有可数个不连续点

```


[[Wiki - 可数集合]]、[[Wiki - 实数域的开集闭集]]

### Proof

单调递增函数的任何不连续点 $x \in (a, b)$ 均为跳跃不连续点，即存在跳跃大小 $\Delta f(x) = f(x^+) - f(x^-) > 0$，其中 $f(x^-) = \lim_{y \to x^-} f(y)$，$f(x^+) = \lim_{y \to x^+} f(y)$（由单调性，$f(x^-) \leq f(x) \leq f(x^+)$，且不连续意味着 $f(x^-) < f(x^+)$）。

对于每个不连续点 $x_k$，定义开区间 $I_k = (f(x_k^-), f(x_k^+))$。这些区间 $I_k$ 与有理数集 $\mathbb{Q}$ 相交非空（因为开区间长 $>0$），且 $I_j \cap I_k = \emptyset$ 对于 $j \neq k$（否则矛盾于单调性：若 $x_j < x_k$，则 $f(x_j^+) \leq f(x_k^-)$，区间不相交）。

因此，不连续点集合 $\{x_k\}$ 与 $\mathbb{Q}$（可数集）存在单射（每个 $I_k$ 选一个有理数），故 $\{x_k\}$ 可数。



