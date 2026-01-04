---
aliases: 
info: 
date: 2023-10-24-星期二 10:14
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 线性代数/多项式
id: wiki20231024101451
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 多项式卷积还是多项式

```ad-proposition
title: Propositon 1

如果 $g$ 是多项式，$f$ 连续且**在一个有限区间之外取值为零**，那么 $f*g$ 仍然是多项式. [[Wiki - 卷积]]


```
### Proof

$$\begin{aligned}
\text{事实上,如果}& g(x)=\sum_{k=0}a_{k}x^{k},\text{那么}  \\
f*g(x)& =\int_{-\infty}^{\infty}g(x-y)f(y)\mathrm{d}y  \\
&=\int_{-\infty}^{\infty}\left(\sum_{k=0}^{n}a_{k}(x-y)^{k}\right)f(y)\mathrm{d}y \\
&=\int_{-\infty}^\infty\sum_{k=0}^n\sum_{j=0}^k{(-1)^{k-j}a_k}{\left(\begin{array}{c}k\\j\end{array}\right)}x^jy^{k-j}f(y)\mathrm{d}y \\
&=\sum_{j=0}^nb_jx^j.
\end{aligned}$$

还是一个多项式，其中

$$b_{j}=\sum_{k=j}^{n}{(-1)^{k-j}}a_{k}{\left(\begin{array}{c}{k}\\{j}\end{array}\right)}\int_{-\infty}^{\infty}{y^{k-j}}f(y)\mathrm{d}y$$

[[Wiki - 多项式的运算]]


