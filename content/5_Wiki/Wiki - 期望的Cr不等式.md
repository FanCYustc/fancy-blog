---
aliases: 
info: 期望的Cr不等式
date: 2023-11-02-星期四 14:59
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/期望方差
id: wiki20231102145909
banner: "![[astrowalk.gif]]"
---
---

## The  1 Cr 不等式

 ```ad-theorem
title: Theorem 1

设 $r>0,X_i\in\mathcal{L}_r,i=1,\ldots,n$,  则

$$
\operatorname{E}\left|\sum_{i=1}^nX_i\right|^r\leq C_r\sum_{i=1}^n\operatorname{E}|X_i|^r,
$$
其中当 $r>1$ 时，$C_r=n^{r-1}$; 当 $r\in(0,1]$ 时，$C_r=1$.

```

[[Wiki - 随机变量的矩]]

## Proof

$r>1$ 时，由 $f (x)=|x|^r$ 为凸函数, 由琴生不等式[[Wiki - Jensen不等式]]
$$|\frac1n\sum_{i=1}^nX_i|^r\leq\frac1n\sum_{i=1}^n|X_i|^r,$$


对 $0<r\leq 1$，
$$
(1+x)^r\leq1+x\leq1+x^r,\quad x\in[0,1],
$$

我们得到 $|x_1+x_2|^r\leq|x_1|^r+|x_2|^r$, 进而有

$$\left|\sum_{i=1}^nX_i\right|^r\leq\sum_{i=1}^n|X_i|^r.$$

