---
aliases: 
info: 
date: 2023-12-22-星期五 23:37
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 概率论/极限理论
id: wiki20231222233748
banner: "![[astrowalk.gif]]"
---
---

## The 1 kolmogorov 强大数律


```ad-theorem
title: Theorem 1

(Kolmogorov 强大数律) 设 $\{X_n,n\geq1\}$ 为 iid rv 序列，
$S_n=\sum_{k=1}^nX_k$, 则存在常数 $a\in\Re$ 使得

$$
\frac{S_n-na}n\xrightarrow{a.s.}0
$$


**充分必要**条件是 $E|X_1|<\infty\text{, a}=\mathbb{E}X_1$

```

[[Wiki - 强大数律]]

[[Wiki - 几乎处处收敛]]

### Proof

$$\begin{gathered}
证 用到如下不等式:对  \forall X\text{,有} \\
\sum_{n=1}^{\infty}\mathbb{P}\left(|X|\geq n\right)\leq\mathbb{E}\left|X\right|\leq1+\sum_{n=1}^{\infty}\mathbb{P}\left(|X|\geq n\right). \\
\begin{aligned}&(\Longrightarrow)\text{:若 }S_n/n\longrightarrow m\in\mathbb{R},\text{则 }X_n/n\longrightarrow0\text{,a.s.. 因此,由}\\&\text{Borel-Cantelli 引理及同分布性质得}\end{aligned} \\
\sum_{n=1}^\infty\mathbb{P}\left(|X_1|\geq n\right)=\sum_{n=1}^\infty\mathbb{P}\left(|X_n|\geq n\right)<+\infty. \\
\text{由不等式知 }\operatorname{E}\left[X_1\right]\in\mathbb{R}. 
\end{gathered}$$


$$\begin{aligned}
&\begin{array}{l}(\Longleftarrow){:\text{设 }} \operatorname { E }|X_1|<\infty\text{,令 }Y_n=X_nI_{\{|X_n|<n\}},\overline{S}_n=\sum_{k=1}^nY_k.\\\text{不等式知}\end{array}\\
&\begin{aligned}\sum_{n=1}^\infty\mathbb{P}\left(\left|X_n\right|\geq n\right)=\sum_{n=1}^\infty\mathbb{P}\left(\left|X_1\right|\geq n\right)\leq\mathbb{E}\left|X_1\right|<\infty,\end{aligned} \\
&\text{故由等价性引理知,}S_n/n\text{ 与 }\overline{S_n}/n\text{ 收敛等价.因此只要证明} \\
&\overline{S}_n/n\xrightarrow{\mathrm{a.s.}}\mathbb{E}X_1.\text{ 由控制收敛定理,有} \\
&\mathbb{E}\left[Y_n\right]=\mathbb{E}\left[X_nI_{\{|X_n|<n\}}\right]=\mathbb{E}\left[X_1I_{\{|X_1|<n\}}\right]\longrightarrow a,
\end{aligned}$$

由 Teoplitz 引理知 $\mathbb{E}\overline{S}_n/n\longrightarrow a$, 所以只要证明

$$
\frac{\overline{S}_n-\operatorname{E}\overline{S}_n}n\longrightarrow0,\quad\mathrm{a.s.}.
$$

再由引理 6.5.2, 仅要证明 $\sum_{n=1}^\infty\operatorname{Var}\left(Y_n\right)/n^2<\infty$ 即可.

$$\begin{gathered}
\begin{aligned}\sum_{n=1}^\infty\frac{\mathrm{Var}\left(Y_n\right)}{n^2}\end{aligned} \leq\sum_{n=1}^\infty\frac{\operatorname{E}\left[Y_n^2\right]}{n^2}=\sum_{n=1}^\infty\frac1{n^2}\sum_{k=1}^n\operatorname{E}\left[X_1^2I_{\{k-1\leq|X_1|<k\}}\right] \\
\leq\sum_{n=1}^\infty\frac1{n^2}\sum_{k=1}^nk^2\operatorname{P}(k-1\leq|X_1|<k) \\
=\sum_{k=1}^\infty k^2\operatorname{P}\left(k-1\leq|X_1|<k\right)\cdot\sum_{n=k}^\infty\frac1{n^2}, \\
\sum_{n=k}^\infty\frac1{n^2} \leq\frac1{k^2}+\int_k^\infty\frac{dx}{x^2}=\frac1{k^2}+\frac1k\leq\frac2k,\quad k\geq1. 
\end{gathered}$$

$$\begin{gathered}
\text{把最后一式代入到前面,得} \\
\begin{aligned}\sum_{n=1}^{\infty}\frac{\mathrm{Var}\left(Y_n\right)}{n^2}&\leq2\sum_{k=1}^{\infty}k\mathrm{P}\left(k-1\leq|X_1|<k\right)\end{aligned} \\
=2\left(1+\sum_{k=1}^{\infty}\mathbb{P}\left(|X_1|\geq k\right)\right)\leq2(1+\mathbb{E}\left|X_1\right|)<\infty. 
\end{gathered}$$

