---
aliases: 
info: 小范围改变初值延伸连续区间
date: 2023-11-07-星期二 15:32
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
id: wiki20231107153201
banner: "![[astrowalk.gif]]"
---
---

## The 1 初值的连续性延伸

[[Wiki - 解对初值和参数的连续性]]

```ad-theorem
title: Theorem 1

设 n 维向量值函数 $\mathbf{f} (x, \mathbf{y})$ 在 $(x,\mathbf{y})$ 空间内的某个开区域 $G$ 上是连续的，而且对 $\mathbf{y}$ 满足局部李氏条件. 假设 $\mathbf{y}=\boldsymbol{\xi} (x)$ 是微分方程

$$
\frac{d\mathbf{y}}{dx}=\mathbf{f}(x,\mathbf{y})
$$
的一个解，令它的存在区间为 $J$. 现在，在区间 $J$ 内任取一个有界闭区间 $a\leqslant x\leqslant b.$ 则存在常数 $\delta>0$, 使得对任何初值 $(x_0,y_0)$,
$$a\leqslant x_0\leqslant b,\quad|\boldsymbol{y_0-\xi}(x_0)|\leqslant\delta$$


的柯西初值问题的解 $y=\varphi(x,x_0,y_0)$ 也**至少在区间 $a\leqslant x\leqslant b$ 上存在**，并且它对 $(x,x_0,y_0)$ 在闭区域

$$D_\delta:\quad a\leqslant x\leqslant b,\quad a\leqslant x_0\leqslant b,\quad|\boldsymbol{y_0-\xi}(x_0)|\leqslant\delta$$

上具有**连续性**

```

 [[Wiki - 利普希茨条件]]
 
解释：对一个初值的解连续，则在解的周围做微小扰动，还能找到连续的初值解

### Proof

同 [[Wiki - n维的皮卡定理]]构造皮卡序列证明
注意到积分曲线段 $F{:}\{(x,y)|y=\xi(x),a\leqslant x\leqslant b\}$ 是 $G$ 内的一个有界闭集，由有限覆盖[[Wiki - 紧致集合]]定理可知，存在 $\sigma>0$, 使得以 $T$ 为“中心线”的闭“管状”邻域

$$
\Sigma_\sigma:\quad a\leqslant x\leqslant b\text{,}\quad|y-\xi(x)|\leqslant\sigma 
$$

含在开区域 $G$ 内；并且 f (x, y) 在 $\Sigma_{\sigma}$ 内有整体李氏常数 $L$ [[Wiki - 利普希茨条件]] 这样，我们可以按常规构造的毕卡序列 [[Wiki - cauchy初值定理]] ：
$$
\varphi_{k+1}(x;x_0,y_0)=y_0+\int_{x_{0}}^{x} f(x,\varphi_k(x;x_0,y_0))dx,\quad
$$

初始选取 $\varphi_{0}(x; x_{0},\mathbf{y_{0}})=\boldsymbol{y_{0}-\xi}(x) -\boldsymbol{\xi}(x_{0})$

我们取正数

$$
\delta=\frac12e^{-L(b-a)}\sigma\text{,(注意,}\delta<\sigma).
$$
 

可归纳证明对 $k=0,1,2,...,有$

$$
\mid \boldsymbol{\varphi}_k(x;x_0,y_0)-\xi(x) \mid <\sigma
$$


和 
$$|\varphi_{k+1}(x;x_0,y_0)-\varphi_k(x;x_0,y_0)|\leqslant\frac{(L|x-x_0|)^{k+1}}{(k+1)!}|y_0-\xi(x_0)|$$ 
最后指出，$\boldsymbol{\varphi}_k(x;x_0,\boldsymbol{y}_0)$ 在 $D_{\delta}$ 上是一致收敛 [[Wiki - 一致收敛]]的，从而易知它的
极限函数 $\boldsymbol{\varphi}(x;x_0,\boldsymbol{y}_0)$ 就是满足定理要求的初值条件 (E) 的解
 