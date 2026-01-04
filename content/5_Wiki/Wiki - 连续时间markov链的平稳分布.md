---
aliases: 
info: 
date: 2024-06-14-星期五 16:28
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 随机过程/markov链
id: wiki20240614162818
banner: "![[astrowalk.gif]]"
---
---

## The 1 平稳分布

对于 [[Wiki - 连续时间markov链]]，它转移矩阵的对应的 [[Wiki - markov链]]有平稳分布 [[Wiki - markov链的平稳分布]] $\pi_{j} = \sum_{i}\pi_{i}P_{ij}$

由于连续时间 markov 是特殊的半马氏过程 ![[Wiki - 半马氏过程#The 1 更新定理]]

```ad-theorem
title: Theorem 1

所以有
$$
P_{j} = \frac{{\pi_{j} / v_{j}}}{\sum_{k} \pi_{k} / v_{k}}
$$

再由于 $\pi_{j} = \sum_{i} \pi_{i}P_{ij}$

所以有 $p\cdot Q=0$，即

$$P_j\nu_j=\sum_{i\neq j}P_i\nu_iP_{ij}=\sum_{i\neq j}P_iq_{ij}$$


```

这个式子代表平稳时，过程**离开 j 的速率= 过程进入 j 的速率**

也可以这样理解：[[Wiki - kolmogorov向前向后微分方程#The 2 kolmogorov 向前微分方程]]使得 $P'(t)=0$

