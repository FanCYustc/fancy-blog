---
aliases: 
info: 
date: 2024-05-10-星期五 10:17
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240510101736
banner: "![[astrowalk.gif]]"
---
---

## Def 1 单调似然比分布族

```ad-definition
title: Definition 1

The family of models (sample pdfs or pmfs) $\{f (x, \theta) : \theta \in \Theta\}$ with Θ ⊂ R is said to be a **monotone likelihood ratio (MLR) family** in T if for $\theta_{1} < \theta_{2}$,

(1) the distribution f(x, θ1) and f(x, θ2) are distinct

(2) there exists a **one-dimensional statistic T (x)** such that the ratio $f (x; \theta_{2}) /f (x; \theta_{1})$ is a monotone function of T (x).

```

似然比 [[Wiki - 似然比检验]] 用于 
![[Wiki - Neyman-Pearson引理#The 1 N-P 基本引理]]

特别的，对于**单参数指数族**分布 [[Wiki - 指数族]]，只要要求 $Q(\theta)$ 是单调函数，单参数指数族分布就是单调似然比分布族

## The 1 Karlin-Rubin 定理

```ad-theorem
title: Theorem 1

Consider testing problem $H_0: \theta \leq \theta _0\leftrightarrow H_1: \theta > \theta _0.$ Suppose $T( X)$ $is$ $a$ sufficient statistic  for $\theta$ and the family of pdfs or pmfs $\{ f( t; \theta ) : \theta \in \Theta \}$ for the sufficient statistic. T has a **nondecreasing MLR**. Then for any $t_0$, the test

$$\begin{aligned}\phi(T)=\left\{\begin{array}{cc}1,&T>t_0\\r,&T=t_0\\0,&T<t_0\end{array}\right.
\end{aligned}$$

is a UMP level  $\alpha$ test of $H_0\leftrightarrow H_1$, where $\alpha=E_{\theta_0}\phi (T)$.


```

[[Wiki - 充分统计量]]

[[Wiki - 一致最优检验]]

即如果分布族是关于充分统计量是非降单调似然比分布，则假设 $H_{0}:\theta\leq \theta_{0}\leftrightarrow H_{1}:\theta>\theta_{0}$ 存在 UMPT

 这个定理说明在满足一些条件时 [[Wiki - Neyman-Pearson引理]]可以由两点假设推广到双边假设

在《数理统计》课本上，对指数族，要求指数族的 $Q(x)$ 严格单调，且 $\Theta$ **有内点** 则 T（x）是充分统计量

如果分布是非增单调似然比分布族，则将对 T 的范围和 $\varphi(x)$ 的判定反过来；如果假设变成 $H_{0}: \theta\geq \theta_{0}\leftrightarrow H_{1}:\theta<\theta_{0}$，则对非降单调似然比分布族同样将 T 与 $\varphi(x)$ 的判定不等号反号

 
