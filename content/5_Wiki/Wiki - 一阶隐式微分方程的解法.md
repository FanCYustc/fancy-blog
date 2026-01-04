---
aliases:
info: 参数法和微分法
date: 2023-10-17-星期二 14:33
update: 2025-12-30-星期二 15:40
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231017143334
banner: "![[astrowalk.gif]]"
---
---

## SOL 1 微分法

若微分方程的形式为
$$
y=f(x,p),p= \frac{dy}{dx}
$$

且 $f (x, p)$ 对 x 和 p 连续可微 [[Wiki - 映射的微分]]，则全微分后得 [[Wiki - 一阶微分不变性]]

$$
p=f'_{x}(x,p)+f'_{p}(x,p) \frac{dp}{dx}
$$
Equal
$$
(f'_{x}(x,p)-p)dx+f'_{p}(x,p)dp=0
$$

这是一个关于变量 $x$ 和 $p$ 的一阶显式微分方程。

1. 如果能够得到其通解 $p = u(x, C)$，那么就得到原方程的通解：
   $$y = f(x, u(x, C))$$
2. 在某些情况下，通解容易写成 $x = v(p, C)$ 的形式，则原方程通解可写成参数形式：
   $$
   \left\{ \begin{array}{l} x = v (p, C), \\ y = f (v (p, C), p). \end{array} \right.
   $$
   这里 $p$ 视作参变量。
3. 若有**特解** $p=w(x)$, 则有特解 $y=f(x,w(x))$。

[[Wiki - 常微分方程的解]]

## SOL 2 参数法

### 一般情形
对于一般的一阶隐式微分方程

$$
F(x,y,p)=0,\quad(p=\frac{dy}{dx}).
$$
它在 $(x,y,p)$ 空间表示若干张曲面。设
$$
x=f\left(u,v\right),\quad y=g\left(u,v\right),\quad p=h(u,v)
$$
是其中之一，这里 $u$ 和 $v$ 是二个参数。
因为 $dy=pdx$，即
$$
g'_u du + g'_v dv = h(u, v) (f'_u du + f'_v dv)
$$
它可以写成如下形式的一阶显式微分方程：
$$
M(u, v) du + N(u, v) dv = 0
$$
其中
$$
\left\{ \begin{array}{l} M (u, v) = g ^ {\prime} _u (u, v) - h (u, v) f ^ {\prime} _u (u, v), \\ N (u, v) = g ^ {\prime} _v (u, v) - h (u, v) f ^ {\prime} _v (u, v). \end{array} \right.
$$

如果我们能求得此方程的通解 $v = Q(u, C)$，则原微分方程有通解：
$$
x = f (u, Q (u, C)), \quad y = g (u, Q (u, C))
$$

### 不显含自变量的情形 $F(y, p) = 0$
设参数表示为 $y = g(t), p = h(t)$ (且 $h(t) \neq 0$)。
由 $dx = \frac{1}{p} dy = \frac{g'(t)}{h(t)} dt$，积分可得通解：
$$
x = \int \frac {g ^ {\prime} (t)}{h (t)} d t + C, \quad y = g (t).
$$
