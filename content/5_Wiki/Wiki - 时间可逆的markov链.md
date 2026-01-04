---
aliases: 
info: 
date: 2024-06-13-星期四 23:00
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613230002
banner: "![[astrowalk.gif]]"
---
---

## Def 1 

在 markov 链 [[Wiki - markov链]]有平稳分布 [[Wiki - markov链的平稳分布]]的的前提下，即 [[Wiki - 逆向markov链]]存在的前提下

```ad-definition
title: Definition 1

称一个平稳的 markov chain（即 $\{X_{0}\}$ 服从平稳分布 $\{\pi_{j}\}$，可以理解为演化了很长时间到平稳的 MC）为**时间可逆的**，如果有

$$
\pi_{i}P_{ij}=\pi_{j}P_{ji}, \forall i,j
$$


```

直观理解为从 i 转移到 j 的**速率**（$\pi_{i}P_{ij}$）=从 j 到 i 的转移速率

对于不可约正常返的连续时间 markov 链 [[Wiki - 连续时间markov链]]，称 $\{X(t)\}$ 为时间可逆的，如果 $\pi_{i}P_{ij} = \pi_{j} P_{ji},\forall i,j$，与其嵌入离散 markov 链时间可逆的条件一样

这等价于 $P_{i}q_{ij} = P_{j}q_{ji}$ [[Wiki - 连续时间markov链的平稳分布]]，即过程**从 i 转入 j 的速率=从 j 转入 i 的速率**，$\forall i,j$

## Cal 1 

遍历的生灭过程[[Wiki - 生灭过程]]在稳态下就是时间可逆的

## Pro 1 时间可逆的判定

```ad-proposition
title: Propositon 1

很简单，如果能找到概率质量 $\{x_{j}\}$ $x_{i}P_{ij}=x_{j}P_{ji}, \forall i,j$，就说明 MC 是时间可逆的，且 $\{x_{j}\}$ 就是平稳分布

```


同理对连续时间 markov 链，如果能找到 $\{x_{j}\}$ 满足 $x_{i}q_{ij}=x_{j}q_{ji}, \forall i,j$，则 $\{x_{i}\}$ 为连续时间 markov 链的**稳态分布**，且 MC 是时间可逆的

## Pro 2

```ad-proposition
title: Propositon 2

```
不可约[[Wiki - markov链的类]]正常返[[Wiki - markov链的正常返与零常返]]的平稳  MC 是时间可逆的 $\Longleftrightarrow$ 对  $\forall i, i_1, \ldots , i_k, k\geq 1$, 有
$$P_{i,i_1}P_{i_1,i_2}\cdots P_{i_{k-1},i_k}P_{i_k,i}=P_{i,i_k}P_{i_k,i_{k-1}}\cdots P_{i_2,i_1}P_{i_1,i}.$$



要求这个线路是首尾相同的一个圈

### Proof

见胡太忠随机过程 PPT [[实用随机过程PPT.pdf]] 第 4 章 4.7 节证明

