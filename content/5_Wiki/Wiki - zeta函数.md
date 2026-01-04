---
aliases: 
info: 
date: 2024-05-30-星期四 10:05
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析
id: wiki20240530100549
banner: "![[astrowalk.gif]]"
---
---

## Def 1 zeta 函数

$$
\zeta(s) = \sum_{n=1}^{\infty} \frac{1}{n^{s}},Re(s)>1
$$
称为 $\zeta$ 函数

## The 1 
```ad-theorem
title: Theorem 1


$$
\zeta(s) = \prod_{p\in P}\left( 1- \frac{1}{p^{s}} \right)^{-1}
$$

其中 P 为**素数**集

```


这使 $\zeta$ 函数与数论联系到一起

### Proof

$$
\prod_{p\in P}\left( 1- \frac{1}{p^{s}} \right)^{-1} = \prod_{p\in P }\left( 1+ \frac{1}{p^{s}}+ \frac{1}{p^{2s}}+\dots \right)= \sum_{n\in \mathbb{Z}^{+}} \frac{1}{n^{s}}
$$

[[Wiki - 全纯函数的Taylor展开]]

## Pro 1 全纯开拓

```ad-proposition
title: Propositon 1
```
$\zeta$ 函数可以全纯开拓 [[Wiki - 全纯开拓]]为 $\mathbb{C}$ 上以 s=1 为唯一一阶极点 [[Wiki - 孤立奇点]]的亚纯函数 [[Wiki - 亚纯函数]] 



### Proof

见 [[Book - Complex Analysis]] 第六章 zeta 函数部分，涉及 

![[Wiki - theta函数#Pro 2]]

[[Wiki - gamma函数]]

![[Wiki - xi函数#The 1 全纯开拓]]


$$\zeta(s)=\pi^{s/2}\frac{\xi(s)}{\Gamma(s/2)}.$$

$\frac{1}{ \Gamma\left( \frac{s}{2} \right)}$ 的所有零点为 0，-2，-4，...，且都是一阶的，正好与 $\xi (s)$ 0 处的一阶极点抵消，所以开拓成了 1 为唯一一阶极点的亚纯函数

## Cal 1

同时可以得出 $-2,-4,\dots$ 是 $\zeta(s)$ 的一阶零点，称为**平凡零点**