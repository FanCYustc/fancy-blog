---
aliases: 
info: 置信区间，置信水平，置信系数，置信限
date: 2024-06-23-星期日 10:38
update: 
tags:
  - wiki/year2024
  - wiki/month06
  - 数理统计/区间估计
id: wiki20240623103806
banner: "![[astrowalk.gif]]"
---
---

## Def 1 置信区间

设 $[\hat{\theta}_1(\boldsymbol{X}),\hat{\theta}_2(\boldsymbol{X})]$ 是参数 $\theta$ 的一个区间估计，若对于给定的 $0<\alpha<1$, 有
$$P_\theta\left(\hat\theta_1(\boldsymbol{X})\leqslant\theta\leqslant\hat\theta_2(\boldsymbol{X})\right)\geqslant1-\alpha,\quad\theta\in\Theta,$$
则称 $\begin{bmatrix}\hat{\theta}_1(\boldsymbol{X}),\hat{\theta}_2(\boldsymbol{X})\end{bmatrix}$ 是 $\theta$ 的**置信水平** (confidence level ) 为 $1-\alpha$ 的**置信区间** (confidence interval). 而 $\inf_{\theta\in\Theta} P_{\theta}(\hat{\theta}_1(\boldsymbol{X})\leqslant\theta\leqslant\hat{\theta}_2(\boldsymbol{X}))$ 称为 $\left[\hat{\theta}_1(\boldsymbol{X}),\hat{\theta}_2(\boldsymbol{X})\right]$ 的**置信系数**.

置信区间是随机区间，但是真实参数 $\theta$ 落在其中的概率是可控的

## Def 2 置信限

对于单边的估计量，如果有
$$
\begin{align}
P_\theta\left(\theta\leqslant\hat{\theta}_U(\boldsymbol{X})\right)\geqslant1-\alpha,\quad\text{一切 }\theta\in\Theta,\\P_\theta\left(\hat{\theta}_L(\boldsymbol{X})\leqslant\theta\right)\geqslant1-\alpha,\quad\text{一切 }\theta\in\Theta
\end{align}
$$

则分别称为置信水平为 $1-\alpha$ 的置信上限和置信下限

## Def 3 置信域

对于待估参数是多维的情况，对样本有统计量 $S(X)$

(1) 对任一样本 $X,S(X)$ 是 $\theta$ 的一个子集；

(2) 对给定的 $0< \alpha < 1, P_{{\boldsymbol{\theta }}}( \boldsymbol{\theta }\in S( \boldsymbol{X}) ) \geqslant 1- \alpha$, 一切 $\boldsymbol\theta\in\Theta$,

则称 $S(\boldsymbol{X})$ 是 $\theta$ 的置信水平为 $1-\alpha$ 的**置信域** (confidence region) 或置信集，而 $\operatorname*{inf}_{\boldsymbol{\theta}\in\Theta}P_{\boldsymbol{\theta}}\left(\boldsymbol{\theta}\in S(\boldsymbol{X})\right)$ 称为置信系数。

