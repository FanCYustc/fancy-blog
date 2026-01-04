---
aliases: 
info: 
date: 2024-03-12-星期二 15:16
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/统计量
id: wiki20240312151633
banner: "![[astrowalk.gif]]"
---
---

## The 1 因子分解定理

```ad-theorem
title: Theorem 1

对于参数族统计模型 $f (x,\theta)$ 统计量 T 是充分的当且仅当样本联合密度 (pdf/pmf) 可以分解成
$$
p(x_{1},\dots,x_{n};\theta) = h(x_{1},\dots,x_{n})\times g(T(x_{1},\dots,x_{n});\theta)
$$



```

[[Wiki - 充分统计量]] 
### proof

较为复杂，见 [[Book - 数理统计]] 2.7 节定理 2.7.1 的证明

## Cal 1

对固定的 $\theta_{0},\theta$，T 是充分统计量当且仅当 $\frac{p(x;\theta)}{p(x;\theta_{0})}$ 是关于 T (x) 的函数

## Cal 2

T 为 $\theta$ 的充分统计量，$S=\varphi(T)$ 为单值可逆函数，则 $\varphi(T)$ 也是充分统计量

