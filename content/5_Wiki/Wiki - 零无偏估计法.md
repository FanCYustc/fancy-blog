---
aliases: 
info: 
date: 2024-04-02-星期二 14:13
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/点估计
id: wiki20240402141315
banner: "![[astrowalk.gif]]"
---
---

## The 1 零无偏估计法

```ad-theorem
title: Theorem 1

```
设 $\hat{g}(X)$ 是 $g(\theta)$ 的一个无偏估计 [[Wiki - 无偏估计]]，$D_\theta(\hat{g}(X))<\infty$, [[Wiki - 方差]]对任何 $\theta\in\Theta$ 则 $\hat{g}(X)$ 是 $g(\theta)$ 的 UMVUE [[Wiki - 一致最小方差无偏估计]]，**当且仅当**对任何满足条件“$E_\theta l(X)=0$, 对一切 $\theta\in\Theta$”的统计量 $l(X)$, 必有

$$
\operatorname{Cov}_\theta\big(\hat{g}(\boldsymbol{X}),l(\boldsymbol{X})\big)=E_\theta\big[\hat{g}(\boldsymbol{X})\cdot l(\boldsymbol{X})\big]=0,\quad\text{一切 }\theta\in\Theta,
$$

[[Wiki - 协方差]]

## Cal 1 

如果还已知一个充分统计量 T，则还有下面的推论

$T(\boldsymbol{X})$ 为 $\theta$ 的充分统计量 [[Wiki - 充分统计量]]，h (T) 是 $g(\theta)$ 的无偏估计，$D_{\theta}(h(T))<+\infty$，h (T) 是 UMVUE，当且仅当对任何满足 $E_{\theta}\delta (T)=0,\forall \theta\in \Theta$ 的统计量 $\delta(T)$，有 $Cov_{\theta}(h (T),\delta (T))=E_{\theta}(h (T)\delta (T))=0,\forall\theta\in \Theta$

把关于 X 的统计量限缩在了关于 T 的统计量

### Proof

利用[[Wiki - Rao-Blackwell定理]]

