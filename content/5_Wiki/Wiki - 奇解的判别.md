---
aliases: 
info: 奇解的充分条件
date: 2023-10-24-星期二 14:49
update: 2025-12-30-星期二 15:48
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程
id: wiki20231024144937
banner: "![[astrowalk.gif]]"
---
---
[[Wiki - 奇解的必要条件]]

## The 1 奇解的判别

```ad-theorem
title: Theorem 1

设函数 $F(x,y,p)$ 对 ($x,y,p)\in G$ 是**二阶连续可微**的. 又设由微分方程 $F(x,y,p)=0$ 的p- 判别式

$$
F(x,y,p)=0\:,\quad F^{\prime}{}_{\hat{p}}(x,y,p)=0
$$
 (消去 $p)$ 得到的函数 $y=\psi(x).(x\in J)$ 是微分方程的解. 而且设条件

$$
F_{y}^{\prime}(x,\psi(x),\psi^{\prime}(x))\neq0,\quad F_{pp}^{\prime\prime}(x,\psi(x),\psi^{\prime}(x))\neq0
$$

以及 $F'_{p}(x,\psi(x),\psi'(x))=0$

对 $x\in J$ 成立. 则 $g=\psi(x)$ 是微分方程的奇解.

```

### Proof

对微分方程 $F(x, y, p) = 0$ 作变换 $y = \psi(x) + u$，其中 $u$ 是新未知函数。令 $q = du/dx$，则原方程变为：
$$
H(x, u, q) \equiv F(x, \psi(x)+u, \psi'(x)+q) = 0
$$

对 $H$ 在 $(x, 0, 0)$ 处进行 Taylor 展开 [[Wiki - Taylor级数]]，利用 $y=\psi(x)$ 是解且满足 p-判别式条件（即 $F=0, F'_p=0$），可得：
$$
F'_y u + \frac{1}{2} [F''_{yy} u^2 + 2F''_{yp} u q + F''_{pp} q^2] + o(\rho^2) = 0
$$
其中系数均在 $(x, \psi(x), \psi'(x))$ 处取值。由于 $F''_{pp} \neq 0$ 且 $F'_y \neq 0$，方程可整理为：
$$
\frac{du}{dx} = E(x, u_0)\sqrt{u}
$$

由积分 $\int \frac{du}{\sqrt{u}}$ 收敛，根据 Osgood 唯一性定理 [[Wiki - 奥斯古德唯一性定理]]的逆否命题（或直接构造解），可知存在非零解 $u(x)$ 在某点 $\bar{x}_0$ 与零解 $u=0$ 相切。
即原方程存在不同于 $\psi(x)$ 的解在某点与 $\psi(x)$ 相切。

$\therefore y = \psi(x)$ 是奇解。[[Wiki - 奇解]]

好处：观察加计算退化和非退化就可以判断是不是奇解，都不用解方程

## The 2 通解的包络为奇解

[[Wiki - 包络#The 1 通解与奇解的关系]]

