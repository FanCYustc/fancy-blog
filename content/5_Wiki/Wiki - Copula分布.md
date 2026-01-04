---
aliases: 
info: 
date: 2024-09-19-星期四 14:43
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 概率论/概率分布
id: wiki20240919144349
banner: "![[astrowalk.gif]]"
---
---

## Def 1 copula 分布

一个 p 维 copula 分布为一个多元随机变量 [[Wiki - 随机向量的概念]] $(U_{1},\dots,U_{p})$ 的累计分布函数 [[Wiki - 随机向量的分布函数]] $C:[0, 1]^{p}\to [0,1]$，其边际分布 [[Wiki - 随机向量的边际分布]]为均匀分布 [[Wiki - 均匀分布]]

$$
C(u_{1},\dots,u_{p})= P(U_{1}\leq u_{1},\dots,U_{p}\leq u_{p})
$$

## The 1

重要用途：假设随机向量的分布函数 [[Wiki - 随机向量的分布函数]]为 F，边际分布为 $X_{i}\sim F_{i}$，则 $(F(X_{1}),\dots,F(X_{p}))$ 的分布函数为 copula 分布 C，满足 $F(x_{1},\dots,x_{p})=C(F_{1}(x_{1}),\dots,F_{p}(x_{p}))$

### Proof

利用 [[Wiki - 分布函数的逆]]中的引理：

$X\sim F$，则 $F (X)\sim U(0,1)$ [[Wiki - 均匀分布]]

## Cal 1

对于任意一个多元分布 F，其对应的 copula 分布为
$$
C(u_{1},\dots,u_{p})= F(F_{1}^{-1}(u_{1}),\dots,F_{p}^{-1}(u_{p}))
$$

## The  2 

相反的利用一个 copula 分布 C 和 p 个一元分布函数 $F_{1},\dots,F_{p}$，构造 $F(x_{1},\dots,x_{p})=C(F_{1}(x_{1}),\dots,F_{p}(x_{p}))$ 为一个多元分布的 CDF，且边际分布 $X_{i}\sim F_{i}$

即**一个多元分布由边际分布和 copula 唯一确定**

## The 3

假设 $(X_{1},\dots,X_{p})$ 的 copula 为 C，对任意单增函数 $T_{i}: \mathbb{R}\to\mathbb{R}$，有 $(T_{1}(X_{1}),\dots,T_{p}(X_{p}))$ 的 copula 仍为 C


```ad-example

常见的 copula 有 guass copula，即 $(X_{1},\dots, X_{p})~ N(0,\Sigma),\sigma_{ii}=1$，则 $(\Phi(X_{1}),\dots,\Phi(X_{p}))$ 的分布被称为 guass copula。

利用 The3，对多元正态 $X\sim N(\mu, \Sigma)$，做单增变换 $Z_{i}= \sigma_{ii}^{-\frac{1}{2}}(X_{i}-\mu_{i})$，有 $Z=(Z_{1},\dots, Z_{P})\sim N(0,M)$，M 为相关系数矩阵，Z 分布为 guass copula。所以 guass copula 完全由相关系数矩阵 M 唯一确定。
```

 [[Wiki - Pearson相关系数]]

