---
aliases: 
info: 
date: 2024-12-27-星期五 11:10
update: 
tags:
  - wiki/year2024
  - 随机过程/平稳过程
  - 时间序列分析
  - wiki/month09
id: wiki20241227111028
banner: "![[astrowalk.gif]]"
---
---
## Def 1 白噪声

设 $\{\epsilon_t\}$ 是一个平稳序列 [[Wiki - 平稳序列]]。如果对任何 $s,t\in\mathbb{N}$， 

$$
E\epsilon_t = \mu,  \mathrm{Cov}(\epsilon_t,\epsilon_s)=\sigma^2\delta_{t - s}= \begin{cases} \sigma^2, & t = s\\ 0, & t\neq s \end{cases} 
$$ 则称$\{\epsilon_t\}$是一个**白噪声**，记做$WN (\mu,\sigma^2)$。 设$\{\epsilon_t\}$是白噪声，当$\{\epsilon_t\}$是独立序列时，称$\{\epsilon_t\}$是**独立白噪声**。 当$\mu = 0$时，称$\{\epsilon_t\}$为零均值白噪声。白噪声的另一种定义要求零均值，本书中用到的白噪声一般都是零均值的。 

当$\mu = 0,\sigma^2 = 1$时，称$\{\epsilon_t\}$为标准白噪声。 当$\epsilon_t$服从正态分布时，称$\{\epsilon_t\}$是正态白噪声或高斯白噪声。**正态白噪声**总是独立白噪声。 

利用Kronecker函数$\delta_t$，白噪声满足条件$\mathrm{Cov}(\epsilon_t,\epsilon_s)=\sigma^2\delta_{t - s}$。 

## Pro1 

标准brown运动$\{B_{n}\}$，定义$\epsilon_{t}= B_{t}-B_{t-1},t=1,2\dots,$，则$\{\epsilon_{t}\}$为标准白噪声[[Wiki - brown运动]]

