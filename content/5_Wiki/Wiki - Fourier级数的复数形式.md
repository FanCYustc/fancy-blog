---
aliases:
info: 复数表示fourier级数
date: 2023-07-01-星期六 19:34
update:
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230701193418
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 


## Pro1 Fourier 级数的复数形式

[[Wiki - Fourier级数]]

```ad-theorem
title: Theorem 1


$$
\begin{aligned}
f\left ( x\right) &=\dfrac{a_{0}}{2}+\sum ^{\infty }_{n=1}a_{n}\cos nwx+b_{n}\sin n\omega x\\

\omega &=\dfrac{\pi }{l}= \frac{2\pi}{L}\\

f\left ( x\right) &=\dfrac{a}{2}+\sum ^{\infty }_{n=1}\left ( a_{n}\dfrac{e^{in\omega x}+e^{-in\omega x}}{2}+b_{n}\dfrac{e^{in\omega x}-e^{-in\omega x}}{2}\right) \\

&=\dfrac{a_{0}}{2}+\sum ^{\infty }_{n=1}\dfrac{a_{n}-ib_{n}}{2} e^{in\omega x}+\sum ^{\infty }_{n=1}\dfrac{a_{n}+ib_{n}}{2} e^{-in\omega x}\end{aligned}
$$
```

是常见的复数表示三角函数的方法

或者写成

$$
\begin{aligned}
f\left ( x\right) &=\sum ^{\infty }_{-\infty }F_{n}e^{in\omega x}\\

F_{0}=\dfrac{a_{0}}{2}&=\dfrac{1}{2l}\int ^{l}_{-l}f\left ( x\right) dx\\

F_{n}=\dfrac{a_{n}-ib_{n}}{2}&=\dfrac{1}{2l}\int _{-l}^{l}f\left ( x\right)  \left ( \cos nwx-i\sin nwx\right) dx \\
&=\dfrac{1}{2l}\int ^{l}_{-l}f\left ( x\right)  e^{-inwx}dx\left ( n >0\right) \\
F_{-n}&=\overline{F_{n}}
\end{aligned}
$$

## Definition

For an integrable function $f$ defined on an interval $[a, b]$ of length $L$ (that is, $b - a = L$), the **$n$-th Fourier coefficient** of $f$ is defined by:

$$
\hat{f}(n) = \frac{1}{L} \int_a^b f(x) e^{-2\pi i n x / L} dx, \quad n \in \mathbb{Z}.
$$

The **Fourier series** of $f$ is given formally by:

$$
f(x) \sim \sum_{n=-\infty}^{\infty} \hat{f}(n) e^{2\pi i n x / L}.
$$

For the specific case of the interval $[-\pi, \pi]$ (often referred to as functions on the circle), where $L = 2\pi$:

$$
\hat{f}(n) = a_n = \frac{1}{2\pi} \int_{-\pi}^{\pi} f(\theta) e^{-in\theta} d\theta, \quad n \in \mathbb{Z}.
$$

And the series becomes:

$$
f(\theta) \sim \sum_{n=-\infty}^{\infty} a_n e^{in\theta}.
$$




