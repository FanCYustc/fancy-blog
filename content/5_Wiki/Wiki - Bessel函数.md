---
aliases: [Bessel Function]
info: 整阶Bessel函数的定义与性质
date: 2025-12-25-星期四 11:05
update: 2025-12-25-星期四 11:05
tags: [wiki/year2025, wiki/month12, 数学分析/特殊函数]
id: wiki20251225110501
banner: "![[astrowalk.gif]]"
---

## Def 1 Bessel 函数

```ad-definition
title: Definition 1 (Bessel Function of Integer Order)

$n$ 阶 Bessel 函数 $J_n(\rho)$ ($n \in \mathbb{Z}$) 定义为函数 $e^{i\rho \sin\theta}$ 的第 $n$ 个 Fourier 系数：
$$ J_n(\rho) = \frac{1}{2\pi} \int_0^{2\pi} e^{i\rho \sin\theta} e^{-in\theta} d\theta $$
```

等价地，有生成函数展开：
$$ e^{i\rho \sin\theta} = \sum_{n=-\infty}^\infty J_n(\rho) e^{in\theta} $$
[[Wiki - fourier变换]]
## Properties

1.  **实数性**: 对于实数 $\rho$，$J_n(\rho)$ 是实数。
2.  **奇偶性**: $J_{-n}(\rho) = (-1)^n J_n(\rho)$。
3.  **渐近性**: 当 $\rho \to \infty$ 时，$J_n(\rho) \approx \sqrt{\frac{2}{\pi\rho}} \cos(\rho - \frac{n\pi}{2} - \frac{\pi}{4})$。

## Relation to Fourier Transform

Bessel 函数与径向函数的 Fourier 变换密切相关。例如在 $\mathbb{R}^2$ 中，若 $f(x)=f_0(|x|)$，则 $\hat{f}(\xi) = F_0(|\xi|)$ 满足：
$$ F_0(\rho) = 2\pi \int_0^\infty J_0(2\pi \rho r) f_0(r) r dr $$

[[Wiki - 径向函数]]
