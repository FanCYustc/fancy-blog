---
aliases: 
info: 
date: 2024-03-19-星期二 14:55
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240319145506
banner: "![[astrowalk.gif]]"
---
---

## Def 1 有效的比较

```ad-definition
title: Definition 1

如果 $\hat{g}_{1}(\boldsymbol{X}),\hat{g}_{2}(\boldsymbol{X})$ 为两个无偏估计量，若 $Var_{\theta}[\hat{g}_{1}(\boldsymbol{X})]\leq Var_{\theta}[\hat{g}_{2}(\boldsymbol{X})], \forall\theta\in \Theta$，且<号至少有一个 $\theta$ 严格成立，就称 $g_{1}$ 比 $g_{2}$ 有效


```

 [[Wiki - 无偏估计]]

相对的有效性用 $\frac{Var[\hat{g}_{2}(\boldsymbol{X})]}{Var[\hat{g}_{1}(\boldsymbol{X})]}$ 来衡量


充分统计量 [[Wiki - 充分统计量]]会有更好的有效性