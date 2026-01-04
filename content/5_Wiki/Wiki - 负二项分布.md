---
aliases:
  - 几何分布
  - pascal分布
info: 负二项分布
date: 2023-08-21-星期一 10:29
update: 
tags:
  - wiki/year2023
  - wiki/month08
id: wiki20230821102907
banner: "![[astrowalk.gif]]"
---
---
#概率论/概率分布 

## Def1 负二项分布

```ad-definition
title: Definition 1

废品率为 p，随机变量 X 表示测出第 r 个废品时，已测过的合格品的个数

$$
P(X=i)=b(r-1;r+i-1,p)\times p = \binom{i+r-1}{r-1}p^{r}(1-p)^{i}
$$
称为负二项分布

```


来源于 $(1-x)^{-r} = \sum \binom{r+i-1}{r-1}x^{i}$

[[Wiki - 二项分布]]

## Def  2 几何分布

```ad-definition
title: Definition 2

R=1 时，$P(X=i)=p(1-p)^{i-1}$
称为几何分布


```

## Pro 2 几何分布性质

$$
\mathbf{E}(X)=\sum_{n=1}^{\infty}np(1-p)^{n-1}=p\sum_{n=1}^{\infty} \frac{dx^{n}}{dx}\mid_{x=q} =p \frac{d}{dx}\left( \frac{x}{1-x} \right)\mid_{x=q} =\frac{1}{p}
$$

$$
\mathbf{D}X=\mathbf{E}X^{2}-(\mathbf{E}X)^{2}= \frac{{2-p}}{p^{2}}- \frac{1}{p^{2}}= \frac{{1-p}}{p^{2}}
$$

[[Wiki - 数学期望]]

[[Wiki - 方差]]