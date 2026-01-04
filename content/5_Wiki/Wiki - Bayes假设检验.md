---
aliases:
  - 最大后验原则
info: 多重假设检验
date: 2024-06-04-星期二 14:37
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 数理统计/贝叶斯方法
id: wiki20240604143756
banner: "![[astrowalk.gif]]"
---
---

## The 1 Bayes 假设检验

```ad-theorem
title: Theorem 1

设假设检验问题为 $H_{i}:\theta\in \Theta_{i},i=1,\dots,k\,;\Theta_{1}\cup \dots \cup\Theta_{k} = \Theta$

求所有的 $\alpha_{i} = P(\theta\in \Theta|x)$，取其中最大的 $\arg \max_{i}\{\alpha_{i}\}$ 作为假设检验认为 $\theta$ 属于的类


```

对比[[Wiki - 似然比检验]]

$\pi(\theta|x)\sim似然\times先验$

若对于 $H_{0}:\theta=\theta_{0}$ 的孤点集：

处理 1：将 $H_{0}$ 等价与 $\theta\in [\theta_{0}-\epsilon,\theta_{0}+\epsilon]$，转化为每个都不是孤点集的情形

处理 2：取先验分布为混合分布
$$
\pi(\theta)=\begin{cases}
\pi_{0} ,\; \theta=\theta_{0} \\
\pi_{1}g_{1}(\theta), \; \theta\neq\theta_{0}
\end{cases}
$$

即 $\pi (\theta) = \pi_{0}\delta(\theta)I(\theta=\theta_{0})+\pi_{1}g_{1}(\theta)$ ，其中 $\delta$ 为质量集中在 $\theta_{0}$ 的 dirac 函数。 [[Wiki - Dirac函数]]

