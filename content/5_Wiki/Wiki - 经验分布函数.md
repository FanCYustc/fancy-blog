---
aliases: 
info: 经验分布函数的收敛性
date: 2024-03-01-星期五 10:54
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计
  - 概率论/极限理论
id: wiki20240301105400
banner: "![[astrowalk.gif]]"
---
---

## Def 1 经验分布函数

对样本集，经验分布函数为 

$$
F_{n}(x)=\frac{1}{n}\sum_{i=1}^{n}I(X_{i}\leq x)
$$

## Pro 1 

```ad-proposition
title: Propositon 1

经验分布函数的值域为 $\frac{1}{n}, \frac{2}{n},\dots,1$

$$
P\left( F_{n}(x)= \frac{k}{n} \right)= P\left( \sum I(X_{i}\leq x)=k \right)=C_{n}^{k} F(x)^{k}(1-F(x))^{n-k}
$$

所以有 $nF_{n}(x)\sim B(n,F(x))$ [[Wiki - 二项分布]]

```

## Cal 1 

由中心极限定理 [[Wiki - 中心极限定理]]

$$\frac{\sqrt{n}(F_n(x)-F(x))}{\sqrt{F(x)(1-F(x))}}\overset{\mathcal{L}}{\operatorname*{\to}}N(0,1)$$

## Pro 2 Glivenko-Cantelli Theorem

```ad-proposition
title: Propositon 2


$$
sup_{x}(F_{n}(x)-F(x))\to 0 \space a.s.
$$

[[Wiki - 几乎处处收敛]]

```


### Proof

用 DKW 不等式

$$P\left(\sup_{x\in R}|F_n(x)-F(x)|>\epsilon\right)\leq2e^{-2n\epsilon^2}$$




