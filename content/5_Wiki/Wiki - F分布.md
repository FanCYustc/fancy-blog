---
aliases: 
info: F分布的构造和定义
date: 2023-11-27-星期一 21:01
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/概率分布
id: wiki20231127210139
banner: "![[astrowalk.gif]]"
---
---

## Def 1 F 分布

```ad-definition
title: Definition 1

PDF 为
$$
f_{mn}(x)= m^{\frac{m}{2}}n^{\frac{n}{2}} \frac{{\Gamma\left( \frac{m+n}{2} \right)}}{\Gamma\left( \frac{m}{2} \right)\Gamma\left( \frac{n}{2} \right)} x^{\frac{m}{2}-1}(mx+n)^{-\frac{m+n}{2}},x>0
$$

称为参数为 **m, n 的 F 分布**（m，n 地位不对等）

```

## Pro 1 由正态分布生成

```ad-proposition
title: Propositon 1
```

$Y_{1}\sim \kappa_{n}^{2},Y_{2}\sim\kappa_{m}^{2}$，[[Wiki - 卡方分布]]且相互独立 [[Wiki - 随机变量的独立性]]，则

$$
Z= \frac{{\frac{1}{m}Y_{2}}}{\frac{1}{n}Y_{1}}
$$
服从 F 分布 $F(m,n)$

[[Wiki - 多元正态分布]]

## Cal 1 

若 $Z\sim F (m, n)\to \frac{1}{Z} \sim F(n,m)$

## Pro 2

$$\begin{aligned}
(2)&\text{ 若}Z\sim F_{m,n},\text{则对}r>0\text{有} \\
& E(Z^r)=\left(\frac{n}{m}\right)^r\frac{\Gamma\left(\frac{m}{2}+r\right)\Gamma\left(\frac{n}{2}-r\right)}{\Gamma\left(\frac{n}{2}\right)\Gamma\left(\frac{m}{2}\right)},\quad2r<n.  \\
&E(Z)=\frac n{n-2},\quad n>2, \\
&Var(Z)=\frac{2n^2(m+n-2)}{m(n-2)^2(n-4)},\quad n>4. \\
(3)&\text{ 若}T\sim t_n,\text{则}T^2\sim F_{1,n}\\
(4)& F_{m,n}(1-\alpha)=1/F_{n,m}(\alpha)
\end{aligned}$$

## Pro 3

设 $P=P_{V}$ 是线性子空间 $V\subset \mathbb{R}^{n}$ 的投影矩阵 [[Wiki - 正交投影]]，$r=rank(V)=rank(P)$，$\mathbf{x}\sim N_{n}(0, \sigma^{2}I_{n})$ 则

$$
\frac{\frac{\|P\mathbf{x}\|^{2}}{r}}{\frac{\|(I_{N}-P)\mathbf{x}\|^{2}}{n-r}}  \sim \frac{{\frac{\chi_{r}^{2}}{r}}}{\frac{\chi_{n-r}^{2}}{n-r}} \sim F_{r,n-r}
$$


