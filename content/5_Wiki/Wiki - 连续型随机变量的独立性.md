---
aliases: 
info: 连续型随机变量的独立性
date: 2023-10-12-星期四 14:31
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 独立性
  - 概率论/随机变量
  - 概率论/随机向量
id: wiki20231012143106
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 随机变量的独立性]]

## Pro 1 连续随机变量独立性



如果 $(X_1,\cdots,X_n)$ 是 $n$ 维连续型随机向量, 则随机变量 $X_1,\cdots，X_{n}$ 相互独立的充要条件是它们的联合密度函数 [[Wiki - 随机向量的概率密度函数]]等于各自一维边缘密度函数 [[Wiki - 边际分布与边际密度]]的乘积

```ad-proposition
title: Propositon 1
$$
f(x_{1},x_{2},\dots,x_{n})=\prod_{k=1}^{n}f_{k}(x_{k})
$$


```

## Pro 2 

```ad-proposition
title: Propositon 2


If pdf $f(x_{1},x_{2},\dots,x_{n})$ 可以变量分离，即 $f(x_{1},\dots,x_{n})=g_{1}(x_{1})g_{2}(x_{2})\dots g_{n}(x_{n})$，$g_{i}(x_{i})$ 不一定为边际密度函数，则 $x_{1},\dots x_{n}$ 相互独立

```

## Cal 1

如果 $p (\mathbf{x, y, z})= \Psi_{1}(\mathbf{x,z})\Psi_{2}(\mathbf{y,z})$，则当 $\mathbf{z}$ 给定时，$\mathbf{x,y}$ 条件独立

