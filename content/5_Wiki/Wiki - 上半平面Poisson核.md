---
aliases:
  - poisson kernel
info: 上半平面的Dirichlet问题与Poisson核
date: 2025-12-22-星期一 17:19
update:
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 微分方程/PDE
id: wiki20251222171900
banner: "![[astrowalk.gif]]"
---
---

# 上半平面 Poisson 核

## Problem

求解上半平面 $\mathbb{R}^2_+ = \{(x, y) : x \in \mathbb{R}, y > 0\}$ 上的 Laplace 方程 [[Wiki - 散度，旋度，laplace算子]]（Dirichlet 问题）：
$$ \Delta u = \frac{\partial^2 u}{\partial x^2} + \frac{\partial^2 u}{\partial y^2} = 0 $$
边界条件：$u(x, 0) = f(x)$。

## Solution via Fourier Transform

对 $x$ 变量进行 Fourier 变换 [[Wiki - fourier变换]]，得到关于 $y$ 的常微分方程：
$$ -4\pi^2 \xi^2 \hat{u}(\xi, y) + \frac{\partial^2 \hat{u}}{\partial y^2} = 0 $$
解得 $\hat{u}(\xi, y) = A(\xi) e^{-2\pi |\xi| y} + B(\xi) e^{2\pi |\xi| y}$。
为保证有界性，取 $B(\xi)=0$，由边界条件知 $A(\xi) = \hat{f}(\xi)$。
$$ \hat{u}(\xi, y) = \hat{f}(\xi) e^{-2\pi |\xi| y} $$

利用卷积定理，解为：
$$ u(x, y) = (f * \mathcal{P}_y)(x) $$
其中 $\mathcal{P}_y(x)$ 是 $e^{-2\pi |\xi| y}$ 的逆 Fourier 变换。

## Def 1 Poisson 核

```ad-definition
title: Definition 1 (Poisson Kernel for Upper Half-Plane)

$$ \mathcal{P}_y(x) = \frac{1}{\pi} \frac{y}{x^2 + y^2} $$
```

$\mathcal{P}_y(x)$ 也是一族 Good Kernel。[[Wiki - Good Kernel]]

