---
aliases: 
info: 
date: 2023-10-09-星期一 10:17
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机向量
id: wiki20231009101756
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 随机向量的概念]]
## Def 1  条件密度函数

[[Wiki - 随机向量的概率密度函数]]

```ad-definition
title: Definition 1

条件 cdf 为
$$P(X\leq x|Y=y)\quad=\quad\lim_{\Delta y\to0}\mathrm{P}\left(X\leq x|y\leq Y\leq y+\Delta y\right)$$
$$\begin{gathered}
=\quad\operatorname*{lim}_{\Delta y\to0}\frac{\int_{-\infty}^{x}\left\{\frac{1}{\Delta y}\int_{y}^{y+\Delta y}f(u,v)dv\right\}du}{\frac{1}{\Delta y}\int_{y}^{y+\Delta y}f_{2}(v)dv} \\
=\quad\frac{\int_{-\infty}^{x}f(u,y)du}{f_2(y)}=\int_{-\infty}^{x}\frac{f(u,y)}{f_2(y)}du, 
\end{gathered}$$
$$\begin{aligned}\text{类似地,}&[Y|X=x]\text{ 的条件 pdf 定义为}\\f_{2|1}(y|x)&=\frac{f(x,y)}{f_1(x)},\quad\forall x\in\{u:f_1(u)>0\}\end{aligned}$$



```

[[Wiki - 随机向量的边际分布]]

**中间推导有不严谨的地方，有的时候不成立**--Borel-Kolmogorov 悖论