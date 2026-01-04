---
aliases: 
info: 
date: 2024-03-15-星期五 08:57
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 概率论/概率分布
id: wiki20240315085723
banner: "![[astrowalk.gif]]"
---
---

## Def 1 

K 个相互独立的指数分布 [[Wiki - 指数分布]]随机变量 $X_{k}\sim Exp(\mu k)$，$T=X_{1}+\dots+X_{k}$，则 T 服从 erlang 分布，

$$
f_{T}(t)=\frac{k\mu (k\mu t)^{k-1}}{(k-1)!}e^{-\mu kt}
$$

[MCS：连续随机变量——Erlang分布 - 知乎](https://zhuanlan.zhihu.com/p/465432296)

## Pro 1 

与 gamma 分布有一定关系 [[Wiki - gamma分布]]就是 $\Gamma(k,k\mu )$

$E (T)=\frac{1}{\mu}, Var (T)= \frac{1}{\mu^{2}k}$

## Pro 2 

Erlang 分布也不具有记忆性

