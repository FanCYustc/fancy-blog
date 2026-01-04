---
aliases:
  - 自然参数空间
info: 指数族自然形式
date: 2024-03-01-星期五 11:50
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 概率论/概率分布
  - 数理统计/抽样分布
id: wiki20240301115022
banner: "![[astrowalk.gif]]"
---
---

## Def 1 自然形式

[[Wiki - 指数族]]

For the form
$$
f(x,\theta)=\exp\left[\sum_{i=1}^kQ_i(\theta)T_i(x)-A(\theta)\right]h(x)
$$

Let $Q_{i}(\theta)=\theta_{i}$, then $A(\theta)$ can be written as $C^*(\boldsymbol{\theta}),\boldsymbol{\theta}=(\theta_{1},\dots,\theta_{k})$

So the natural form of 指数族 is

$$
f(x,\boldsymbol{\theta})=C^{*}(\boldsymbol{\theta})\exp\{\sum_{i=1}^{k} \theta_{i}T_{i}(x)\}h(x)
$$
Or

$$
f(x,\boldsymbol{\theta})=h(x)\exp\left\{\boldsymbol{\theta}^{T}\mathbf{T}(x)-A(\boldsymbol{\theta})\right\},x\in\mathcal{X}
$$

where T $( x) = ( T_1( x) , \ldots , T_k( x) ) ^{\mathrm{T} }$  

## Def 2 自然参数空间

in the continuous case,

$$
A(\eta)=log\int_{\mathcal{X}}h(x)\exp\left\{\eta^{\mathrm{T}}\mathbf{T}(x)\right\}dx
$$

In the discrete case, $A(\eta)$ is defined in the same way except integrals over $\mathcal{X}$ are replaced by sums.

```ad-definition
title: Definition 2

The natural parameter space 自然参数空间

$$
{\mathcal E}=\{\eta:\exp\{A(\eta)\}<\infty\}
$$
即
$$
\left\{ \boldsymbol{\theta}: \int _{\mathcal{X}}\exp\{\boldsymbol{\theta}T(x)\}h(x) \, dx<\infty  \right\}
$$


```

## Pro 1 

```ad-proposition
title: Propositon 1

自然参数空间为**凸集**

```

方便进行优化

## Pro 2 分析性质

```ad-proposition
title: Propositon 2

If the distribution of X belongs to a canonical exponential family and $\eta$ is an interior point of $\mathcal{E}$, then for any integrable function g (x), the following function
$$
G (\eta)=\int\cdots\int g (x)\exp\left\{\eta^\mathrm{T}\mathbf{T}(x)\right\}h (x) dx
$$

Satisfy

$$
\begin{aligned}
&\frac{\partial^mG(\eta)}{\partial\eta_1^{m_1}\cdots\partial\eta_k^{m_k}} =\int\cdots\int\frac{\partial^m}{\partial\eta_1^{m_1}\cdots\partial\eta_k^{m_k}}\left[g(x)\exp\left\{\eta^{\mathrm{T}}\mathbf{T}(x)\right\}h(x)\right]dx  \\
&=\int\cdots\int T_1^{m_1}\cdots T_k^{m_k}\left[g(x)\exp\left\{\eta^\mathrm{T}\mathbf{T}(x)\right\}h(x)\right]dx \\
&\text{where }m_1+\cdots+m_k=m.  
\end{aligned}$$



```

[[Wiki - 偏导]]

[[Wiki - 度量空间的内部外部|内点外点边界点]]

