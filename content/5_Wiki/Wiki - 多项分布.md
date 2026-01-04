---
aliases: 
info: 多项分布的分布律、性质
date: 2023-10-07-星期六 11:18
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机向量
id: wiki20231007111827
banner: "![[astrowalk.gif]]"
---
---

## Def 1 多项分布

```ad-definition
title: Definition 1

有 m 次独立实验，有 n 个盒子，每次以 $p_k$ 的概率落入第 k 个盒子，$X_{k}$ 表示 k 盒中的球数。

$(X_{1},\dots,X_{n})\sim M(m;p_{1},\dots,p_{n})$

称为服从多项分布



pmf满足
$$
P(X_{1}=k_{1},\dots,X_{n}=k_{n})= \frac{m!}{k_{1}!\dots k_{n}!}p_{1}^{k_{1}}\dots p_{n}^{k_{n}}
$$



```

[[Wiki - 二项分布]]

[[Wiki - 随机向量的分布函数]]

## Pro 1

$$(X_{1},X_{2},\dots,X_{k})\sim M\left(m;p_1,\ldots,p_k,\sum_{j=k+1}^np_j\right)\quad\forall1\leq k\leq n$$

## Pro 2

若已知 $X_{1}=m_{1}$, 则条件概率为

$$[(X_2,\ldots,X_n)|X_1=m_1]\sim M\left(m-m_1;\frac{p_2}{1-p_1},\ldots,\frac{p_n}{1-p_1}\right)$$

