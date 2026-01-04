---
aliases: 
info: 数学期望的性质
date: 2023-11-02-星期四 14:33
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/期望方差
  - 概率论/特征
id: wiki20231102143300
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 期望的性质

```ad-proposition
title: Propositon 1

假设 X, Y 的期望存在有限，则 E 满足
1. 线性性：$E[aX]=aEX,\quad\forall\:a\in\Re;\quad\mathbb{E}[X+Y]=\mathbb{E}X+\mathbb{E}Y.$ 
2. 非负性： 若 $X\geq0$, 则  $EX\geq0.$
3. 单调性： 若 $X\geq Y$, 则 $EX\geq EY.$

```

 [[Wiki - 数学期望]]

期望就是在概率测度下的积分 [[Wiki - lebesgue积分]]，所以 [[Scientech - 实分析-lebesgue积分]]中的各种收敛定理对于随机变量 $X$ 也同样适用
## Pro 2 独立变量期望的性质

```ad-proposition
title: Propositon 2

设 $X,Y$ 相互独立，若 EX, E Y 存在有限，则 $E[XY]$ 存在，且

$$
\operatorname{E}\left[XY\right]=\operatorname{E}X\cdot\operatorname{E}Y.
$$


```

[[Wiki - 随机变量的独立性]]

## Cal 1

设 X 为 $(\Omega, \mathcal{F}, P)$ 上的随机变量，若 $\forall A\in \mathcal{F}, E[X \mathbb{1}_{A}]=0$，则 $X=0 \space a.e.$

## Cal 2 

对 $( \Omega, \mathcal{F},P)$ 上的两个随机变量 $X_{1},X_{2}$，若有 $p>0$

$$
E[|X_{1}-X_{2}|^{p}]=0
$$
则有 $X_{1}=X_{2}\space a.e.$

