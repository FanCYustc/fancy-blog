---
aliases: 
info: Minkowski不等式
date: 2023-11-11-星期六 17:24
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 不等式
  - 概率论/期望方差
id: wiki20231111172408
banner: "![[astrowalk.gif]]"
---
---

## The 1 Minkowski 不等式

```ad-theorem
title: Theorem 1


$$
\begin{aligned}
&\text{设}a_i>0,b_i>0(1\leqslant i\leqslant n),p>1,\text{则}\\&\left(\sum_{i=1}^n(a_i+b_i)^p\right)^{\frac1p}\leqslant\left(\sum_{i=1}^na_i^p\right)^{\frac1p}+\left(\sum_{i=1}^nb_i^p\right)^{\frac1p}
\end{aligned}
$$


```

对于一般函数的情形，为 $\mid\mid f+g\mid\mid_{p} \leq \mid\mid f\mid\mid_{p} + \mid\mid g\mid\mid_{p},\forall f, g\in L^{p}(E)$

由于度量空间的要求，**p>1** 是必须的

## Proof

$$
\begin{aligned}
\begin{aligned}\sum_{i=1}^n(a_i+b_i)^p\end{aligned}& =\sum_{i=1}^na_i(a_i+b_i)^{p-1}+\sum_{i=1}^nb_i(a_i+b_i)^{p-1}  \\
&\leqslant\left(\sum_{i=1}^na_i^p\right)^{\frac1p}\left(\sum_{i=1}^n(a_i+b_i)^{(p-1)q}\right)^{\frac1q} \\
&+\left(\sum_{i=1}^nb_i^p\right)^{\frac1p}\left(\sum_{i=1}^n(a_i+b_i)^{(p-1)q}\right)^{\frac1q} \\
&=\Big[\Big(\sum_{i=1}^na_i^p\Big)^{\frac1p}+\Big(\sum_{i=1}^nb_i^p\Big)^{\frac1p}\Big]\Big(\sum_{i=1}^n(a_i+b_i)^p\Big)^{\frac1q}.
\end{aligned}
$$

According to [[Wiki - Holder不等式]]。其中 $\frac{1}{p}+ \frac{1}{q}=1$

对一般函数则是利用 holder 不等式的 $L^{p}$ 可积函数的形式，具体证明见[[实分析讲义-于树澄.pdf]] 第 13 节
