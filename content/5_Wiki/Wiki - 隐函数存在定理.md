---
aliases: 
info: 隐函数存在定理
date: 2023-03-19-星期日 20:19
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230319201917
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## The 1 隐函数存在定理

```ad-theorem
title: Theorem 1

设区域 $D\subset\mathbb{R}^2,~M_0(x_0,y_0)\in D$. 如果 $F(x,y)$ 在D 中有定义并满足:

1° $F(x,y)\in C^1(D),$ 即 $F(x,y)$ 在区域 $B$ 中有连续的偏导函数; $2^{\circ}\:F(x_0,y_0)=0;$
$3^{o}\:F_{y}^{\prime}(x_{0},y_{0})\neq0.$

那么存在 $M_0$ 的一个矩形邻域 $(a,b)\times(c,d)\subset D$, 使得对每一个 $x\in(a,b)$, 方程 $F(x,y)=0$ 存在唯一解 $y=f(x)$, 满足 $y_0=f(x_0)$, 且 $y=f(x)$ 连续并有下列微商

$$
\frac{\mathrm{d}y}{\mathrm{d}x}=f'(x)=-\frac{F_x'(x,y)}{F_y'(x,y)}.
$$

如果是 $F'_{x}(x_{0},y_{0})\neq 0$，就有 x 关于 y 的隐函数

```
[[Wiki - 偏导]]

## The 2 对三维

```ad-theorem
title: Theorem 2


$F(x_{0},y_{0},z_{0})=0$, 在 $(x_{0},y_{0},z_{0})$ 邻域内，满足 z=f (x, y)，可解得
$$
\frac{{\partial z}}{\partial x}=-\frac{{F_{x}'(x,y,z)}}{F_{z}'(x,y,z)}; \frac{{\partial z}}{\partial y}=-\frac{{F_{y}'(x,y,z)}}{F'_{z}(x,y,z)}
$$
所以存在条件是：F 有连续偏导数，$F(x_{0},y_{0},z_{0})=0$，且 $F'_{z}(x,y,z)\neq 0$.

综合来说，**只要 $gradF(x_{0},y_{0},z_{0})\neq 0$, 隐函数就存在**


```

## 若两个三维隐函数联立

$F(x,y,z)=0;G(x,y,z)=0$, 若有解则存在隐函数 $y=y(x),z=z(x)$.

$$
y(x)'=-\frac{{F'_{x}G'_{z}-F'_{z}G'_{x}}}{F'_{y}G'_{z}-F'_{z}G'_{y}};z'(x)=-\frac{{F'_{x}G'_{y}-F'_{y}G'_{x}}}{F'_{y}G'_{z}-F'_{z}G'_{y}}
$$

这要求 $(x_{0},y_{0},z_{0})$ 这一点的雅各比行列式 $\frac{{\partial(F,G)}}{\partial(y,z)}$ 不为 0 [[Wiki - 雅各比矩阵]]

综合来说，$gradF\times gradG\neq 0$ 时隐函数一定存在。

## 微分角度
[[Wiki - 映射的微分]]

当 $y=y(x)$ 有 $F\equiv 0$。

求微分 $dF=F'_{x}dx+F'_{y}dy=0$. 