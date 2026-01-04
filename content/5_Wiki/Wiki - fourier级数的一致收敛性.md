---
aliases: 
info: 
date: 2023-10-31-星期二 09:57
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 数学分析/级数
  - fourier分析
id: wiki20231031095752
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 C2的一致收敛性

```ad-proposition
title: Propositon 1


设 $f$ 是周期 2 $\pi$ 的 $C^{2}$ 函数. 那么 $f$ 的 Fourier 级数一致收敛于 $f$, 并且
当 $n\to\infty$ 时

$$
S_n(x)-f(x)=O\left(\frac{1}{n}\right).
$$
一致成立

等价表述：存在常数 C 有 $\mid S_{n}(x)-f (x)\mid\leq \frac{C}{n}$

```

[[Wiki - 一致收敛]]

[[Wiki - dirichlet积分]]
### Proof

$$\begin{gathered}
S_{n}(x)-f(x)={\frac{1}{\pi}}\int_{-\pi}^{\pi}\left(f(x-t)-f(x)\right)D_{n}(t)\mathrm{d}t. \\
={\frac{1}{2\pi}}\int_{-\pi}^{\pi}{\frac{f(x-t)-f(x)}{\sin{\frac{t}{2}}}}\sin\left(n+{\frac{1}{2}}\right)t\mathrm{d}t. 
\end{gathered}$$
[[Wiki - Fourier级数]]

记
$$g=g(x,t)=\begin{cases}\frac{f(x-t)-f(x)}{\sin\frac{t}{2}}&t\ne0,\\-2f'(x)&t=0.\end{cases}$$
其中 $x, t\in [-\pi,\pi]$

**Claim:** $f\in C^{2}\to g\in C^{1}$**并不 trivial**
证明时要用到 f‘‘（x）在闭区间上有一致连续性


So 
$$
\frac{{\partial g}}{\partial t}(x,0)=f''(x)=\lim_{ t \to 0 } \frac{{\partial g}}{\partial t}(x,t)
$$
所以 $g_{x}'(t)$ 在 $[-\pi,\pi]\times[-\pi,\pi]$ 上连续

利用分部积分

$$
\begin{align}
S_{n}(x)-f(x)=-g(t)\frac{\cos\left(n+\frac{1}{2}\right)t}{n+\frac{1}{2}} \mid_{-\pi}^{\pi} +\frac{1}{2\pi} \int_{-\pi}^{\pi}g^{\prime}(t)\frac{\cos\left(n+\frac{1}{2}\right)t}{n+\frac{1}{2}}\mathrm{d}t \\
\leq \frac{1}{2\pi}\cdot \frac{{2\pi M}}{n}= \frac{M}{n}
\end{align}
$$


## Pro 2 C1 的一致收敛

```ad-proposition
title: Propositon 2

设 $f$ 是周期 2 $\pi$ 的 $C^1$ 函数. 那么 $f$ 的 Fourier 级数一致收敛于 f，并且当 $n\to\infty$ 时

$$
S_n(x)-f(x)=O\left(\frac{1}{\sqrt{n}}\right).
$$
一致成立

```


