---
aliases: 
info: fourier变换的推导
date: 2024-05-29-星期三 17:34
update: 
tags:
  - wiki/year2023
  - wiki/month06
  - 数学分析/级数
  - fourier分析
  - 复分析
id: wiki20240529173416
banner: "![[astrowalk.gif]]"
---
---

## The 1 fourier 积分定理

由 [[Wiki - Fourier级数的复数形式]]，$f (x)\sim \sum_{n=-\infty}^{+\infty}F_{n}e^{in\omega x}$。代入 $F_{n}$ 得

$$\begin{aligned}
f(x)\sim & \sum_{n=-\infty}^\infty\frac{1}{2l}\int_{-l}^lf(\xi)\mathrm{e}^{-\mathrm{i}n\omega(\xi-x)}\mathrm{d}\xi   \\
&=\sum_{n=-\infty}^\infty\frac{1}{2\pi}\left[\int_{-l}^lf(\xi)\mathrm{e}^{-\mathrm{i}\lambda_n(\xi-x)}\mathrm{d}\xi\right]\Delta\lambda_n \\
&=\sum_{n=-\infty}^\infty\frac1{2\pi}\Delta\lambda_n\mathrm{e}^{\mathrm{i}\lambda_nx}H_n, \\
H_n&=\int_{-l}^lf(\xi)\mathrm{e}^{-\mathrm{i}\lambda_n\xi}\mathrm{d}\xi
\end{aligned}$$

这是 Riemann 和的形式 [[Scientech - 数学分析-Riemann积分]]，可写成下列定理

```ad-theorem
title: Theorem 1

如果定义在整个数轴上的函数 $f(x)$ 在任何有限区间上是分段可微的，并且在区间 $(-\infty,+\infty)$ 上绝对可积，那么对任何 $x\in(-\infty,+\infty)$, 有
$$\dfrac{1}{2\:\pi}\int_{-\infty}^{+\infty}\:\mathrm{d}\lambda\mathrm{e}^{\mathrm{i}\lambda x}\int_{-\infty}^{+\infty}\:\mathrm{d}\xi f(\xi)\mathrm{e}^{-\mathrm{i}\lambda\xi}=\dfrac{f(x+0)+f(x-0)}{2}.$$



```

类似 [[Wiki - Fourier级数的Dirichlet定理]]

## Def 1 Fourier 变换

```ad-definition
title: Definition 1 (Fourier Transform on $\mathbb{R}$)

设 $f \in L^1(\mathbb{R})$。其 Fourier 变换 $\hat{f}$ 定义为：
$$ \hat{f}(\xi) = \int_{-\infty}^{\infty} f(x) e^{-2\pi i x \xi} dx, \quad \xi \in \mathbb{R} $$

```

**注意**：Fourier 变换的定义有多种常数约定。本笔记采用 Stein教材中的定义，即指数上带有 $2\pi$，这样使得系数最为对称（均为 1）。

对比 [[Wiki - Fourier级数的复数形式]]

## Def 2 R^d 上的 Fourier 变换

```ad-definition
title: Definition 2 (Fourier Transform on $\mathbb{R}^d$)

设 $f \in L^1(\mathbb{R}^d)$。其 Fourier 变换 $\hat{f}$ 定义为：
$$ \hat{f}(\xi) = \int_{\mathbb{R}^d} f(x) e^{-2\pi i x \cdot \xi} dx, \quad \xi \in \mathbb{R}^d $$
```
其中 $x \cdot \xi$ 表示 $\mathbb{R}^d$ 中的标准内积 [[Wiki - 内积]]。

## Thm 1 反演公式

```ad-theorem
title: Theorem 1 (Fourier Inversion Formula)

若 $\hat{f} \in L^1(\mathbb{R})$ (或 $f \in \mathcal{S}(\mathbb{R})$)，则有 **Fourier 逆变换公式**：
$$ f(x) = \int_{-\infty}^{\infty} \hat{f}(\xi) e^{2\pi i x \xi} d\xi $$
```

若 $f \in \mathcal{S}(\mathbb{R}^d)$，则：
$$ f(x) = \int_{\mathbb{R}^d} \hat{f}(\xi) e^{2\pi i x \cdot \xi} d\xi $$

此公式表明，函数 $f$ 可以由其频率分量 $\hat{f}(\xi)$ 通过积分重构。其中 $\hat{f}(\xi)$ 是 fourier 变换 [[Wiki - fourier变换]]

[[Wiki - Schwartz空间]]
### 证明思路

证明通常利用高斯核 $K_\delta(x)$ 作为近似单位元。[[Wiki - 高斯函数]]
1.  考察积分 $F_\epsilon(x) = \int_{-\infty}^{\infty} \hat{f}(\xi) e^{2\pi i x \xi} \Phi(\epsilon \xi) d\xi$，其中 $\Phi(\xi) = e^{-\pi \xi^2}$。
2.  利用 Fubini 定理 [[Wiki - Fubini定理]]交换积分顺序，并利用高斯函数的变换性质。
3.  令 $\epsilon \to 0$，利用 [[Wiki - Good Kernel]] 的性质证明 $F_\epsilon(x) \to f(x)$。




