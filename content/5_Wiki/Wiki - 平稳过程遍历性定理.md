---
aliases: 
info: 
date: 2024-12-27-星期五 17:19
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20241227171903
banner: "![[astrowalk.gif]]"
---
---

## the 1 遍历性定理

如果 $\{X_t\}$ 是严平稳遍历序列 [[Wiki - 严平稳过程]]，则有如下结果： 

1. 强大数律：如果 $E|X_1| < \infty$ 则 

$$
\lim_{n \to \infty} \frac{1}{n} \sum_{t = 1}^{n} X_t = E X_1, \text{ a.s.} $$

2. 对任何多元函数 $\phi(x_1, x_2, \cdots, x_m)$， 

$$
Y_t = \phi (X_{t + 1}, X_{t + 2}, \cdots, X_{t + m}) $$
是严平稳遍历序列。


## Pro 2
 $\{\epsilon_t\}$ 是独立同分布的 $WN(0, \sigma^2)$，[[Wiki - 白噪声]]实数列 $\{a_j\}$ 平方可和，则线性平稳序列 
 $$
  X_t = \sum_{j = -\infty}^{\infty} a_j \epsilon_{t - j}, \quad t \in \mathbb{Z},
  $$ 
是严平稳遍历的。 

