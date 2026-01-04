---
aliases: 
info: 记录值的定义及性质
date: 2023-10-23-星期一 09:47
update: 2023-10-23-Monday 10:08:04
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机变量
id: wiki20231023094737
banner: "![[astrowalk.gif]]"
---
---

## Def 1 记录值

[[Wiki - 随机向量的次序统计量]]

```ad-definition
title: Definition 1

对同分布随机变量 $X_{1},X_{2},\dots$，

若 $X_{n}=\max\{X_{1},\dots,X_{n}\}$，称 $X_{n}$ 为一个**记录值**


$$
\left.I_j=\left\{\begin{array}{ll}1,&X_j\text{是一个纪录值},\\0,&X_j\text{不是纪录值}.\end{array}\right.\right.
$$

记 $Z_n=\sum^nI_j$, 那么 $Z_n$ 就是前 $n$ 个随机变量中的**纪录值出现的次数.**

```

设记录值产生的时刻分别为 $S_{1},S_{2},\dots$，产生的值为 $R_{1},R_{2},\dots$


## Pro 1 renyi 定理

```ad-proposition
title: Propositon 1

设 $\{X_n,n\geq1\}$ iid $\sim F$, 且 F 连续，则

$(1)\{max_{n},n\geq1\}$ 为独立随机变量序列 （到时刻 n 的记录值），且

$$
\mathrm{P}\left(R_n=k\right)=\frac1n,\quad k=1,\ldots,n.
$$
 $(2)\:\{I_n,n\geq1\}$ 是独立的 Bernoulli 随机变量序列，且

$$
\mathcal{P}\left(I_n=1\right)=\frac1n,\quad\mathcal{P}\left(I_n=0\right)=1-\frac1n.
$$



```

## Pro 2 

记记录值产生时间间隔为 $\tau_{i}=S_{i+1}-S_{i},i=0,1,2,\dots$，设 $X_{n}\sim i.i.d \space F$，求 $\tau_{n}$ 的分布

对任意于 $(\ell,u)$ 上（F 的支撑区间）**严格单调的函数** $h$, 下面两个序列

$$
X_1,\quad X_2,\quad\ldots,\quad X_n,\quad\ldots 
$$
与
$$
h(X_1),\quad h(X_2),\quad\ldots,\quad h(X_n),\quad\ldots 
$$

创记录的时刻是相同的，因此创记录的时间间隔 $\tau_\mathrm{i}$ 对应相同。**因此不妨设 h=F**

```ad-lemma

因为 $F(X_{1}),\dots,F(X_{n}),\dots$ i.i.d $\sim U(0,1)$ 

```

[[Wiki - 分布函数]]

所以结果与 F 的形式无关，不妨取指数分布 [[Wiki - 指数分布]] $F=Exp(1)$

$$\begin{aligned}\text{对 }&\mathrm{~}\forall s>0,t>0,\\&\mathrm{~P}\left(R_{i+1}>t|R_i=s\right)=\sum_{k=0}^\infty(1-e^{-s})^k\cdot e^{-t}=e^{-(t-s)}.\end{aligned}$$

```ad-theorem

```
所以 $R_{1},R_{2}-R_{1},\dots$ 独立同分布于 Exp (1)（独立需要由定义验证[[Wiki - 随机变量的独立性]]）

可以求出，$R_{i}\sim \Gamma(i,1)$ [[Wiki - gamma分布]]
$$f_{R_i}(x)=\frac{e^{-t}t^{i-1}}{(i-1)!},\quad t>0.$$

求条件概率

$$\begin{aligned}
\mathrm{P}\left(\tau_i>k\right)& =\quad\mathrm{E}\left\{\mathrm{P}\left(\tau_i>k|R_i\right)\right\}  \\
&=\quad\int_0^\infty\mathbb{P}\left(\tau_i>k|R_i=t\right)\cdot\frac1{(i-1)!}e^{-t}t^{i-1}\operatorname{d}y \\
&=\quad\int_0^\infty(1-e^{-t})^k\cdot\frac1{(i-1)!}e^{-t}t^{i-1}\operatorname{d}y.\quad\blacksquare 
\end{aligned}$$



