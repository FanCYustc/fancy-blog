---
aliases: 
info: 一般情形的随机向量函数概率
date: 2023-10-16-星期一 10:53
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机向量
id: wiki20231016105314
banner: "![[astrowalk.gif]]"
---
---

## The 1

 [[Wiki - 随机向量的概率密度函数]]

```ad-theorem
title: Theorem 1

如果 $(X_1,\cdots,X_n)$ 是 $n$ 维连续型随机向量, 具有联合密度函数 $p(x_{1},\cdots,x_{n})$. 假设存在 $n$ 个 **Borel 可测的函数**使得

$$
Y_{j}=f_{j}(X_{1},\cdots,X_{n}),\quad j=1,\cdots,n,
$$
并且对于 $(Y_1,\cdots,Y_n)$ 的每一组可能值 $(y_1,\cdots,y_n),$ 方程组

$$
\left.\left\{\begin{array}{c}y_1=f_1(x_1,\cdots,x_n),\\\ldots\\y_n=f_n(x_1,\cdots,x_n)\end{array}\right.\right.
$$
都有唯一解
$$\left.\left\{\begin{array}{c}x_1=h_1(y_1,\cdots,y_n),\\\cdots\cdots\\x_n=h_n(y_1,\cdots,y_n),\end{array}\right.\right.$$

其中每个 $h_j(y_1,\cdots,y_n)$ 都有**一阶连续偏导数**, 那么随机向量 $\langle Y_1,\cdots,Y_n\rangle$ 是**连续型**的, 具有联合密度函数

$$\begin{aligned}
q(y_{1},\cdots,y_{n})=& p\left(h_{1}(y_{1},\cdots,y_{n}),\cdots,h_{n}(y_{1},\cdots,y_{n})\right)|J|,  \\
&(y_{1},\cdots,y_{n})\in D,
\end{aligned}$$
J 为雅各比行列式

```

 [[Wiki - 雅各比矩阵]]

与 [[Scientech - 数学分析-多变量函数的重积分]]的换元很有关联

