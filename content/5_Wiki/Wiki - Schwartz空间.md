---
aliases: 
info: Schwartz空间（速降函数空间）的定义与性质
date: 2025-12-22-星期一 17:11
update: 
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 数学分析/泛函分析
id: wiki20251222171100
banner: "![[astrowalk.gif]]"
---

## Def 1 Schwartz 空间

```ad-definition
title: Definition 1 (The Schwartz Space)

Schwartz 空间 $\mathcal{S}(\mathbb{R})$ 是所有满足以下条件的无限次可微函数 $f: \mathbb{R} \to \mathbb{C}$ 的集合：
对于任意非负整数 $k, \ell \ge 0$，存在常数 $C_{k,\ell} > 0$ 使得
$$ \sup_{x \in \mathbb{R}} |x^k f^{(\ell)}(x)| \le C_{k,\ell} $$
```

换句话说，$\mathcal{S}(\mathbb{R})$ 中的函数及其任意阶导数在无穷远处比任意多项式的倒数衰减得都快。这类函数通常称为**速降函数 (rapidly decreasing functions)**。

### Examples

*   **高斯函数**: $f(x) = e^{-\pi x^2}$ 属于 $\mathcal{S}(\mathbb{R})$。参见 [[Wiki - 高斯函数]]。
*   **紧支集光滑函数**: $C_c^\infty(\mathbb{R}) \subset \mathcal{S}(\mathbb{R})$。
*   反例：$f(x) = \frac{1}{1+x^2}$ 属于适度下降函数，但不属于 Schwartz 空间（因为衰减不够快）。[[Wiki - 适度下降函数]]

## Properties

1.  **代数运算**: $\mathcal{S}(\mathbb{R})$ 是一个向量空间。
2.  **微分与乘法**: 若 $f \in \mathcal{S}(\mathbb{R})$，则 $f'(x)$ 和 $x f(x)$ 也属于 $\mathcal{S}(\mathbb{R})$。这意味着 Schwartz 空间在微分和多项式乘法下是封闭的。
3.  **Fourier 变换的不变性**: Fourier 变换 $\mathcal{F}$ 是 $\mathcal{S}(\mathbb{R})$ 到自身的线性同构（双射）。这是 Schwartz 空间在 Fourier 分析中最重要的性质。
    $$ f \in \mathcal{S}(\mathbb{R}) \implies \hat{f} \in \mathcal{S}(\mathbb{R}) $$

[[Wiki - fourier变换]]

[[Wiki - 线性空间同构]]


## Def 2 $\mathbb{R}^d$ 上的 Schwartz 空间

```ad-definition
title: Definition 1 (Schwartz Space on $\mathbb{R}^d$)

Schwartz 空间 $\mathcal{S}(\mathbb{R}^d)$ 由所有无限次可微的复值函数 $f$ 组成，满足对于任意多重指标 (multi-index) $\alpha$ 和 $\beta$，都有：
$$ \sup_{x \in \mathbb{R}^d} |x^\alpha \partial^\beta f(x)| < \infty $$
```

其中：
*   $x^\alpha = x_1^{\alpha_1} \cdots x_d^{\alpha_d}$
*   $\partial^\beta = \frac{\partial^{|\beta|}}{\partial x_1^{\beta_1} \cdots \partial x_d^{\beta_d}}$

这意味着 $f$ 及其所有偏导数在无穷远处衰减得比 $|x|$ 的任意幂次倒数都要快。