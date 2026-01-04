---
aliases: 
info: 
date: 2024-04-09-星期二 20:49
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/点估计
id: wiki20240409204950
banner: "![[astrowalk.gif]]"
---
---


## Def 1 估计的效率


由 [[Wiki - Cramer-Rao不等式]]，通常估计达不到下界

```ad-definition
title: Definition 1

当达不到下界时，会用 $e_{\hat{g}}(\theta)=\frac{g'(\theta)^{2} / nI(\theta)}{D_{\theta}[\hat{g}(\boldsymbol{X})]}$ 来衡量估计的优劣

如果 $e_{\hat{g}}(\theta)=1$，称为有效估计；如果 $\lim_{ n \to \infty }e_{\hat{g}}(\theta)=1$，称为渐进有效估计


```

