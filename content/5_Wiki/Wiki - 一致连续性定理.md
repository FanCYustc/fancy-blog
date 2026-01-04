---
aliases:
  - 开覆盖的勒贝格数
info: 勒贝格数，一致连续性定理
date: 2023-08-19-星期六 09:15
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 连续
id: wiki20230819091538
banner: "![[astrowalk.gif]]"
---
---
#数学分析/函数 

## Def 1 lebesgue number

```ad-definition
title: Definition 1

对 f 连续, 对任意 $\epsilon>0$ 以及任意的 $x\in E$, 总存在包含 x 的开邻域 $U_{x}$, 使得

$$
|f(y)-f(z)|<\varepsilon 
$$

对所有 y, $z\in U_{x} \cap E$ 成立，从而 $\{U_{x}:x\in E\}$ 是 E 的一个开覆盖
我们将证明存在一个只与 $\epsilon$ 有关的正数 $\delta$, 使得对任意 $y, z\in E$, 当 $|y-z|<\delta$ 时就存在上述某个 $U_{x}$, 包含 y, z，因此, $\text{当}|y-z|<\delta\text{时}$

$$
\mid f(y)-f(z)\mid \leq \mid f(y)-f(x)\mid +\mid f(x)-f(z)\mid <2\epsilon
$$
一致连续；$\delta$ 称为**开覆盖的勒贝格数**


```

[[Wiki - 紧致集合]]


## The 1 一致连续性定理

```ad-theorem
title: Theorem 1

```
F 为紧致集合 E 上的连续 [[Wiki - 函数的连续性]]函数，那么它一致连续 [[Wiki - 度量空间上的一致连续性]]

### Proof

固定 $\epsilon$，由连续，$\forall x,\exists \delta_{x}$ 当 $\mid y-x\mid<\delta_{x}$ 时，$\mid f (y)-f (x)\mid< \frac{\epsilon}{2}$

So $\mathcal{A}=\{(x-\delta_{x} / 2,x+\delta_{x} / 2)\mid x\in E\}$ 是一个开覆盖 [[Wiki - 紧致集合#Def 1 开覆盖]]，由于紧致，**存在有限开覆盖** $(x_{i}-\delta_{i},x_{i}+\delta_{i}),i=1,2\dots,N(\delta_{i}= \delta_{x_{i}} / 2)$

Suppose $\delta=min\{\delta_{i},i=1,2,\dots,N\}$

$\forall x, y\in E,\mid y-x\mid<\delta$, suppose $x\in (x_{k}-\delta_{k},x_{k}+\delta_{k})$

$$
\mid y-x_{k}\mid\leq\mid y-x\mid+\mid x-x_{k}\mid<\delta+\delta_{k}\leq \delta_{x_{k}}
$$

So
$$
\mid f(y)-f(x)\mid\leq\mid f(y)-f(x_{k})\mid+\mid f(x)-f(x_{k})\mid<\epsilon
$$



