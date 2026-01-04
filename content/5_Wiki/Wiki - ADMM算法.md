---
aliases: 
info: 
date: 2024-11-28-星期四 15:08
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 统计算法
  - 凸优化
id: wiki20241128150804
banner: "![[astrowalk.gif]]"
---
---

ADMM 算法处理的是如下形式

$$
\begin{align}
\min_{x\in \mathbb{R}^{p}, y\in \mathbb{R}^{q}} f(x)+g(y)\\
s.t. Ax+By = c
\end{align}
$$
其中 f, g 是凸函数

在 [[Wiki - 增广Lagrange方法]]基础上，定义增广 Lagrange 函数为
$$
L(x,y,u)=  f(x)+g(y)+ u^{T}(Ax+Bx-c) + \frac{\rho}{2}\|Ax+By-c\|^{2}
$$

迭代算法为：

$$
\begin{align}
x_{t+1} &= \arg\min_{x\in \mathbb{R}^{p}} L(x,y_{t},u_{t}) \\
 y_{t+1} &= \arg\min_{y\in \mathbb{R}^{q}}L(x_{t+1}, y, u_{t}) \\
u_{t+1} &= u_{t}+ \rho(Ax_{t+1}+By_{t+1}-c)
\end{align}
$$
