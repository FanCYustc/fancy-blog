---
aliases:
info: 任意有限区间的fourier级数
date: 2023-07-01-星期六 19:29
update:
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230701192901
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Pro1

有限区间上的 Fourier 级数

对任意长有限区间 $[- l, l ]$ 上的分段可微函数 f[[Wiki - Fourier级数的Dirichlet定理]]

$$
\dfrac{a_{0}}{2}+\sum ^{\infty }_{n=1}\left ( a_{n}\cos \dfrac{n\pi }{l}x+b_{n}\sin \dfrac{n\pi }{l}x\right) =\begin{cases}\dfrac{f\left ( x+0\right) +f\left ( x-0\right) }{2}; x\in \left ( -l, l\right) \\

\dfrac{f\left ( -l+0\right) +f\left ( l-0\right) }{2}; x=\pm l\end{cases}
$$

化归为长度为 2π的情形 [[Wiki - Fourier级数]]

其中系数为

$$
\begin{aligned}f\left ( x\right) =g\left ( \dfrac{\pi }{l}x\right) \sim \dfrac{a_{0}}{2}+\sum ^{\infty }_{n=1}a_{n}\cos \dfrac{n\pi }{l}x+b_{n}\sin \dfrac{n\pi }{l}x\\

a_{n}=\dfrac{1}{\pi }\int _{-\pi }^{\pi }g\left ( t\right)  \sin ntdt=\dfrac{1}{\pi }\int _{-l}^{l}f\left ( x\right)  \cos \dfrac{n\pi }{l}xd\dfrac{\pi x}{l}\\

=\dfrac{1}{l}\int ^{l}_{-l}f\left ( x\right)  \cos \dfrac{n\pi }{l}xdx\end{aligned}
$$
## Pro2

对于**更一般区间 ［a, b］** 上的函数 f，令

$$
\begin{aligned}g\left ( x\right) =f\left ( x+\dfrac{a+b}{2}\right) \\

x\in \left[ \dfrac{a-b}{2},\dfrac{b-a}{2}\right] =\left[ -l, l\right] \end{aligned}
$$

化归为上一种情况


$$
\begin{aligned}g\left ( x\right) \sim \dfrac{a_{0}}{2}+\sum ^{\infty }\overline{a}_{n}\cos \dfrac{2n\pi }{b-a}x+\overline{b}_{n}\sin \dfrac{2n\pi }{b-a}x\\

\overline{a}_{n}=\dfrac{1}{l}\int ^{l}_{-l}g\left ( x\right)  \cos \dfrac{n\pi x}{l}dx=\dfrac{1}{l}\int ^{b}_{a}f\left ( u\right)  \cos \dfrac{n\pi }{l} \left ( u-\dfrac{a+b}{2}\right) du\\

=a_{n}\cos \dfrac{n\pi  \left ( b+a\right) }{b-a}+b_{n}\sin \dfrac{n\pi  \left ( b+a\right) }{b-a}\end{aligned}
$$

同理计算，最后发现

$$
\begin{aligned}f\left ( x\right) =g\left ( x-x_{0}\right) \sim \dfrac{a_{0}}{2}+\sum ^{\infty }_{n=1}\left ( a_{n}\cos \dfrac{2 \pi x}{b-a}+b_{n}\sin \dfrac{2 \pi x}{b-a}\right) \\

x\in \left[ a, b\right] \end{aligned}
$$

[[Wiki - 函数项级数]]

形式还是一样

## Complex Form (General Interval)

For a general interval $[a, b]$ of length $L = b - a$, the complex form provides a more compact representation (see [[Wiki - Fourier级数的复数形式]]).

$$
f(x) \sim \sum_{n=-\infty}^{\infty} \hat{f}(n) e^{2\pi i n x / L}
$$

where the coefficients are:

$$
\hat{f}(n) = \frac{1}{L} \int_a^b f(x) e^{-2\pi i n x / L} dx
$$