---
aliases: 
info: 
date: 2024-06-25-星期二 17:19
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/brown运动
id: wiki20240625171941
banner: "![[astrowalk.gif]]"
---
---

## Def 1 几何 brown 运动

$\{X(t)\}$ 为 brown 运动 [[Wiki - brown运动]]

称 $e^{X(t)}$ 为几何 brown 运动

## Def 2 吸收 brown 运动

给定 $x>0$， 定义
$$
Z(t) = \begin{cases}
X(t),\quad t<T_{x} \\
x, t>T_{x}
\end{cases}
$$

则有

1、$P (Z (t)=x)= P (T_{x}\leq t)= 2P(X(t)\geq x)$ [[Wiki - brown运动的击中时和最大值]]

2、对 $\forall y<x$,
$$\begin{aligned}
\mathbb{P}\left(Z(t)\leq y\right)&=\mathbb{P}\left(X(t)\leq y,\max_{0\leq s\leq t}X(s)<x\right) \\
&=\mathrm{P}\left(X(t)\leq y\right)-\mathrm{P}\left.\left(X(t)\leq y\right|\max_{0\leq s\leq t}X(s)\geq x\right)\times\mathrm{P}\left.\left(\max_{0\leq s\leq t}X(s)\geq x\right)\right.\\&=\mathrm{P}\left(X(t)\leq y\right)-\mathrm{P}\left.\left(X(t)\geq2x-y\right|\max_{0\leq s\leq t}X(s)\geq x\right)\times\mathrm{P}\left.\left(\max_{0\leq s\leq t}X(s)\geq x\right)\right.\\&=\mathrm{P}\left(X(t)\leq y\right)-\mathrm{P}\left(X(t)\geq2x-y\right).
\end{aligned}$$

利用对称性


## Pro 1

```ad-proposition

对标准 brown 运动 $\{B(t)\}$，定义

$$
X(t) = \begin{cases}
B(t), \quad t\leq s \\
2B(s)-B(t), \quad t>s
\end{cases}
$$
也为标准 brown 运动。
```


### Proof

逐一验证 brown 运动的条件

## Pro 2 布朗运动的标度不变性与自相似性

```ad-proposition
title: 标度不变性/自相似性 (Scaling Property / Self-Similarity)

标准布朗运动 $\{B_t, t \ge 0\}$ 具有标度不变性（或自相似性）。具体来说，对任意常数 $c > 0$，定义一个新的随机过程 $\{X_t, t \ge 0\}$ 为：
$$
X_t = \frac{1}{\sqrt{c}} B_{ct}
$$
那么，$\{X_t, t \ge 0\}$ 也是一个标准布朗运动。

```