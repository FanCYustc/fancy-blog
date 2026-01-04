---
aliases:
  - dirichlet核
info: fourier级数的dirichlet积分形式
date: 2023-10-31-星期二 10:47
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - fourier分析
  - 数学分析/级数
  - 数学分析/积分
id: wiki20231031104721
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 dirichlet 积分

```ad-definition
title: Definition 1

Fourier 级数的部分和可以化简为下列积分表示，称为 **Dirichlet 积分**

$$
S_{N}(x)=\frac1\pi\int_{-\pi}^{\pi}f(t)D_N(x-t)\:\mathrm{d}t,
$$

其中 

$$
D_n(t)=\frac{\sin\left(n+\frac12\right)t}{2\sin\frac t2}
$$

称为积分的 **Dirichlet核.**


```

 [[Wiki - Fourier级数]]

### Proof
$$
\begin{aligned}
S_{N}(x)& =\frac{a_0}{2}+\sum_{n=1}^N\left(a_n\cos nx+b_n\sin nx\right)\\
& ={\frac{1}{2\pi}}\int_{-\pi}^{\pi}f(t)\mathrm{d}t+{\frac{1}{\pi}}\sum_{k=1}^{N}\int_{-\pi}^{\pi}f(t)\Big(\cos kx\cos kt+\sin kx\sin kt\Big)\mathrm{d}t  \\
&=\frac{1}{\pi}\int_{-\pi}^{\pi}f(t)\Big(\frac{1}{2}+\sum_{k=1}^{N}\cos k(x-t)\Big)\mathrm{d}t\\
& = \frac{1}{\pi}\int_{-\pi}^{\pi}f(t)\frac{\sin\left(N+\frac{1}{2}\right)(x-t)}{2\sin\frac{(x-t)}{2}} dt
\end{aligned}
$$


In fact, $D_{N}(x)= \sum_{n=-N}^{N}e^{inx}$，写成复数形式就是

$$
S_{n}(x)= \sum_{n=-N}^{N}F_{n}e^{inx}
$$

[[Wiki - Fourier级数的复数形式]]



