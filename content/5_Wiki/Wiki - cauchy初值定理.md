---
aliases:
  - 利普希茨条件解的存在问题
  - 皮卡序列
info: 利普希茨条件解的存在问题
date: 2023-09-26-星期二 15:31
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 微分方程/ODE
id: wiki20230926153119
banner: "![[astrowalk.gif]]"
---
---

## The 1 cauchy 初值定理

```ad-theorem
title: Theorem 1
```
设初值问题

$$(E):\quad\frac{dy}{dx}=f(x,y),\quad y(x_{0})=y_{0},$$

f (x, y) 在矩形区域
$$R:\quad|x-x_0|\leqslant a,\quad|y-y_0|\leqslant b$$
连续[[Wiki - 度量空间的连续映射]]， 而且对 y满足李氏条件[[Wiki - 利普希茨条件]]. 则 (E）在区间 $I=\begin{bmatrix}x_0-h\text{,}x_0+h\end{bmatrix}$ 上有并且只有一个解, 其中常数

$$
\left.h=\min\left(\begin{matrix}{a},{\frac{b}{M}}\\\end{matrix}\right.\right),M>\max_{(x,y)\in R}\lvert f(x,y)\rvert.
$$






### Proof

1、初值方程有解等价于积分方程有解：

$$
y=y_{0}+\int _{x_{0}}^{x} f(x,y)\, dx 
$$

**微分方程转化为积分方程**
**正常情况下不一定微分方程的解等价于积分方程的解**

2、构造**皮卡序列**

$$
y_{n+1}(x)=y_{0}+\int _{x_{0}}^{x}f(x,y_{n}(x)) \, dx 
$$
其中 $y_{0}(x)=y_{0}$

用归纳，序列满足 

$$
\mid y_{n}(x)-y_{0}\mid\leq\mid \int _{x_{0}}^{x}f(x,y_{n}(x)) \, dx\mid \leq M\mid x-x_{0}\mid \leq Mh \leq b
$$

3、证 $\{y_{n}(x)\}$ 在 I 上一致收敛 [[Wiki - 一致收敛]]

即证明级数 $\sum_{n=1}^{\infty}(y_{n+1}(x)-y_{n}(x))$ 一致收敛

用归纳证明

$$
\mid y_{n+1}(x)-y_{n}(x)\mid\leq \frac{M}{L} \frac{{L\mid x-x_{0}\mid}^{n+1}}{(n+1)!}\leq \frac{{ML^{n}a^{n+1}}}{(n+1)!}
$$

假设 $n\leq k$ 时成立，

$$\left.|y_{k+2}(x)-y_{k+1}(x)|=\left|\int_{x_{0}}^{x}    [f(x,y_{k+1}(x))-f(x,y_k(x))]dx\right.\right|.$$

由 [[Wiki - 利普希茨条件]]得

$$\begin{aligned}|y_{k+2}(x)-y_{k+1}(x)|&\leqslant\left|\int_{x_0}^{\hat{x}}L|y_{k+1}(x)-y_k(x)|dx\right|\\&\leqslant M\left|\int_{x_0}^{\hat{x}}\frac{(L|x-x_0|)^{k+1}}{(k+1)!}dx\right|\\&=\frac ML\frac{(L|x-x_0|)^{k+2}}{(k+2)!}\end{aligned}$$


再由 [[Wiki - 函数项级数的weierstrass定理]]判定 $\left\{ y_{n}(x) \right\}$ 一致收敛

[[Wiki - 正项级数的达朗贝尔判别法]]


4、证明**唯一性**
  
反证：假设有两个 $y=u(x)$ 和 $y=v(x)$，则

$$u(x)-v(x)=\int_{x_0}^x[f(x,u(x))-f(x,v(x))]dx,x\in[x_{0}-d,x_{0}+d]$$

利用利普希茨条件，得到
$$|u(x)-v(x)|\leqslant L\bigg|\int_{x_0}^x\left|u(x)-v(x)\right|dx\bigg|.$$
由于 u (x)-v (x) 在 $[x_{0}-d,x_{0}+d]$ 上连续有界，设上界为 K。则

$$
|u(x)-v(x)|\leqslant LK|x-x_{0}|.
$$

再次带回积分中，得

$$
|u(x)-v(x)|\leqslant K\frac{(L|x-x_0|)^2}2.
$$
**（用推到的结论不断加强约束）**

不断迭代得到

$$|u(x)-v(x)|\leqslant K\frac{(L|x-x_0|)^n}{n!},\quad(x\in [x_{0}-d,x_{0}+d])$$
Let $n\to \infty$，得 $u(x)\equiv v(x)$








