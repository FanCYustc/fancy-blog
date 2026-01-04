---
aliases: 
info: t分布的构造和性质
date: 2023-11-27-星期一 20:56
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/概率分布
id: wiki20231127205604
banner: "![[astrowalk.gif]]"
---
---

## Def 1 t 分布

```ad-definition
title: Definition 1

Pdf 为
$$p_n(x)=\frac{\Gamma((n+1)/2)}{\sqrt{n\pi}\Gamma(n/2)}\left(1+\frac{x^2}n\right)^{-(n+1)/2},\quad x\in\Re.$$

称为自由度为 n 的 **t 分布**



```

## Pro 1 由正态分布生成

```ad-proposition
title: Propositon 1

```
若 $Y_{1}\sim \kappa_{n}^{2},Y_{2}\sim N(0,1)$ [[Wiki - 卡方分布]]且相互独立[[Wiki - 随机变量的独立性]]，则

$$
Z= \frac{Y_{2}}{\sqrt{ \frac{Y_{1}}{n} }}
$$
服从自由度为 n 的 t 分布


N=1 时就是 cauchy 分布 [[Wiki - 柯西分布]]

### Proof 

见概率论[[概率论 (第三版) (苏淳 冯群强).pdf]]第五章三大分布

[[Wiki - 多元正态分布]]

## Cal 1

$\lim_{ n \to \infty }t_{n}(x)=\varphi(x)$，$\varphi$ 为正态分布 [[Wiki - 正态分布]]的 pdf

## Pro 2

$$\left.E(T^r)=\left\{\begin{array}{ll}n^{\frac r2}\frac{\Gamma\left(\frac{r+1}2\right)\Gamma\left(\frac{n-r}2\right)}{\Gamma\left(\frac n2\right)\Gamma\left(\frac12\right)},&r\text{为偶数},\\0,&r\text{为奇数}.\end{array}\right.\right.$$

$r<n$ 时才存在

