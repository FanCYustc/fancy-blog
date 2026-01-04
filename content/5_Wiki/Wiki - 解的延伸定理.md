---
aliases: 
info: 解的延伸定理
date: 2023-10-12-星期四 10:01
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
  - 连续
id: wiki20231012100148
banner: "![[astrowalk.gif]]"
---
---

## The 1 解的延伸定理

```ad-theorem
title: Theorem 1
```
设 $P_{0}$ 为开区域 [[Wiki - 连通区域#Definition 2 区域]] $G$ 内任一点, 并设 $\Gamma$ 为微分方程 $\frac{dy}{dx}=f(x,y),y(x_0)=y_0$ 经过 $P_{0}$ 点的任一条积分曲线 [[Wiki - 佩亚诺存在定理]].，其中 f 在 G 内连续。则积分曲线 $\Gamma$ 将在区域 $G$ 内延伸到边界。换句话说, 对于任何有界闭区域 [[Wiki - 紧致集合]] $G_1, (P_0\in G_1\subset G)$, 积分曲线 $\Gamma$ 将延伸到 $G_\mathrm{l}$ 之外.



每个初值点 $(x_{0},y_{0})$ 对应着不同最大延伸区间（f 会连续的范围不一样）

**且解的延伸只知道能到边界，但往 x 还是 y 的哪个方向延伸需要人为研究**

## Def 1 最大存在区间

```ad-definition
title: Definition 1

设微分方程 $\frac{dy}{dx}=f(x,y)$ 经过 $P_{0}$ 的解 $\Gamma$ 有如下表达式

$$
\Gamma:\quad y=\varphi(x),\quad(x\in J),
$$


其中 $J$ 表示 $\Gamma$ 的**最大存在区间**.

```
```ad-hint


**f 可连续的最大区间 G 也会因 $x_{0},y_{0}$ 的选取而异**


```

### Proof

Let $J^{+}=J \cap[x_{0},+\infty]$ --证 $J^{+}$ 是半开区间

反证：if $J^{+}$ is 有限闭区间 $=[x_{0},x_{1}]$，--推与 J 最大矛盾

G 是开集[[Wiki - 实数域的开集闭集]] --存在 $x_{1}$ 邻域在 G 内，由连续和 [[Wiki - 佩亚诺存在定理]]知存在关于初值 $\varphi(x_{1})=y_{1}$ 的解，和之前的解 $\varphi(x)$ 可以连续上，区域比 J 区域大，矛盾

所以 $J^{+}$ 是有限半开区间

反证：假设有有限闭区域 $G_{1}\subset G$ s.t. $(x,\varphi (x))\in G_{1},\forall x\in J^{+}$

$$\varphi(x)=y_0+\int_{x_0}^xf(x,\varphi(x))dx,\quad(x_0\leqslant x<x_1)$$

由 f 连续 [[Wiki - 多变量连续函数的性质]]在闭集 $G_{1}$ 中，所以 f 在 $G_{1}$ 中有界 K，

由拉格朗日中值公式，有
$$|\varphi(t_1)-\varphi(t_2)|\leqslant K|t_1-t_2|\text{,当}\quad t_1,t_2\in J^+$$

由 cauchy 收敛准则 [[Wiki - 函数的极限]]，$y_{1}=\lim_{ x \to x_{1} }\varphi(x)$ 存在

$$\tilde{\varphi}(x)=\begin{cases}\varphi(x)\text{,当}&x_0\leqslant x<x_1;\\y_1,&x=x_1.\end{cases}$$

可验证连续，将 $[x_{0},x_{1})$ 延伸到 $[x_{0},x_{1}]$，矛盾


## Cal 1 

```ad-theorem
title: Theorem 2

设函数 $f(x,y)$ 在区域 $G$ 内连续, 而且对 $y$ 满足局部李氏条件 ，即,对区域 $G$ 内**任一点 $q$,** 存在以 $q$ 点为中心的一个矩形区域 $Q\subset G$, 使得在 $Q$ 内 $f(x,y)$ 对 $y$ 满足李氏条件 (注意, 相应的李氏常数 $L$ 与矩形区域 $Q$ 有关), 则微分方程经过 $G$ 内任一点$P_{0}$ **存在唯一**的积分曲线 $F$, 并且 $\Gamma$ 在 $G$ 内延伸到边界.

```
[[Wiki - 利普希茨条件]]


## Cal 2

```ad-theorem
title: Theorem 3

设 $\frac{dy}{dx}=f(x,y)$，其中 f 在
$$
S:\quad a<x<\beta,\quad-\infty<y<\infty 
$$

 内连续, 而且满足不等式

$$
\left|f(x,y)\right|\leqslant A(x)\left|y\right|+B(x)\:,
$$

其中 $A(x)\geqslant0$ 和 $B(x)\geqslant0$ 在区间 $\alpha<x<\beta$ 上是**连续的**.  则微分方程的**每一个解都以**区间 $\alpha< x<\beta$ 为最大存在区间.



```

[[Wiki - 函数的连续性]]