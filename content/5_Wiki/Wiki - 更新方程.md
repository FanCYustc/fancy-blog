---
aliases:
  - 更新密度函数
info: 更形过程的更新方程
date: 2024-04-16-星期二 16:08
update: 
tags:
  - wiki/year2024
  - 随机过程/更新过程
  - wiki/month03
id: wiki20240416160829
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 N (t) 分布

```ad-proposition
title: Propositon 1

```
记 $m(t)=E[N(t)]$，称为更新函数，对更新过程[[Wiki - 更新过程]]有

$P (N (t)\geq n)=P (S_{n}\leq t)=F^{(n)}(t)$，表示 n 次卷积 [[Wiki - 卷积]]

从而有 $m(t)=\sum_{n=1}^{+\infty}P(N(t)\geq n)=\sum_{n=1}^{+\infty}F^{(n)}(t)$





## The 1 更新方程
```ad-theorem
title: Theorem 1


$$m(t)=F(t)+\int_0^tm(t-x)\mathrm{~d}F(x),\quad t\geq0.$$

称为**更新方程**

```

## Def 1 更新密度函数
```ad-definition
title: Definition 1


$$m^{\prime}(t)=f(t)+\int_0^tm^{\prime}(t-x)f(x)\mathrm{d}x=\sum_{n=1}^{+\infty}f^{(n)}(t)
$$

称为更新**密度函数**。意义：

$$
P((t,t+\Delta t)有更新发生)=m'(t)\Delta t+o(\Delta t)
$$

即表示更新在 t 发生的强度

```
