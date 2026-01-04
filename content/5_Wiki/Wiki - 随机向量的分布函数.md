---
aliases:
  - 联合分布函数
info: 随机向量的分布函数
date: 2023-10-07-星期六 10:05
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机向量
id: wiki20231007100528
banner: "![[astrowalk.gif]]"
---
---

## Def 1 联合分布函数

[[Wiki - 随机向量的概念]]

```ad-definition
title: Definition 1

$(X_1,\ldots,X_n)$ 的联合分布函数 (cdf) 定义为

$$
F(\mathbf{x})=\mathrm{P}\left(X_1\leq x_1,\ldots,X_n\leq x_n\right),\quad\forall\mathbf{x}=(x_1,\ldots,x_n)\in\Re^n.
$$




```

[[Wiki - 分布函数]]

## Pro 1 联合分布函数的性质

```ad-proposition
title: Propositon 1

n 维分布函数 F 具有如下性质:

1° $F(\mathbf{x})$ 关于每个变量 $x_i$ 单调递增;

2° $F(\mathbf{x})$ 关于每个变量 $x_i$ 右连续; 

3° $F(\mathbf{x})$ 具有如下意义下的非负性:
$$
\Delta_{(a_1,\ldots,a_n)}^{(b_1,\ldots,b_n)}F=\sum(-1)^{\tau(\mathbf{x})}F(x_1,\ldots,x_n)\geq0,\quad\forall\mathbf{a}\leq\mathbf{b},\mathrm{~a},\mathbf{b}\in\Re^n,
$$
解释：每个 $x_{i}$ 取 $a_{i}或b_{i},a_{i}\leq b_{i}$ ，$\tau(x)$ 为 $x_{i}=a_{i}$ 的个数

4° 
$$\begin{aligned}\quad\lim_{x_{j}\to-\infty}F(x_{1},\cdots,x_{n})&=0,\forall1\leqslant j\leqslant n,\\\lim_{x_{1}\to\infty,\cdots,x_{n}\to\infty}F(x_{1},\cdots,x_{n})&=1;\end{aligned}$$

```

```ad-note

注：性质 3 其实就等于
$$\Delta_{(a_1,\ldots,a_n)}^{(b_1,\ldots,b_n)}F=\mathrm{P}\left(a_1<X_1\leq b_1,\ldots,a_n<X_n\leq b_n\right).$$



```

