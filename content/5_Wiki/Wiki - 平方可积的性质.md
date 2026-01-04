---
aliases: 
info: 平方可积与fourier级数
date: 2023-07-03-星期一 11:01
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230703110150
banner: "![[astrowalk.gif]]"
---
---
#数学分析/积分 

[[Wiki - 平方可积]]
## Pro1 

设 $f(x)=\frac{a_{0}}{2}+\sum_{k=1}^\infty(a_{k}\cos kx + b_{k} \sin kx)$

且 $f \in L^2[-\pi,\pi]$

[[Wiki - Fourier级数的Dirichlet定理]]
    
考虑三角多项式列

$${g_n}\left( x \right) = \frac{{{\alpha_0}}}{2} + \mathop \sum \limits_{k = 1}^n \left( {{\alpha_k}{\rm{cos}}kx + {\beta _k}{\rm{sin}}kx} \right)$$

称为 n 次三角多项式[[Wiki - 三角函数系]]

对于一个 $L^2 [-π， π]$ 上的 f

  $$\begin{array}{*{20}{c}}{{\Delta _n} = \mid\mid f - {g_n} \mid\mid^{2} = \int _{ - \pi }^\pi {{\left( {f\left( x \right) - {g_n}\left( x \right)} \right)}^2}dx}\\{ = \int _{ - \pi }^\pi {f^2}\left( x \right)dx - 2\int _{ - \pi }^\pi f\left( x \right){g_n}\left( x \right)dx + \int _{ - \pi }^\pi g_n^2\left( x \right)dx}\end{array}$$
  

$$
\begin{aligned}

&\int_{-\pi}^\pi f (x) g_n (x)\mathrm{d}x \\

&=\frac{\alpha_0}{2}\int_{-\pi}^\pi f (x)\mathrm{d}x+\sum\limits_{k=1}^n\left (\alpha_k\int_{-\pi}^\pi f (x)\cos kx\mathrm {d}x+\beta_k\int_{-\pi}^\pi f (x)\sin kx\mathrm{d}x\right) \\

&=\pi\left[\frac{\alpha_0a_0}{2}+\sum\limits_{k=1}^n (\alpha_ka_k+\beta_kb_k)\right],

\end{aligned}
$$

$$
\begin{aligned}

\int_{-\pi}^{\pi}g_{n}^{2}(x)\mathrm{d}x& =\int_{-\pi}^{\pi}\left[\frac{\alpha_{0}}{2}+\sum_{k=1}^{n}(\alpha_{k}\cos k x +\ beta_{k}\sin k x)\right]^{2}\mathrm{d}x \\

&=\int_{-\pi}^\pi\left[\frac{\alpha_0^2}{4}+\sum_{k=1}^n (\alpha_k^2\cos^2kx+\beta_k^2\sin^2kx)\right]\mathrm{d}x \\

&=\pi\left[\frac{\alpha_0^2}{2}+\sum\limits_{k=1}^n (\alpha_k^2+\beta_k^2)\right]

\end{aligned}
$$


于是就有

  
$$
\begin{aligned}

\Delta_n& =\int_{-\pi}^{\pi}f^{2}(x)\mathrm{d}x+\pi\left[-\alpha_{0}a_{0}-2\sum_{k=1}^{n}(\alpha_{k}a_{k}+\beta_{k}b_{k})+{\frac{\alpha_{0}^{2}}{2}}+\sum_{k=1}^{n}(\alpha_{k}^{2}+\beta_{k}^{2})\right] \\

&=\int_{-\pi}^\pi f^2 (x)\mathrm{d}x-\pi\left[\frac{a_0^2}{2}+\sum_{k=1}^n (a_k^2+b_k^2)\right] \\

&+\pi\left\{\frac12 (\alpha_0-a_0)^2+\sum\limits_{k=1}^n[(\alpha_k-a_k)^2+(\beta_k-b_k)^2]\right\}.

\end{aligned}
$$

所以当 **g 为 f 的部分和三角多项式**时，距离最小 [[Wiki - 平方可积#Def2 平方平均空间]]

[[Wiki - Fourier级数]]

且最小值为


$$\begin{array}{*{20}{c}}{{S_n}\left( x \right) = \frac{{{a_0}}}{2} + \mathop \sum \limits_{k = 1}^n \left( {{a_k}{\rm{cos}}kx + {b_k}{\rm{sin}}kx} \right)}\\{{\Delta _n} = \mid\mid f - {S_n}{{\left( x \right)}\mid\mid^2} = \int _{ - \pi }^\pi {f^2}\left( x \right)dx - \pi   \left[ {\frac{{a_0^2}}{2} + \mathop \sum \limits_{k = 1}^n \left( {a_k^2 + b_k^2} \right)} \right]}\end{array}$$



由于其**单增有上界**，所以平方平均收敛 

由正项级数 [[Wiki - 收敛正项级数的性质]]


## Cal1

[[Wiki - 无穷级数的收敛性#Collary 1]]


               $$f\left( x \right) \in {L^2}\left[ { - \pi ,\pi } \right] \to \mathop {\lim }\limits_{n \to \infty } {a_n} = 0,\mathop {\lim }\limits_{n \to \infty } {b_n} = 0$$

## Pro 2 与 cesaro 核的关系

```ad-proposition
title: Propositon 2

由于 $\sigma_{n}(x)$ 也是三角多项式，则由 fourier 部分和的距离最小性

$$
\dfrac{1}{\pi}\int_{-\pi}^{\pi}|f(x)-S_{n}(x)|^{2}\mathrm{d}x\leqslant\dfrac{1}{\pi}\int_{-\pi}^{\pi}|f(x)-\sigma_{n}(x)|^{2}\mathrm{d}x.
$$



```

[[Wiki - cesaro和#Def 1 cesaro 和]]


```ad-theorem
title: Theorem 1

```

进一步，由 [[Wiki - cesaro和的Fejer一致收敛定理]]，如果 f 是周期为 $2\pi$ 的连续函数 [[Wiki - 函数的连续性]]，则 $S_{n}(x)$ 平方平均收敛于 f

