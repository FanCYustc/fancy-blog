---
aliases: 
info: 
date: 2024-06-13-星期四 21:21
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613212105
banner: "![[astrowalk.gif]]"
---
---

## The 1 平稳分布

对于不可约 [[Wiki - markov链的类]]非周期 [[Wiki - markov链的周期]] markov 链[[Wiki - markov链]]

如果类是非常返 [[Wiki - markov链的常返与滑过]]或者零常返的，则 $P_{ij}^{n}\to {0}$，不存在平稳分布

```ad-definition
title: Definition 1

```
如果是正常返的 [[Wiki - markov链的正常返与零常返]]，存在唯一的平稳分布 $\{\pi_{j}\}$ 满足

$$
\pi_{j} = \lim_{ n \to \infty } P_{ij}^{n}>0,\forall i
$$
[[Wiki - markov链n步转移概率]]

且
$$
\pi_{j} = \sum_{k}\pi_{k}P_{kj}
$$

[[Wiki - markov链]]



且由 [[Wiki - markov链的正常返与零常返#Pro 2 极限性质]]，$\pi_{j} = \frac{1}{\mu_{jj}}$

对于周期为 d 的，有
$$\pi_{j}=\lim_{n\to\infty}\frac{1}{nd}\sum_{k=1}^{n}P_{jj}^{kd}=\lim_{n\to\infty}\frac{1}{d}P_{jj}^{nd}.\\\Longrightarrow\lim_{n\to\infty}P_{jj}^{nd}=\frac{d}{\mu_{jj}}=d\pi_{j},\quad\forall j$$

所以还是 $\pi_{j}= \frac{1}{\mu_{jj}}$

