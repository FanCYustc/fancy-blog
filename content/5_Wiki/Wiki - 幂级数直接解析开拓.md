---
aliases:
  - 正则点
info: 幂级数直接解析开拓
date: 2024-05-16-星期四 11:07
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析/全纯开拓
id: wiki20240516110758
banner: "![[astrowalk.gif]]"
---
---

## The 1 直接解析开拓

设幂级数 $f (z)= \sum_{n=0}^{+\infty}a_{n}z^{n}$ 的收敛半径为 R [[Wiki - 全纯函数的幂级数表示]]

对 $z_{0}\in B(0,R)$，设可 Taylor 展开 [[Wiki - 全纯函数的Taylor展开]] 为 $\sum_{n=0}^{+\infty} \frac{f^{(n)}(z_{0})}{n!} (z-z_{0})^{n}=g(z)$，其收敛半径为 $\rho$，则 $\rho\geq R-|z_{0}|$

```ad-definition
title: Definition 1

1、$\rho> R-|z_{0}|$，则取全纯开拓

$$
F(z) = \begin{cases}
f(z)\quad z\in B(0,R)\\ 
g(z) \quad z\in B(z_{0},\rho) 
\end{cases}
$$

由于有 $f=g, \forall z\in B(0,R)\cap B(z_{0},\rho)$，所以 F 单值全纯，称为 f 得到**直接解析开拓**，$z_{0}$ 称为 f 的**正则点**

2、$\rho=R-|z_{0}|$，$z_{0}$ 称为 f 的**奇点**

```

 [[Wiki - 全纯开拓]]
## Pro 1   

```ad-proposition
title: Propositon 1

幂级数在其收敛圆周上至少有一个奇点

```

### Proof

反证：如果圆周上全是正则点，则由于 $\partial B(0,R)$ 为紧集 [[Wiki - 紧致集合]]，所以存在有限 $B(z_{k},\rho_{k})$ 的覆盖

由唯一性定理 [[Wiki - 唯一性定理]]，可证不同的小圆重叠部分相同，做直接解析开拓得到更大的单值全纯函数

见史济怀 [[Book - 复变函数]]第六章 6.2 节证明

