---
aliases: 
info: 分布函数分解定理
date: 2023-09-25-星期一 10:23
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/概率分布
id: wiki20230925102358
banner: "![[astrowalk.gif]]"
---
---
## The 1 Jordan 分解

```ad-theorem
title: Theorem 1

任何一个分布函数 $F (x), x\in \mathbb{R}$，存在 $\alpha\in [0,1]$，使得

$$
F(x)= \alpha F_{1}(x)+ (1-\alpha)F_{2}(x)
$$
其中 $F_{1}$ 和 $F_{2}$ 是离散型分布函数和连续型分布函数
```

### Proof

利用 [[Wiki - 分布函数的性质#Cal 1]]

## The 2 lebesgue 分解

```ad-theorem
title: Theorem 2

根据实变函数论中的 Lebesgue 分解理论，任何一个（一元）分布函数 F (x）都具有如下形式的分解式

$$
F(x)=a_{1}F_{1}(x)+a_{2}F_{2}(x)+a_{3}F_{3}(x),\quad x\in\mathbb{R},
$$


其中 $F_{1}(x),F_{2}(x),F_{3}(x)$ 分别为离散型 、绝对连续型和奇异连续型 分布函数, $a_{j}\geqslant0,$ 并且 $a_{1}+a_{2}+a_{3}=1.$

```

[[Wiki - 分布函数]]、[[Wiki - 概率密度函数]]、[[Wiki - 奇异连续分布]]、[[Wiki - 绝对连续]]

