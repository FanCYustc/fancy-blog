---
aliases: 
info: 算术平均依概率收敛于期望
date: 2023-12-17-星期日 17:03
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 概率论/极限理论
id: wiki20231217170332
banner: "![[astrowalk.gif]]"
---
---

## The1 Khintchine 弱大数律

 ```ad-theorem
title: Theorem 1

设 $\{X_n,n\geq1\}$ iid, 满足  $EX_1=a\in\Re$, 则

$$
\frac{S_n}n\xrightarrow{P}a.
$$


```

[[Wiki - 依概率收敛]]

[[Wiki - 弱大数律]]

**条件需要独立同分布**[[Wiki - 随机变量的独立性]]

### Proof

记 $f_n ( t) = \mathbf{E} \exp \left \{ \mathrm{i} t\frac {S_n- na}n\right \}$，则有

$$f_n(t)=\prod\limits_{k=1}^n\mathbf{E}\exp\left\{\text{i}t\frac{X_k-a}{n}\right\}=\left(\mathbf{E}\exp\left\{\text{i}t\frac{X-a}{n}\right\}\right)^n.$$

 由于 $X-a\in L_1,\:\mathbf{E}(X-a)=0,\:$ 所以由第 5 章关于特征函数在 $t=0$ 处的 Taylor 展开式知，对任何 $t\in\mathbb{R}$, 都有

$$
\mathbf{E}\exp\left\{\text{i}t\frac{X-a}{n}\right\}=1+o\left(\frac{t}{n}\right),\quad n\to\infty,
$$
所以
$$
f_{n}(t)\to 1(n\to +\infty)
$$

可以得到 $\frac {{S_{n}-na}} {n}\xrightarrow{p} 0$

[[Wiki - 特征函数的展开]]
