---
aliases:
  - Fourier卷积定理
info: Fourier变换的基本性质
date: 2025-12-22-星期一 17:12
update:
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析/fourier变换
id: wiki20251222171200
banner: "![[astrowalk.gif]]"
---
---

# Fourier 变换的基本性质

设 $f \in \mathcal{S}(\mathbb{R})$，其 Fourier 变换定义为：[[Wiki - fourier变换]]
$$ \hat{f}(\xi) = \int_{-\infty}^{\infty} f(x) e^{-2\pi i x \xi} dx $$

## Thm 1 基本运算法则

```ad-theorem
title: Properties of Fourier Transform

1.  **平移 (Translation)**:
    若 $g(x) = f(x+h)$，则 $\hat{g}(\xi) = \hat{f}(\xi)e^{2\pi i h \xi}$。
    若 $g(x) = f(x)e^{-2\pi i x h}$，则 $\hat{g}(\xi) = \hat{f}(\xi+h)$。

2.  **伸缩 (Scaling)**:
    若 $g(x) = f(\delta x)$ ($\delta > 0$)，则 $\hat{g}(\xi) = \delta^{-1} \hat{f}(\delta^{-1}\xi)$。

3.  **微分与乘法 (Differentiation and Multiplication)**:
    $$ (\widehat{f'})(\xi) = 2\pi i \xi \hat{f}(\xi) $$
    $$ (\widehat{-2\pi i x f(x)})(\xi) = \frac{d}{d\xi}\hat{f}(\xi) $$
```

### 证明思路

这些性质直接由积分换元法和分部积分法得出。微分性质展示了 Fourier 变换将“微分运算”转化为“乘法运算”的能力，这是其在求解微分方程中应用广泛的核心原因。

## Cal 1

由此可得，Fourier 变换将 Schwartz 空间 $\mathcal{S}(\mathbb{R})$ 映射到自身。因为速降性质 $x^k f^{(\ell)}(x)$ 的界可以通过 Fourier 变换转化为导数和多项式乘法的界。[[Wiki - Schwartz空间]]

## Thm 2 卷积定理

```ad-theorem
title: Theorem 1

若 $f, g \in \mathcal{S}(\mathbb{R})$，则：
$$ \widehat{f * g}(\xi) = \hat{f}(\xi) \hat{g}(\xi) $$

逆定理：
$$ \widehat{fg}(\xi) = (\hat{f} * \hat{g})(\xi) $$
```

这表明：**空间域的卷积对应于频率域的乘法**。[[Wiki - 卷积]]**空间域的乘法对应于频率域的卷积**。

卷积定理是 Fourier 分析在信号处理和求解偏微分方程中应用极为广泛的基础。它允许我们将复杂的卷积运算转化为简单的乘法运算。

## Thm 3 R^d 上的性质

在 $\mathbb{R}^d$ 上，除了上述平移、伸缩、微分性质的推广外，还有：

1.  **旋转 (Rotation)**:
    若 $g(x) = f(Rx)$，其中 $R$ 是旋转矩阵（正交矩阵），则 $\hat{g}(\xi) = \hat{f}(R\xi)$。
    特别地，若 $f$ 是[[Wiki - 径向函数]]，则 $\hat{f}$ 也是径向函数。

