---
aliases: 
info: 
date: 2024-06-14-星期五 23:02
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/鞅论
id: wiki20240614230209
banner: "![[astrowalk.gif]]"
---
---

## Lemma 1 

```ad-lemma
title: Lemma 1

设 $\left\{Z_n,n\geq1\right\}$ 为下鞅，$f(x)$ 为**单调递增的凸函数**，则$\{f(Z_n),n\geq1\}$ 为下鞅。

```

[[Wiki - 上鞅和下鞅#Def 1 上鞅，下鞅]]

特别的当 $\{Z_{n}\}$ 为鞅时 [[Wiki - 鞅]]，f 只用是凸函数，不需要单增

### Proof

利用 [[Wiki - Jensen不等式]]

## The 1 kolmogorov 不等式

```ad-theorem
title: Theorem 1

对非负下鞅 $\{Z_{n},n\geq 1\}$，$\forall a>0$，

$$
P(\max\{Z_{1},\dots,Z_{n}\}>a)\leq \frac{EZ_{n}}{a}
$$


```

即最大值的分布界只与最后一个随机变量有关

### Proof

利用 [[Wiki - Chebyshev不等式]]

## Cal 1 

$$
\begin{align}
&\{Z_n,n\geq1\}\text{ 为鞅,则对任意 }a>0,\\&\mathrm{P}\left(\max\{|Z_1|,\ldots,|Z_n|\}>a\right)\leq\frac{\mathrm{E}\left|Z_n\right|}{a},\\&\mathrm{P}\left(\max\{|Z_{1}|,\ldots,|Z_{n}|\}>a\right)\leq\frac{\mathrm{E}\left[Z_{n}^{2}\right]}{a^{2}}.
\end{align}
$$

这里要求为**是鞅**

