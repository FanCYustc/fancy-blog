---
aliases: 
info: 
date: 2024-01-03-星期三 10:44
update: 
tags:
  - wiki/year2024
  - wiki/month01
  - 线性代数/多线性函数
id: wiki20240103104413
banner: "![[astrowalk.gif]]"
---
---

## Def 1 双重线性函数

```ad-definition
title: Definition 1


$f\in L(V,V,\mathbb{F})$ 称为双线性函数，如果对两个分量 $\in V$，都有线性性。[[Wiki - 线性泛函]]

```

## Pro 1 双线性函数的表示

设 V 中的 $\alpha,\beta$ 在 V 的一组基 $M=\{e_{1},\dots,e_{n}\}$ 下的坐标为 x, y，则 
$$
f(\alpha,\beta)=\sum_{i=1}^{n}\sum_{j=1}^{n}  f(x_{i}e_{i},x_{j}e_{j})=x^{T}Ay
$$

其中 $A=(f(e_{i},e_{j}))_{n\times n}$ 为双线性函数在这组基下的表示

## Def 2 双线性函数的秩

```ad-definition
title: Definition 2

由于在不同基下，双线性函数的方阵表示相合 [[Wiki - 矩阵相合]]，则定义 $rank(f)=rankA$ 为双线性函数的秩，满秩时称为 f 非退化，否则为 f 退化

```
