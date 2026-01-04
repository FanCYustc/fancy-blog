---
aliases:
info: Fourier变换的Plancherel定理
date: 2025-12-22-星期一 17:17
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 数学分析/泛函分析
  - fourier分析/fourier变换
id: wiki20251222171700
banner: "![[astrowalk.gif]]"
---
---

# Plancherel 定理

## Thm 1 Plancherel 定理

```ad-theorem
title: Theorem 1 (Plancherel Formula)

若 $f \in \mathcal{S}(\mathbb{R})$，则：
$$ \|f\|_2 = \|\hat{f}\|_2 $$
即：
$$ \int_{-\infty}^{\infty} |f(x)|^2 dx = \int_{-\infty}^{\infty} |\hat{f}(\xi)|^2 d\xi $$
```

[[Wiki - Schwartz空间]]

这表明 Fourier 变换是 $L^2(\mathbb{R})$ 空间上 [[Wiki - 平方可积]]的等距同构（Unitary Operator）。[[Wiki - 等距映射与等距同构]]

### 推广 (Parseval's Identity)

若 $f, g \in \mathcal{S}(\mathbb{R})$，则：
$$ \int_{-\infty}^{\infty} f(x)\overline{g(x)} dx = \int_{-\infty}^{\infty} \hat{f}(\xi)\overline{\hat{g}(\xi)} d\xi $$
即 Fourier 变换保持内积 [[Wiki - 内积]]不变。


是 [[Wiki - Parseval等式]]在 fourier 变换上的推广 [[Wiki - fourier变换]]

## Thm 2 R^d 上的形式

上述结论在 $\mathbb{R}^d$ 上同样成立。若 $f \in \mathcal{S}(\mathbb{R}^d)$，则：
$$ \int_{\mathbb{R}^d} |f(x)|^2 dx = \int_{\mathbb{R}^d} |\hat{f}(\xi)|^2 d\xi $$