---
aliases: 
info: 
date: 2024-06-13-星期四 20:06
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613200639
banner: "![[astrowalk.gif]]"
---
---

## Def 1 markov 链

```ad-definition
title: Definition 1

随机过程 $\{X_{n},n\in \{0,1,2\dots\} \}$，状态空间为至多可数个，且具有：

1、局部历史和全部历史的 markov 性

2、时间齐次性，即
$$
P_{ij} =P(X_{1} =j| X_{0}=i) = P(X_{n+1}=j|X_{n}=i),\forall n
$$


```

 [[Wiki - markov性]]

## Def 2 转移矩阵

定义 $P=(P_{ij})_{S\times S}$ 为转移矩阵。

当初始 $X_{0}$ 分布和转移矩阵确定后，整个 $\{X_{n}\}$ 的概率规律就确定了
