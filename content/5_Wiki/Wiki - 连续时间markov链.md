---
aliases: 
info: 
date: 2024-06-14-星期五 10:21
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/markov链
id: wiki20240614102122
banner: "![[astrowalk.gif]]"
---
---

## Def 1 连续时间 markov 链

与 markov 链对比，![[Wiki - markov链#Def 1 markov 链]]
```ad-definition
title: Definition 1


$\{X(t), t\geq 0\}$，t 的取值空间变为连续的；状态空间 S 还是至多可数

有 1、markov 性 ：$P(X(s+t)=j|X(s)=i, X(u)=x(u), 0\leq u<s)=P(X(s+t)=j|X(s)=i)$

称为连续时间 markov 链

```

 [[Wiki - markov性]]

一般研究的连续时间 markov 链，需要补充条件：
2、**时间齐次性**：$P_{ij}(t)= P (X (s+t)=j|X (s)=i),\forall s$

连续时间 markov 链由于时间齐次性，要求在状态 i 的停留时间 $\tau_{i}\sim Exp(v_{i})$ [[Wiki - 指数分布]]

3、**规则的**：即在有限时间内转移次数有限

与 [[Wiki - 半马氏过程]]对比，滞留时间分布与下一次转移进入的状态 j 无关

## Def 2 转移速率

与 markov 链比，多了状态的滞留时间，但转移概率矩阵还是 $P=(P_{ij})_{S\times S}$，但有 $P_{ii}=0 ,\forall i$

考虑
$$\mathrm{P}\left(\text{于}\left(t,t+\Delta t\right)\text{访问状态}j\mid X(t)=i\right)=q_{ij}\Delta t+\circ(\Delta t),$$

访问 j 需要两个条件：离开 i，且转入 j

```ad-definition
title: Definition 2

就有 $q_{ij}=v_{i}\cdot P_{ij}, i\neq j$

```
