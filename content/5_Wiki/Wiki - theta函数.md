---
aliases: 
info: 
date: 2024-05-30-星期四 10:42
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析
id: wiki20240530104227
banner: "![[astrowalk.gif]]"
---
---

## Def 1 theta 函数

```ad-definition
title: Definition 1


$$\vartheta(t)=\sum_{n=-\infty}^\infty e^{-\pi n^2t}$$


```

## Pro 1 Jordan Identity

```ad-proposition
title: Propositon 1

经 [[Wiki - fourier变换]]，可以证明

$$
\theta(t) = \frac{1}{\sqrt{ t }} \theta\left( \frac{1}{t} \right)
$$


```

## Pro 2

```ad-proposition
title: Propositon 2


$$\begin{aligned} If Re(s)&>1,then\\&\pi^{-s/2}\Gamma(s/2)\zeta(s)=\frac{1}{2}\int_{0}^{\infty}u^{(s/2)-1}[\vartheta(u)-1]du.\end{aligned}$$


```

[[Wiki - gamma函数]]

[[Wiki - zeta函数]]

### Proof

证明见 stein [[Book - Complex Analysis]] 第六章 zeta 函数部分 theorem2.2 部分

