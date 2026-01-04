---
aliases: 
info: Parseval等式
date: 2025-12-17-星期三 10:00
update: 
tags: [wiki/year2025,wiki/month12,概率论/特征,fourier分析,几何学/内积空间]
id: wiki20251217100005
banner: "![[astrowalk.gif]]"
---
---

# Parseval 等式

Parseval 等式建立了函数空间（或信号）与变换域（或频谱）之间能量守恒的联系。在数学分析和概率论中略有不同侧重。

## Lem 1 概率论中的 Parseval 等式

```ad-note
title: Lemma 6.4

在特征函数理论中，Parseval 等式描述了两个概率测度及其特征函数之间的积分关系。

设 $\mu, \nu \in \mathcal{P}(\mathbb{R})$ 为两个概率测度，$\Phi_\mu, \Phi_\nu$ 为对应的特征函数。则对任意 $y \in \mathbb{R}$：

$$
\int_{\mathbb{R}} e^{-\mathrm{i} \theta y} \Phi_\mu (\theta) \nu (\mathrm{d} \theta) = \int_{\mathbb{R}} \Phi_\nu (x - y) \mu (\mathrm{d} x) 
$$

特别地，当 $y=0$ 时：
$$ \int_{\mathbb{R}} \Phi_\mu (\theta) \nu (\mathrm{d} \theta) = \int_{\mathbb{R}} \Phi_\nu (x) \mu (\mathrm{d} x) $$
```

[[Wiki - 随机变量的特征函数]]、[[Wiki - 概率测度]]

---

## Pro 1 数学分析/Fourier级数中的 Parseval 等式


问题是 Bessel 不等式[[Wiki - Bessel不等式]]中的取等是否是本质性的（即为数列极限）

```ad-theorem
title: Theorem 1

设函数 $f(x)\in\boldsymbol{L}^2[-\boldsymbol{\pi},\boldsymbol{\pi}],$ 则 $f(x)$ 的 Fourier 级数部分和 $S_n(x)$ 构成的三角多项式列平方平均收敛于 $f (x)$

$$

\lim\limits_{n\to\infty}\|f-S_n\|^2=\int_{-\pi}^{\pi}\left(f(x)-S_n(x)\right)^2\mathrm dx=0

$$
```

[[Wiki - 平方可积|平方平均收敛]]

等价于

```ad-theorem
title: Theorem 2

Parseval 等式

$$ 
\frac{a_0^{2}}{2}+\mathop \sum \limits_{k=1}^{\infty} ({a_k^2+b_k^{2}) = \frac{1}{\pi}}\int_{-\pi}^{\pi} {f^2}(x)dx
$$ 
```

[[Wiki - Fourier级数]]
### Proof

由于 f 可积，不妨令 $f (π) =f(-π)$（改变有限点的值不改变可积性）。因为 Riemann 可积，所以对任意的 $\varepsilon > 0$，存在 $[-\pi, \pi]$ 一个分割，

$$
T: -\pi = x_0 < \cdots < x_m = \pi
$$

使得

$$
\sum_{i=1}^{m} \omega_i \Delta x_i < \frac{\varepsilon}{4\Omega}
$$

其中 $\omega_i = M_i - m_i$ 是 $f$ 在小区间 $[x_{i-1}, x_i]$ 上的振幅， $\Omega = M - m$ 是 $f$ 在整个区间 $[-\pi, \pi]$ 上的振幅. 用折线连接 $(x_{i-1}, f(x_{i-1}))$ 和 $(x_i, f(x_i))$ 并记折线所构成的函数为 $g(x)$，该函数是连续的，满足 $g(-\pi) = g(\pi)$，而且在 $x \in [x_{i-1}, x_i]$ 上，$f$ 与 $g$ 满足

$$
m_i \leqslant f(x) \leqslant M_i, \quad m_i \leqslant g(x) \leqslant M_i.
$$

所以

$$
|f(x) - g(x)| \leqslant \omega_i, \quad x \in [x_{i-1}, x_i]
$$

于是 $f$ 与 $g$ 的平方平均误差满足

$$
\begin{aligned}
\|f - g\|^2 &= \sum_{i=1}^{m} \int_{x_{i-1}}^{x_i} (f(x) - g(x))^2 \,\mathrm{d}x \\
&\leqslant \sum_{i=1}^{m} \omega_i^2 \Delta x_i \leqslant \Omega \sum_{i=1}^{m} \omega_i \Delta x_i < \frac{\varepsilon}{4}
\end{aligned}
$$

注意到函数 $g(x)$ 是 $[-\pi, \pi]$ 上分段可微的连续函数，并满足 $g(-\pi) = g(\pi)$，因此周期延拓后仍然是分段可微的连续函数。根据有限区间上 Dirichlet 定理 12.2， $g(x)$ 的 Fourier 级数在 $[-\pi, \pi]$ 上一致收敛于 $g(x)$，也就是存在一个正整数 $N$，当 $n > N$ 时， $g(x)$ 的 Fourier 级数的前 $n$ 项部分和 $T_n(x)$ 满足

$$
|g(x) - T_n(x)| < \frac{1}{2}\sqrt{\frac{\varepsilon}{2\pi}},
$$

对任意的 $x \in [-\pi, \pi]$ 成立，所以

$$
\|g - T_n\|^2 < \frac{\varepsilon}{4}
$$

对

$$
f(x) - T_n(x) = (f(x) - g(x)) + (g(x) - T_n(x))
$$

利用不等式 $(a + b)^2 \leqslant 2(a^2 + b^2)$，得

$$
\|f - T_n\|^2 \leqslant 2\|f - g\|^2 + 2\|g - T_n\|^2 < \varepsilon
$$

根据 Bessel 不等式，对所有的 $n$ 次三角多项式，唯有 $f$ 的 Fourier 级数的部分和 $S_n(x)$ 与 $f(x)$ 距离最小，所以当 $n > N$ 时有

$$
\|f - S_n\|^2 \leqslant \|f - T_n\|^2 < \varepsilon
$$

更弱的情况：事实上，有

```ad-theorem
title: Theorem 3

设 $f$ 是区间 $[-\pi,\:\pi]$ 上的 $Riemann$ 可积函数，则 $f$ 的 Fourier 级数部分和 $S_n$ 平方平均收敛于 $f$, 或者说 $Parseval$ 等式成立，即

$$ 
\frac{a_{0}^{2}}{2}+\sum^{\infty}\left(a_{k}^{2}+b_{k}^{2}\right)=\frac{1}{\pi}\int^{\pi}f^{2}(x)\,\mathrm{d}x. 
$$ 
```

[[Wiki - Riemann积分的可积性判断]]

## The 2 更一般的 parseval 等式

```ad-theorem
title: Theorem 4 (General Parseval Identity)
```
$H$ 是 Hilbert 空间 [[Wiki - Hilbert空间]]，$S=\{e_\alpha\}_{\alpha\in\Lambda}$ 是 O.N.S. [[Wiki - 内积空间的正交基#Def 1 正交集]] 则下列命题等价：

1. $S^\perp = \{ 0\} .$

2. $S$ 是 O.N.B. [[Wiki - 内积空间的正交基#Def 2 正交基]]

3. $S$ 满足：

$$ \forall x\in H,||x||^2=\sum_{\alpha\in\Lambda}|\:\langle x,e_\alpha\rangle\:|^2$$

这被称为 **Parseval 恒等式**，简称 P.I.


### Proof

见[[泛函分析2023秋笔记.pdf]] 定理 1.5.6

用到推论 


$H$ 是 Hilbert 空间，$\{ e_\alpha \}_{\alpha\in\Lambda}$ 是 O.N.S.则 $\forall x\in H$,

$$ \sum_{\alpha\in\Lambda}\left\langle x,e_\alpha\right\rangle e_\alpha\in H$$
且

$$||x-\sum\limits_{\alpha\in\Lambda}\langle x,e_{\alpha}\rangle\:e_{\alpha}||^{2}=||x||^{2}-\sum\limits_{\alpha\in\Lambda}|\:\langle x,e_{\alpha}\rangle\:|^{2}
$$
