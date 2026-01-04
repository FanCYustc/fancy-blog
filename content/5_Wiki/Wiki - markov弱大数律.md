---
aliases: 
info: markov弱大数律
date: 2023-11-30-星期四 14:27
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/极限理论
id: wiki20231130142745
banner: "![[astrowalk.gif]]"
---
---

## The 1 markov 弱大数律

```ad-theorem
title: Theorem 1

若对随机变量序列 $\{X_n,\:n\in\mathbb{N}\}$, 有

$$
\lim_{n\to\infty}\frac{\text{Var}S_n}{n^2}=0,
$$

则有如式

$$
\frac{{S_{n}-ES_{n}}}{n}\xrightarrow{p} 0
$$
的弱大数律成立.

```

[[Wiki - 弱大数律]]

[[Wiki - 方差]]

**没有对变量的相关性做假设，很好用**

### Proof

$$\begin{aligned}
\mathbf{P}\left(\left|\frac{S_{n}-\mathbf{E}S_{n}}{n}\right|\geqslant\varepsilon\right)& =\mathbf{P}\left(|S_{n}-\mathbf{E}S_{n}|\geqslant n\varepsilon\right)  \\
&\leqslant\frac{\mathbf{E}(S_n-\mathbf{E}S_n)^2}{n^2\varepsilon^2}=\frac1{\varepsilon^2}\frac{\mathbf{Var}S_n}{n^2}\to0,
\end{aligned}$$

在 [[Wiki - Chebyshev不等式]]中取 $g(a)=a^{2}$ 即证

