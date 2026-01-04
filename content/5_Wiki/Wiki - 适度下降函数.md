---
aliases:
  - moderate decrease
info: 适度下降函数的定义与性质
date: 2025-12-22-星期一 17:10
update:
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 数学分析/函数
id: wiki20251222171000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 适度下降函数

```ad-definition
title: Definition 1 (Functions of Moderate Decrease)

设 $f$ 是定义在 $\mathbb{R}$ 上的连续函数。若存在常数 $A > 0$，使得对于所有 $x \in \mathbb{R}$，都有
$$ |f(x)| \le \frac{A}{1+x^2} $$
则称 $f$ 为**适度下降函数 (function of moderate decrease)**。
记作 $f \in \mathcal{M}(\mathbb{R})$。
```

直观上，这意味着 $f(x)$ 在无穷远处至少以 $1/x^2$ 的速度衰减。

### Properties

1.  **可积性**: 适度下降函数是 Lebesgue 可积 [[Wiki - lebesgue积分|lebesgue可积]]的，即 $\mathcal{M}(\mathbb{R}) \subset L^1 (\mathbb{R})$。
    $$ \int_{-\infty}^{\infty} |f(x)| dx \le \int_{-\infty}^{\infty} \frac{A}{1+x^2} dx = A\pi < \infty $$
2.  **空间关系**: $\mathcal{S}(\mathbb{R}) \subset \mathcal{M}(\mathbb{R}) \subset L^1(\mathbb{R})$。其中 $\mathcal{S}(\mathbb{R})$ 是 [[Wiki - Schwartz空间]]。

