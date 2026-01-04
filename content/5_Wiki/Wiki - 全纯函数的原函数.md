---
aliases: 
info: 
date: 2024-04-11-星期四 09:59
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/积分
id: wiki20240411095951
banner: "![[astrowalk.gif]]"
---
---

## The 1 原函数定理

```ad-theorem
title: Theorem 1

```
设 $D$ 是 $\boldsymbol C$ 中的**单连通域**[[Wiki - 连通区域#Def 4 单连通]]，$f\in H(D)$, 那么 $F(\boldsymbol{z})=\int_{\boldsymbol{z}_0}^{\boldsymbol{z}}f(\boldsymbol{\zeta})$ d $\boldsymbol{\zeta}$ 是 $f$ 在 $D$ 中的一个原函数.

[[Wiki - 单变量不定积分]]


### Proof

证明时证的是这个结论：

```ad-theorem
title: Theorem 2



设 $f$ 在域 $D$ 中连续，且对 D 中 任 意 可 求 长 闭 曲线 $\gamma$, 均有 $\int_\gamma f(z) d z=0$, 那么
$$F(z)=\int_{z_0}^zf(\zeta)\mathrm{d}\zeta $$

是 $D$ 中的全纯函数，且在 $D$ 中有 $F^\prime(z)=f(z)$ ,

```

[[Wiki - 全纯函数]]

利用 [[Wiki - cauchy积分定理]]，这样才保证 F 是单值函数

## Cal 1 

```ad-theorem
title: Theorem 3

设 $D$ 是 $\boldsymbol C$ 中的单连通域，$f\in H(D)$, $\boldsymbol\Phi$ 是 $f$ 的
任一原函数，那么
$$\int_{z_0}^zf(\zeta)\mathrm{d}\zeta=\Phi(z)-\Phi(z_0).$$

```

[[Wiki - lebesgue微分定理]]

