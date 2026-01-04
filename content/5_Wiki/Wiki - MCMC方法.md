---
aliases: 
info: 
date: 2024-09-26-星期四 15:15
update: 
tags:
  - wiki/year2024
  - 随机过程/markov链
  - wiki/month10
id: wiki20240926151524
banner: "![[astrowalk.gif]]"
---
---

## The 1 markov-chain Monte-Carlo

若随机变量服从分布 $\pi$，需要求参数估计 $\theta = E_{\pi}[h(X)]$。MCMC 方法如下：

1. 构造平稳分布为 $\pi$ 的遍历 markov 链 [[Wiki - markov链的正常返与零常返]] $\{X_{t}, t=0,1,\dots\}$ [[Wiki - markov链的平稳分布]]
2. 抛弃前 k 个样本，称为**老化期**样本
3. 计算 markov 估计量
$$
\theta = \frac{1}{n-k} \sum_{t=k+1}^{n} h(X_{t})
$$

利用 [[Wiki - 弱大数律]]可以让 markov 估计量收敛到待估参数 $\theta$

