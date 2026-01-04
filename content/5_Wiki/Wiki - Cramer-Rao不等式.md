---
aliases: []
info: 
date: 2024-04-02-星期二 15:03
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/点估计
id: wiki20240402150306
banner: "![[astrowalk.gif]]"
---
---

## Def 1 C-R 正则分布族

```ad-definition
title: Definition 2

分布族 $\{f(x,\theta),\theta\in \Theta\}$，满足：

(1) 参数空间 $\theta$ 是直线上的某个开区间；

(2) 对任何 $x\in\mathscr{X}$ 及 $\theta\in\Theta$, $f(x,\theta)>0$, 即分布族具有共同支撑；

(3) 对任何 $x\in\mathscr{X}$ 及 $\theta\in\Theta,\:\frac{\partial f(x,\theta)}{\partial\theta}$ 存在；

(4) 概率函数 $f(x,\theta)$ 的积分与微分运算可交换，即

$\begin{aligned}\frac\partial{\partial\theta}\int f(x,\theta)dx=\int\frac\partial{\partial\theta}f(x,\theta)dx,\end{aligned}$

若 $f(x,\theta)$ 为离散随机变量的概率分布，上述条件改为无穷级数和微分运算可交换；

(5) fisher 信息量存在有限，$0<I(\theta)<\infty$

称该分布族为 **C-R 正则分布族**

```

[[Wiki - Fisher信息函数]]

## The 1 cramer-Rao 不等式

```ad-theorem
title: Theorem 1

Suppose that $X_1,\ldots,X_n$ is a simple random sample from a population having a common density function $f(x,\theta)\:depending\:on\:a\:parameter\:\theta,\:and\:let\:\hat{g}_n(X)\:be\:an\:unbiased\:estimator$ of differentiable function $g(\theta)$based on $X_1,\ldots, X_n.$ If $f (x|\theta)$ is a smooth function of $x~ and ~\theta$ (C - R regular conditions), then

$$
\mathrm{Var}_\theta(\hat{g})\geq\frac{[g^{\prime}(\theta)]^2}{nI(\theta)},\forall\mathrm{~}\theta\in\Theta,
$$

$where\:the\:Fisher\:information\:I(\theta)\:is\:given\:by$

$$
I(\theta):=E\left(\frac\partial{\partial\theta}\log f(X,\theta)\right)^2
$$


```

 [[Wiki - 无偏估计]] 

应用：如果一个无偏估计 $\hat{g}(\boldsymbol{X})$ 能达到 C-R 不等式的下界，则它就是 UMVUE [[Wiki - 一致最小方差无偏估计]]，**但达不到也不一定不是**

## Pro 1 C-R 取等条件

在证明中用了 cauchy 不等式 [[Wiki - Cauchy-Schwarz不等式]]，所以要求 g 和 T 要有一定的线性关系

(1) 若样本分布族非指数族，任何 $g(\theta)$ 的任何无偏估计，其方差[[Wiki - 方差]]不能处处 (即对每一个 $\theta\in\Theta$) 达到 C-R 不等式中的下界.（**只有在指数族下才有可能**）

(2) 即使样本分布族为指数族[[Wiki - 指数族]] $f(x,\theta)=C(\theta)\exp\{Q(\theta)T(x)\}h(x)$, 也不是对任何 $g(\theta)$ 都能找到无偏估计 $\hat{g}(X)$, 使其方差处处达到 C-R 下界. 唯有在 $g(\theta)=$ $E_\theta(aT(X)+b)$ 时才有，即 $\hat{g}(X)=aT(X)+b$ 的情形才可，此处 $a\neq0$ 和 b 与 $X$ 无关，但可以是 $\theta$ 的函数。


[[Wiki - 估计的效率]]

