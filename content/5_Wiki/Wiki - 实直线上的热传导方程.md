---
aliases:
  - 热核
info: 利用Fourier变换求解热传导方程
date: 2025-12-22-星期一 17:18
update:
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 微分方程/PDE
id: wiki20251222171800
banner: "![[astrowalk.gif]]"
---

# 实直线上的热传导方程

## Problem

求解一维热传导方程初值问题：
$$ \frac{\partial u}{\partial t} = \frac{\partial^2 u}{\partial x^2}, \quad t > 0, x \in \mathbb{R} $$
初始条件：$u(x, 0) = f(x)$，其中 $f \in \mathcal{S}(\mathbb{R})$。

## Solution via Fourier Transform

对 $x$ 变量进行 Fourier 变换 [[Wiki - fourier变换]]，设 $\hat{u}(\xi, t) = \int_{-\infty}^{\infty} u(x, t) e^{-2\pi i x \xi} dx$。
方程转化为常微分方程：
$$ \frac{\partial \hat{u}}{\partial t} = -4\pi^2 \xi^2 \hat{u} $$
解得：
$$ \hat{u}(\xi, t) = \hat{f}(\xi) e^{-4\pi^2 \xi^2 t} $$

利用反演公式和卷积定理 [[Wiki - Fourier变换的基本性质#Thm 2 卷积定理]]，解为：
$$ u(x, t) = (f * \mathcal{H}_t)(x) $$
其中 $\mathcal{H}_t(x)$ 是**热核 (Heat Kernel)**，它是 $e^{-4\pi^2 \xi^2 t}$ 的逆 Fourier 变换。

## Def 1 热核

```ad-definition
title: Definition 1 (Heat Kernel)

$$ \mathcal{H}_t(x) = \frac{1}{\sqrt{4\pi t}} e^{-\frac{x^2}{4t}} $$
```

$\mathcal{H}_t(x)$ 是一族高斯型 Good Kernel [[Wiki - Good Kernel]]。当 $t \to 0^+$ 时，$u(x, t) \to f(x)$。

