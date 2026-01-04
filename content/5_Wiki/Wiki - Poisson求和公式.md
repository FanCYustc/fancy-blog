---
aliases:
info: 连接周期函数与Fourier变换的求和公式
date: 2025-12-22-星期一 17:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 数论
id: wiki20251222172000
banner: "![[astrowalk.gif]]"
---
---

# Poisson 求和公式

## Thm 1 Poisson 求和公式

```ad-theorem
title: Theorem 1 (Poisson Summation Formula)

设 $f \in \mathcal{S}(\mathbb{R})$。则有：
$$ \sum_{n=-\infty}^{\infty} f(x+n) = \sum_{n=-\infty}^{\infty} \hat{f}(n) e^{2\pi i n x} $$
特别地，取 $x=0$，得：
$$ \sum_{n=-\infty}^{\infty} f(n) = \sum_{n=-\infty}^{\infty} \hat{f}(n) $$
```

[[Wiki - fourier变换]]
### 证明思路

构造周期函数 $F(x) = \sum_{n=-\infty}^{\infty} f(x+n)$。
1.  计算 $F(x)$ 的 Fourier 级数 [[Wiki - Fourier级数]] 系数 $c_m$。
2.  利用积分换元发现 $c_m = \hat{f}(m)$。
3.  由 $F(x)$ 等于其 Fourier 级数（Dirichlet 定理的推广），即得证。[[Wiki - Fourier级数的Dirichlet定理]]

[[Wiki - 内积空间的正交基|fourier系数]]

