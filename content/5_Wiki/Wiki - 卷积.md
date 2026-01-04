---
aliases: 
info: 卷积的定义和性质
date: 2023-10-16-星期一 10:13
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 数学分析/积分
  - 实分析/lebesgue积分
id: wiki20231016101308
banner: "![[astrowalk.gif]]"
---
---

## Def 1 卷积
```ad-definition
title: Definition 1


$$
f*g(x)=\int _{-\infty}^{+\infty} f(u)g(x-u)\, du 
$$
称为 f 和 g 的**卷积**。

```

## Example 1 分布函数的卷积

[[Wiki - 连续随机变量的和#Pro 1 连续型随机变量的和]]


$$Z_{k}=\sum_{i=0}^{k}p_{i}q_{k-j},\quad k=0,1,\cdots.$$

为离散形式的卷积

## Pro 1 

```ad-proposition
title: Propositon 1

```
1. 若 f，g 都有定义，则 $f*g=g*f$，都有定义

2. 若 $f, g\in L^{1}(\mathbb{R}^{d})$，[[Wiki - lebesgue积分]]，则 $f*g\in L^{1}(\mathbb{R}^{d})$，且有 $\mid\mid f*g \mid\mid\leq \mid\mid f\mid\mid \cdot\mid\mid g\mid\mid$ [[Wiki - Lp线性空间]]

3. If $f\in L^{1}(\mathbb{R}^{d})$，g 有界，则 $f*g$ 一致连续 [[Wiki - 度量空间上的一致连续性]]




