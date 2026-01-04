---
aliases:
info: fourier级数辅助计算等式
date: 2023-07-01-星期六 17:33
update:
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230701173325
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

[[Wiki - Fourier级数]]

## 用 Fourier 级数辅助算等式：

### Example 1
$$
f\left ( x\right) =\begin{cases}x; 0\leq x\leq \pi \\

0;-\pi \leq x\leq 0\end{cases}
$$
计算得展开系数

$$
\begin{aligned}

&a_{0} ={\frac{1}{\pi}}\int_{-\pi}^{\pi}f (x)\mathrm{d}x={\frac{1}{\pi}}\int_{0}^{\pi}x\mathrm{d}x={\frac{\pi}{2}}.  \\

&a_n ={\frac{1}{\pi}}\int_{-\pi}^{\pi}f (x)\cos n x\mathrm{d}x={\frac{1}{\pi}}\int_{0}^{\pi}x\cos n x\mathrm{d}x={\frac {(-1)^ {n}-1}{n^{2}\pi}},  \\

&b_n =\frac{1}{\pi}\int_{-\pi}^\pi f (x)\sin nx\mathrm dx=\frac{1}{\pi}\int_0^\pi x\sin nx\mathrm dx=\frac{(-1)^{n+ 1}}{n}.

\end{aligned}
$$

$$
f\left ( x\right) =\dfrac{\pi }{4}+\sum ^{\infty }_{n=1}\left ( \dfrac{\left ( -1\right) ^{n}-1}{n^{2}\pi } \cos nx+\dfrac{\left ( -1\right) ^{n+1}}{n}\sin nx\right)
$$


特别地，取 X = 0

$$
\begin{aligned}

0=f (0) )={\frac{\pi}{4}}-{\frac{2}{\pi}}\sum_{k=1}^{\infty}{\frac{1}{(2k-1)^{2}}},  \\

1+{\frac{1}{3^{2}}}+{\frac{1}{5^{2}}}+\cdots+{\frac{1}{(2k-1)^{2}}}+\cdots={\frac{\pi^{2}}{8}}.

\end{aligned}
$$


```ad-example
title: Example 1

即可证明等式

$$
\sum ^{\infty }_{n=1}\dfrac{1}{n^{2}}=\dfrac{\pi ^{2}}{8}+\dfrac{1}{4}\sum ^{\infty }_{k=1}\dfrac{1}{k^{2}}=\dfrac{\pi ^{2}}{6}
$$


还可以得到

$$
\sum ^{\infty }_{n=1}\dfrac{\left ( -1\right) ^{n-1}}{n^{2}}=\dfrac{\pi ^{2}}{12}
$$


```

