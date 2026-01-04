---
aliases: []
info: 伽玛分布的定义和性质
date: 2023-09-28-星期四 14:28
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/概率分布
id: wiki20230928142825
banner: "![[astrowalk.gif]]"
---
---

## Def 1 gamma 分布

```ad-definition
title: Definition 1

伽玛分布的概率密度函数为

$$
f_{\alpha,\beta}(X)= \frac{{\beta^{\alpha} X^{\alpha-1}}}{\Gamma(\alpha)} e^{-\beta X} \space,\quad x>0
$$

其中 $\alpha$ 称为形状参数，对分布的形状影响很大

```

 [[Wiki - 概率密度函数]]
 
[[Wiki - gamma函数]]
## Pro 1

```ad-proposition
title: Propositon 1

当 $\alpha=n\in \mathbb{Z}$ 时，$X\sim \Gamma(\alpha,\beta)$ 可分解为
$$
X=Y_{1}+Y_{2}+\dots+Y_{n}
$$
其中 $Y\sim Exp(\beta)$ 

```
[[Wiki - 指数分布]]

## Pro  2

$$
EX^{k} = \frac{\Gamma(\alpha +k)}{\beta^{k}\Gamma(\alpha)}
$$
[[Wiki - 随机变量的矩]]

