---
aliases: 
info: 
date: 2024-11-28-星期四 15:07
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 统计算法
  - 运筹学
id: wiki20241128150750
banner: "![[astrowalk.gif]]"
---
---

## The 1 MM 算法

常用于非凸函数的优化，考虑优化问题

$$
\min_{\theta\in \mathbb{R}^{p}}f( \theta)
$$

寻找函数 $\varphi( \theta|\theta_{t})$ 满足

$$
f(\theta)\leq \varphi( \theta|\theta_{t})\forall \theta\in \mathbb{R}^{p}, f( \theta_{t})= \varphi( \theta_{t}|\theta_{t})
$$

迭代
$$
\theta_{t+1}= \arg\min_{ \theta\in \mathbb{R}^{p}} \varphi( \theta|\theta_{t})
$$
则满足
$$
f( \theta_{t+1})\leq \varphi(\theta_{t+1}|\theta_{t} )\leq \varphi( \theta_{t}|\theta_{t})= f( \theta_{t}) 
$$
使得函数值单调非增

求最大值有类似的步骤，构造 f 下方的逼近函数 $\varphi( \theta|\theta_{t})$


例如在 EM 算法中 [[Wiki - EM算法]]，

```ad-example

由 

$$
Q( \theta| \theta_{t})-Q( \theta_{t}|\theta_{t})\leq l( \theta|X_{obs})- l( \theta_{t}|X_{obs})
$$
令
$$
\varphi( \theta|\theta_{t})= Q( \theta|\theta_{t})- Q( \theta_{t}|\theta_{t})+ l(\theta_{t}|X)
$$

一致的有
$$
\theta_{t+1}= \arg\max_{ \theta\in \mathbb{R}^{p}}\varphi( \theta|\theta_{t})= \arg\max_{\theta\in \mathbb{R}^{p}} Q( \theta|\theta_{t})
$$

```

[[Wiki - 近端梯度法]]也是其特例

