---
aliases: 
info: 弱大数律的内容
date: 2023-11-30-星期四 14:27
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/极限理论
id: wiki20231130142729
banner: "![[astrowalk.gif]]"
---
---

## The 1 弱大数律

```ad-theorem
title: Theorem 1

设 $\{X_n,\:n\in\mathbb{N}\}$ 为随机变量序列，$S_n=\sum_{k=1}^nX_k$. 如果存在实数序列 $\{a_n,\:n\in\mathbb{N}\}$ 和正数序列 $\{b_n,\:n\in\mathbb{N}\}$, 使得

$$
\frac{S_n-a_n}{b_n}\xrightarrow{p}0,
$$

亦即

$$
\lim_{n\to\infty}\mathbf{P}\left(\left|\frac{S_n-a_n}{b_n}\right|\geqslant\varepsilon\right)=0,\quad\forall\varepsilon>0,
$$
就说 $\{X_n,\:n\in\mathbb{N}\}$ **服从弱大数律**，其中 $\{a_n,\:n\in\mathbb{N}\}$ 称为**中心化数列**，$\{b_n,\:n\in\mathbb{N}\}$ 称为**正则化数列**. 
```

[[Wiki - 依概率收敛]]


```ad-note

一般情况下，取 $a_{n}=ES_{n},b_{n}=n$，这样的 $a_{n}$ 与 $S_{n}$ 有关，且 $b_{n}$ 增长速度也不是很快，可以体现一些随机变量序列的性质

```

[[Wiki - 数学期望]]


