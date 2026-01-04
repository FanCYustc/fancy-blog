---
aliases: 
info: 
date: 2024-06-14-星期五 10:36
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/markov链
  - 运筹学/排队论
id: wiki20240614103643
banner: "![[astrowalk.gif]]"
---
---

## Def 1 生灭过程

```ad-definition
title: Definition 1

考虑一个连续时间 markov 链 ，其转移速率满足

$q_{i,i+1}=\lambda_{i},i\geq 0;q_{i,i-1}=\mu_{i},i\geq 1$ 分别为出生率和死亡率，其他 $q_{i,j}=0$，

称这个过程是生灭过程


```

[[Wiki - 连续时间markov链]]

进而可以知道 $v_{i}=q_{i,i+1}+q_{i,i-1}$，$P_{i, i+1}= \frac{\lambda_{i}}{\lambda_{i}+\mu_{i}}=1-P_{i,i-1}$

$i=0$ 的时候不会再变小了，有一些区别

特别的 $\mu_{i}=0,\forall i\geq 1$ 时称为**纯生过程**；对应的 $\lambda_{i}=0,\forall i\geq 0$ 称为**纯灭过程**

