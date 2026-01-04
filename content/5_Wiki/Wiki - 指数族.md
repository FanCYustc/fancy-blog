---
aliases: 
info: 指数族的定义和性质
date: 2024-03-01-星期五 11:39
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 概率论/概率分布
id: wiki20240301113934
banner: "![[astrowalk.gif]]"
---
---

## Def 1 指数族

```ad-definition
title: Definition 1

A family $\{F_\theta,\theta\in\Theta\}$ of distributions forms an k- dimensional exponential family if the distributions $F_{\theta}$ have densities (pdf/pmf) of the form:

$$
f(x,\theta)=\exp\left[\sum_{i=1}^kQ_i(\theta)T_i(x)-A(\theta)\right]h(x)
$$
 where $A,Q_i$ are functions which map $\theta$ to $\mathbb{R};h(x)>0$ and $T_i(x)$ are statistics.

```

[[Wiki - 概率密度函数]]

[[Wiki - 随机向量的概率密度函数]]

一些常见的分布都是指数族，联合分布也是：如 [[Wiki - 正态分布]] $\Theta= \{(\mu,\sigma^{2})\}$

[[Wiki - gamma分布]]其中 $\theta=(\gamma,\lambda),\gamma>0,\lambda>0$

[[Wiki - 二项分布]]二项分布族 $\{b (n,\theta): 0<\theta<1\}$

[[Wiki - 泊松分布|poison分布]] $\{Poi(\theta): \theta>0\}$

## Pro 1

```ad-proposition
title: Propositon 1

1. 支撑 (support) 为 $\{x: f(x,\theta)>0\}$，由指数族的表达式，知指数族的支撑相同，与 $\theta$ 无关
2. 多个指数族分布的独立随机变量的联合分布还是指数族形式 

```


[[Wiki - 随机向量的分布函数]]

