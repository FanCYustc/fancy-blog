---
aliases:
  - 辅助统计量
info: 
date: 2024-03-15-星期五 10:48
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/统计量
id: wiki20240315104853
banner: "![[astrowalk.gif]]"
---
---

## Def 1 辅助统计量

```ad-definition
title: Definition 1

如果一个统计量 V 的分布与参数 $\theta$ 无关，则称 V 是辅助统计量

```


**与最后推断参数无关，但有用**

## def 2 第一辅助

A statistic R is first-order ancillary if $E_\theta[R]$ does not depend on $\theta$

## Def 3 完全统计量

```ad-definition
title: Definition 3

称 T 为完全统计量，如果**不存在 T 的非常数函数 h**，使得对任意 $\theta,E_{\theta}(h(T))=const$

即不存在 h 使得 $h(T)$ 为第一辅助的（考虑的是任意函数h）

```


换句话说如果 $E_{\theta}(h(T))=0$ 对任意 $\theta$ 成立，可以推出 h **几乎处处为 0**，那么 T 是完全统计量


## The 1

```ad-theorem
title: Theorem 1

```
对于满秩的指数族 [[Wiki - 指数族]]，对于最小充分统计量 [[Wiki - 最小充分统计量]] $T(x)=(T_{1}(x),\dots,T_{k}(x))$，**如果指数族的样本空间包含内点**[[Wiki - 度量空间的内部外部#Definition 1 内点外点边界点]]，那么 T 是完全的

