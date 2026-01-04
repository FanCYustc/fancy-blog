---
aliases:
info: Rd上的波动方程及其Cauchy问题
date: 2025-12-25-星期四 11:00
update: 2025-12-25-星期四 11:00
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 微分方程/PDE
id: wiki20251225110001
banner: "![[astrowalk.gif]]"
---

## Def 1 波动方程

```ad-definition
title: Definition 1 (Wave Equation)

$d$ 维波动方程描述了波在介质中的传播，方程形式为：
$$ \Delta u = \frac{\partial^2 u}{\partial t^2} $$
其中 $\Delta = \sum_{j=1}^d \frac{\partial^2}{\partial x_j^2}$ 是 Laplace 算子，$u(x, t)$ 是时间 $t$ 和位置 $x \in \mathbb{R}^d$ 的函数。
```
通常假设波速 $c=1$。[[Wiki - 散度，旋度，laplace算子]]

## Prob 1 Cauchy 问题

Cauchy 问题（初值问题）是寻找满足波动方程且满足以下初始条件的解 $u$：
$$ u(x, 0) = f(x), \quad \frac{\partial u}{\partial t}(x, 0) = g(x) $$
其中 $f, g \in \mathcal{S}(\mathbb{R}^d)$（或适当的函数空间）。[[Wiki - cauchy初值定理]]

## Thm 1 Fourier 变换解法

通过对 $x$ 变量进行 Fourier 变换，可以将 PDE 转化为 ODE，得到解的 Fourier 表达形式：
$$ \hat{u}(\xi, t) = \hat{f}(\xi) \cos(2\pi |\xi| t) + \hat{g}(\xi) \frac{\sin(2\pi |\xi| t)}{2\pi |\xi|} $$

[[Wiki - fourier变换]]、[[Wiki - Huygens原理]]
