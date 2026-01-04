---
aliases: 
info: 独立性的一般定义和等价表述
date: 2023-10-12-星期四 14:21
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机变量
  - 概率论/随机向量
  - 独立性
id: wiki20231012142156
banner: "![[astrowalk.gif]]"
---
---

## Def 1 相互独立

更严谨的定义：

如果对任意集族 $\{\mathcal{A}_{i}\}_{i\in I}\subset \mathcal{F}$，称集族 $\{\mathcal{A}_{i}\}$ 相互独立，如果 $\forall A_{k_{i}}\in \mathcal{A}_{k_{i}}$，$k_{1},\dots$ 互不相等，都有  

$$
\mathbf P\!\Bigl(\bigcap_{i}A_{k_{i}}\Bigr)
  =\prod_{i}\mathbf P(A_{k_{i}})
  $$
  [[Wiki - 概率测度]]。特别的，称随机变量 $\{X_{i}\}_{i\in I}$ 相互独立，若 $\{\sigma(X_{i})\}_{i\in I}$ 相互独立。

[[Wiki - 随机变量]]
## cal 1

设 $X_1,\cdots,X_n$ 是定义在同一个概率空间上的 $n$ 个随机变量, 如果它们的联合分布[[Wiki - 随机向量的分布函数|联合分布函数]]等于它们的边缘分布 [[Wiki - 随机向量的边际分布]]的乘积, 即

```ad-definition
title: Definition 1
$$
F(x_1,\cdots,x_n)=\prod\limits_{k=1}^nF_k(x_k),\quad\forall\:(x_1,\cdots,x_n)\in\mathbb{R}^n,
$$

称它们**相互独立**

等价于
$$\mathbf{P}(X_1\leqslant x_1,\cdots,X_n\leqslant x_n)=\mathbf{P}\left(\bigcap\limits_{k=1}^n(X_k\leqslant x_k)\right)=\prod_{k=1}^{n}P(X_{k}\leq x_{k})$$


```

这里用到引理：如果 $\mathcal{A}_{i},\forall i\in I$ 是 $\pi-$ 类，则 $\{\mathcal{A}_{i}\}$ 相互独立 $\leftrightarrow \{\sigma(\mathcal{A}_{i})\}_{i\in I}$ 相互独立 [[Wiki - π-λ定理]]

  
## Pro 1 等价表述

```ad-proposition
title: Propositon 1

相互独立
$$
\leftrightarrow P(a_{1}<X_{1}\leq b_{1},a_{2}< X_{2}\leq b_{2},\dots,a_{n}<X_{n}\leq b_{n})= \prod_{k=1}^{n}P(a_{k}<X_{k}\leq b_{k})
$$

对 $\forall (a_{k}, b_{k})\in \mathbb{R}^{2}$ 成立

```

[[Wiki - 条件概率与独立性]]


## Pro 2 特征函数的判定

随机变量 $X$ 于 Y 相互独立当且仅当

$$
 \mathbb{E} e^{\mathrm{i} ( t_1X+ t_2Y) }= \mathbb{E} e^{\mathrm{i} t_1X}\cdot \mathbb{E} e^{\mathrm{i} t_2Y},  (t_1,t_2)\in\Re^2.$$

[[Wiki - 随机变量的特征函数]]

## Pro 3 判定

X, Y 独立当且仅当对任意可测函数 f, g [[Wiki - 可测函数]]，$E[f (X) g (Y)]= E[f(X)]E[g(Y)]$



