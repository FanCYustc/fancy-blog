---
aliases: []
info: 动态供求平衡的蛛网模型
date: 2023-09-11-星期一 17:06
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 经济学/微观经济学
id: wiki20230911170603
banner: "![[astrowalk.gif]]"
---
---

## Def  1 蛛网模型

对平衡点附近，近似供给需求都与价格为线性变化

假设供需平衡随时间有延迟

$$
\begin{array}{c}
Q_{t}^{d}=\alpha-\beta P_{t} \\
Q_{t}^{s}=-\gamma+\delta P_{t-1} \\
Q_{t}^{d}=Q_{t}^{s}
\end{array}

$$

假设经济中最初的市场价格 $P_{0}$ 给定。令 $\theta=\frac{\alpha+\gamma}{\beta},\:\lambda=-\frac{\delta}{\beta}\:,$ 则通过逐步迭代，式（1.19）可以表示为:
$$
P_{i}=\theta\:(\:1+\lambda+\cdots+\lambda^{\prime{-1}}\:)\:+\lambda^{\prime}P_{0}
$$
在 $\lambda\neq 1$ 时，上式表示为:

$$
P_{i}=\theta\:\frac{1-\lambda^{i}}{1-\lambda}+\lambda^{i}P_{0}
$$

不难看出，如果 $\beta>\delta$,，则 $|\lambda|<1$, 上面给出的 t 时期的均衡价格收敛于静态均衡价格

$$
P_{E}=\frac{\alpha+\gamma}{\beta+\delta}
$$

若 $\beta<\delta$，价格发散平衡

$\beta=\delta$，商品在一个封闭区域里波动。