---
aliases: 
info: 
date: 2024-03-08-星期五 11:18
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 概率论/特征
  - 数理统计/抽样分布
id: wiki20240308111840
banner: "![[astrowalk.gif]]"
---
---

## Def 1 样本 p 分位数

[[Wiki - 中位数和分位数]]

$\hat{\xi}_{pn} = F_{n}^{-1}(p)=\infty\{x: F_{n}(x)\geq p\}$

[[Wiki - 分布函数的逆]]

## Pro 1 

$X_{(i)}=F_{n}^{-1}\left( \frac{i}{n} \right)$

[[Wiki - 随机向量的次序统计量]]



## The 1 

样本 p 分位数依概率收敛到随机变量 p 分位数

## The 2

$$
\sqrt{ n }(\hat{\xi}_{pn}-\xi_{p})\xrightarrow{d}N\left( 0, \frac{p(1-p)}{f(\xi_{p})^{2}} \right)
$$

其中 f 为概率密度函数 