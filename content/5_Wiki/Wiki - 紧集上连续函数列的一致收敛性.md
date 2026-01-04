---
aliases: 
info: 
date: 2023-10-12-星期四 09:10
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 收敛
  - 数学分析/级数
id: wiki20231012091031
banner: "![[astrowalk.gif]]"
---
---

## Pro 1

```ad-proposition
title: Propositon 1

```
设 $\{f_n(x)\}$ 是定义在紧致集 D [[Wiki - 紧致集合]] 上的连续函数列[[Wiki - 函数的连续性]], 则 $\{f_n\}$ 一致收敛 [[Wiki - 一致收敛]]于函数 $f$ 当且仅当对 D 内的任意收敛点列 $x_n\to x$, 有

$$
\lim_{n\to\infty}f_n(x_n)\to f(x).
$$



### Proof 

#### 必要性

$$
\mid f_{n}(x_{n})-f(x)\mid\leq \mid f_{n}(x_{n})-f(x_{n})\mid+\mid f(x_{n})-f(x)\mid\to 0
$$

第一部分由一致收敛，第二部分由 f 连续 [[Wiki - 函数项级数一致收敛的性质#Pro1 连续]]

#### 充分性

首先取 $x_{n}=x$，得 $f_{n}$ 逐点收敛到 f

$$|f(x_n)-f(x)|\leqslant|f(x_n)-f_{k_n}(x_n)|+|f_{k_n}(x_n)-f(x)|$$

由收敛对任意的 n 及固定的 $x_{n}$，存在 $k_{n}$ s.t. $\mid f (x_{n})-f_{k_{n}}(x_{n})\mid< \frac{1}{n}$

对第二部分，取 $\{y_{n}\}s.t. x_{n}=y_{k_{n}}$，中间用 x 补上（灌水）

则有条件中收敛的任意性 $f_{k_{n}}(x_{n})=f_{k_{n}}(y_{k_{n}})\to f(x)(n\to \infty)$

所与 f 在 D 中连续 [[Wiki - 函数的连续性]]

证一致收敛：设 $a_{n}=\sup_{x \in D}\{\mid f_{n}(x)-f(x)\mid\}=f_{n}(x_{n})-f(x_{n})$

由 D 的紧致性得 $x_{n}$ 存在 [[Wiki - 紧致集合]]
反证假设存在子列 $\{a_{n_{k}}\}>\epsilon_{0}$
$\exists\{x_{n_{k}}\}$ 子列 $\{x'_{n_{k}}\}$ 收敛于 $x_{0}$
$$
\lim_{ k \to \infty }a_{n'_{k}}=\mid \lim_{ k \to \infty }f_{n'_{k}}(x_{n'_{k}})-\lim_{ k \to \infty }f(x_{n'_{k}})\mid=0   
$$
矛盾



