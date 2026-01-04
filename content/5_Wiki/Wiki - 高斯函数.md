---
aliases:
  - Gaussian Function
info: 高斯函数的定义及其Fourier变换
date: 2025-12-22-星期一 17:13
update:
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 数学分析/函数
id: wiki20251222171300
banner: "![[astrowalk.gif]]"
---

## Def 1 高斯函数

```ad-definition
title: Definition 1 (Gaussian Function)

在 Fourier 分析中，标准的高斯函数通常定义为：
$$ G(x) = e^{-\pi x^2} $$
```

选择 $e^{-\pi x^2}$ 而不是 $e^{-x^2/2}$ 的原因是为了简化 Fourier 变换中的常数因子。

## Thm 1 高斯函数的 Fourier 变换

```ad-theorem
title: Theorem 1

高斯函数 $e^{-\pi x^2}$ 是其自身的 Fourier 变换。即：
$$ \text{If } f(x) = e^{-\pi x^2}, \text{ then } \hat{f}(\xi) = e^{-\pi \xi^2} $$
```
 
 [[Wiki - fourier变换]]
### 证明思路

1.  验证 $f$ 满足微分方程 $f'(x) + 2\pi x f(x) = 0$。
2.  对微分方程两边取 Fourier 变换，利用 [[Wiki - Fourier变换的基本性质]]，得到 $\hat{f}$ 满足相同的微分方程：$2\pi i \xi \hat{f}(\xi) + (\hat{f})'(\xi) \cdot i = 0 \implies \hat{f}'(\xi) + 2\pi \xi \hat{f}(\xi) = 0$。
3.  由于满足相同的一阶线性微分方程且初值 $\hat{f}(0) = \int e^{-\pi x^2} dx = 1 = f(0)$，由解的唯一性知 $\hat{f}(\xi) = f(\xi)$。

## 应用：Good Kernel

定义 $K_\delta(x) = \delta^{-1/2} e^{-\pi x^2/\delta}$。这族高斯核构成了实直线上的 Good Kernel（或近似单位元），常用于证明 Fourier 反演公式。 [[Wiki - Good Kernel]]

## Def 2 多维高斯函数

在 $\mathbb{R}^d$ 中，高斯函数定义为：
$$ G(x) = e^{-\pi |x|^2} = e^{-\pi (x_1^2 + \dots + x_d^2)} $$
其 Fourier 变换仍为自身：$\hat{G}(\xi) = e^{-\pi |\xi|^2}$。


