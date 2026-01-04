---
aliases: 
info: 逆映射微商的值，存在的充要条件
date: 2023-03-19-星期日 20:38
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230319203858
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Pro1

取 $F(x,y)=y-f(x)=0$, so $F'_{x}(x_{0},y_{0})=-f'(x_{0})\neq 0$.

所以由隐函数存在定理 [[Wiki - 隐函数存在定理]]

存在 $x=f^{-1}(y)$, 且 $\frac {{dx}} {dy}=-\frac{{F'_{y}}}{F'_{x}}=\frac{{1}}{f'_{x}}$.
即 $\frac{{df^{-1}}}{dy} \frac{{df}}{dx}=1$

对于 $(u, v)\to (x, y)$，构造
$$
F=u-u(x,y);\space G=v-v(x,y)
$$

从微分 [[Wiki - 映射的微分]]的角度

$$
\begin{array}
ddF=du-(u_{x}dx+u_{y}dy)=0 \\
dG=dv-(v_{x}dx+v_{y}dy)=0
\end{array}
$$

用一阶微分不变性很方便[[Wiki - 一阶微分不变性]]

在 $P_{0}$ 邻域内成立。可得有逆映射的充要条件是 $\frac{{\partial(u,v)}}{\partial(x,y)}\neq 0$

且满足逆映射 $(x,y)\to(u,v)$

$$
\frac{{\partial(x,y)}}{\partial(u,v)}=\left( \frac{{\partial(u,v)}}{\partial(x,y)} \right)^{-1}
$$

[[Wiki - 雅各比矩阵]]