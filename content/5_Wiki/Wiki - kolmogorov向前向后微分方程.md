---
aliases: 
info: 
date: 2024-06-14-星期五 16:15
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/markov链
id: wiki20240614161530
banner: "![[astrowalk.gif]]"
---
---

## The 1 kolmogorov 向后微分方程

对 ![[Wiki - 连续时间markov链#Def 1 连续时间 markov 链]]

研究 $P_{ij}(t)$ 的性质
```ad-theorem
title: Theorem 1



$$P_{ij}(t+s)=\sum_{k=0}^\infty P_{ik}(t)P_{kj}(s),\quad s,t\geq0.$$

$$P_{ij}'(t)=\sum_{k\neq i}q_{ik}P_{kj}(t)-\nu_{i}P_{ij}(t),\forall t\geq 0,i,j$$


```

第二个公式称为 **kolmogorov 向后微分方程**，因为如果记 $Q=(q_{ij})_{S\times S},q_{ii}=-v_{i}$，就可以写成 $P' (t) = QP(t)$

### Proof

有引理

```ad-lemma

$$\lim_{t\to0}\frac{1-P_{ii}(t)}{t}=\nu_{i};\quad\lim_{t\to0}\frac{P_{ij}(t)}{t}=q_{ij},\quad i\neq j.$$

```
[[Wiki - 连续时间markov链#Def 2 转移速率]]

具体见胡太忠实用随机过程 PPT 第 5 章 5.4 节证明

## The 2 kolmogorov 向前微分方程

```ad-theorem
title: Theorem 2

需要**满足一些正则性条件**的连续时间 markov 链才有向前微分方程

即 $P'(t)=P(t)Q$，即

$$
P_{ij}'(t) = \sum_{k\neq j}P_{ik}(t)q_{kj}-P_{ij}(t)v_{j}
$$



```

比如生灭过程[[Wiki - 生灭过程]]就可以用向前微分方程