---
aliases:
  - UMVUE
  - 均方误差
info: 
date: 2024-03-29-星期五 11:25
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240329112557
banner: "![[astrowalk.gif]]"
---
---

针对可估参数

## Def 1 UMVUE


[[Wiki - 估计的有效性]]

```ad-definition
title: Definition 1

设 $\hat{g}_1(X)$ 和 $\hat{g}_2(X)$ 为 $g(\theta)$ 的两个不同的估计量，若

$$
E_\theta\left(\hat{g}_1(\boldsymbol{X})-g(\theta)\right)^2\leqslant E_\theta\left(\hat{g}_2(\boldsymbol{X})-g(\theta)\right)^2,\quad\text{一切 }\theta\in\Theta,
$$

且**不等号至少对某个 $\theta\in\Theta$ 成立**，则称在 **MSE （指均方误差）** 准则下 $\hat{g}_1(X)$ 优于 $\hat{g}_2(X).$ 若存在 $\hat{g}^*(X)$, 使得对 $g(\theta)$ 的任一估计量 $\hat{g}(X)$, 都有

$$
E_{\theta}\left ( \hat{g} ^{* }( \boldsymbol{X}) - g ( \theta) \right ) ^2\leqslant E_{\theta}\left ( \hat{g} ( \boldsymbol{X}) - g ( \theta) \right ) ^2, \quad \forall \theta\in \Theta,
$$
则称 $\hat{g}^*(X)$ 为 $g(\theta)$ 的**一致最小均方误差估计**.

```


通常考虑 [[Wiki - 无偏估计]]

```ad-definition
title: Definition 2

，则均方误差就变为方差 $D_{\theta}(\hat{g}(\boldsymbol{X}))$，得到的最小估计叫**一致最小方差无偏估计（UMVUE）**

```

[[Wiki - 随机变量的矩]]

[[Wiki - 方差]]


