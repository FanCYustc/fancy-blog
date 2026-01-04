---
aliases: 
info: 全纯函数闭曲线积分为0
date: 2024-03-21-星期四 10:48
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 复分析/全纯函数
  - 复分析/积分
id: wiki20240321104844
banner: "![[astrowalk.gif]]"
---
---

## The 1 cauchy 积分定理

```ad-theorem
title: Theorem 1

```
D 为**单连通域** [[Wiki - 连通区域#Definition 2 区域]]，$f\in H(D)$ [[Wiki - 全纯函数]]，且 f'  在 D 上连续，对 D 中任意可求长闭曲线 $\gamma$，有
$$
\int _{\gamma} f(z) \, dz =0
$$
[[Wiki - 复变函数路径积分]]

**f'连续的条件之后证明了可以没有!!!** 只需 $f\in H(D)$，D 为单连通域（Cuchy-Goursat）



[[Wiki - 连通区域|Jordan曲线]]

### Proof

如果有导数连续的条件，用 [[Wiki - Green公式]]即可证明。对于 $f\in H(D)$，需要用到下面的引理：

```ad-lemma
title: Lemma 1

设 $f$ 是域 $D$ 中的连续函数，Y 是 D 内的可求长曲线。对于任给的 $\varepsilon>0$, 一定存在一条 $D$ 中的折线 $P$, 使得

(i) $P$ 和 $\gamma$ 有相同的起点和终点，$P$ 中其他的顶点都在 $\gamma$ 上；

（2）$\mid \int _{\gamma}f (z) \, dz- \int _{P} f(z) \, dz\mid<\epsilon$

```

类似微分方程中 [[Wiki - cauchy初值定理]]中的 euler 折线 [[Wiki - Euler折线]]

先证明三角边界时的结论，再推广到多边形边界，再用引理推广到一般简单闭曲线，具体证明见史济怀《复变函数》 [[Book - 复变函数]] 3.2 节的证明，用到 [[Wiki - 长大不等式]]

## The 2 曲线围成区域的 cauchy 积分定理

```ad-theorem
title: Theorem 2

另外也不要求闭曲线在全纯区域内部：

$\Omega$ 是由可求长 Jordan 曲线 $\gamma$ 围成的区域，$f\in H (\Omega)\cap C(\overline{\Omega})$，则
$$
\int _{\gamma}f(z) \, dz =0
$$


```
 
## The 3 推广

对曲线个数的推广：

```ad-theorem
title: Theorem 3

设 $\gamma_0,\gamma_1,\cdotp\cdotp\cdotp,\gamma_n$ 是 $n+$ l 条可求长简单闭曲线，$\gamma_1,\cdots,\gamma_n$ 都在 $\gamma_0$ 的内部 $,\gamma_1,\cdots,\gamma_n$ 中的每一条都在其他 $n-1$ 条的外部，$D$ 是由这n+ 1 条曲线围成的域，用$\gamma$记 D 的边界.如果$f\in H(D)\cap C(\overline{D})$, 那么

$$\int_{\gamma}f(z)\mathrm{d}z\:=\:0\:,$$

这里，积分沿 $\gamma$ 的**正方向**进行. 也可写为

$$\int\limits_{r_0}f(z)\mathrm{d}z=\int\limits_{r_1}f(z)\mathrm{d}z+\cdots+\int\limits_{r_n}f(z)\mathrm{d}z\:,$$

右端的积分分别沿 $\gamma_1,...,\gamma_n$ 的**逆时针方向**进行.


```

外圈和里面的曲线的正方向是反着的