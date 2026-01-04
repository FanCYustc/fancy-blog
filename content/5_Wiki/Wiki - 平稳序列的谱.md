---
aliases: 
info: 
date: 2024-12-27-星期五 23:37
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 随机过程/平稳过程
  - 泛函分析/谱理论
id: wiki20241227233721
banner: "![[astrowalk.gif]]"
---
---

## Def 1 平稳序列的谱

设平稳序列 [[Wiki - 平稳序列]] $\{X_t\}$ 有自协方差函数 $\{\gamma_k\}$. 如果有 $[-\pi,\pi]$ 上的单调不减右连续的函数 $F(\lambda)$ 使得

$$\gamma_k\:=\int_{-\pi}^\pi e^{ik\lambda}\:dF(\lambda),\:F(-\pi)=0,\:k\in\mathbb{Z},$$

则称 $F(\lambda)$ 是 $\{X_t\}$ 或 $\{\gamma_k\}$ 的谱分布函数，简称为谱函数；如果有 $[-\pi,\pi]$ 上的非负函数 $f(\lambda)$ 使得

$$\gamma_k\:=\int_{-\pi}^\pi f(\lambda)e^{ik\lambda}\:d\lambda,\quad k\in\mathbb{Z},$$

则称 $f(\lambda)$ 是 $\{X_t\}$ 或 $\{\gamma_k\}$ 的谱密度函数或功率**谱密度**，简称为谱密度或功率谱.



对于白噪声序列 [[Wiki - 白噪声]] $\{\epsilon_{t}\}$ 为 $WN(0,\sigma^{2})$，有 $\gamma_{k}= \int _{-\pi}^{\pi} \frac{\sigma^{2}}{2\pi} e^{ik\lambda}\, d\lambda, k\in \mathbb{Z}$，

```ad-example

所以白噪声列有常数谱密度。反之，有常数谱密度的平稳列一定是白噪声列。
```

## Pro 1 

对线性平稳过程 [[Wiki - 线性过程]]，$\{a_{t}\}\in l^{2}$，
$$
X_{t}= \sum_{-\infty }^{+\infty}a_{j}\epsilon_{t-j},t\in \mathbb{Z}
$$

$\{\epsilon_{t}\}$ 是 $WN (0,\sigma^{2})$，则谱密度为
$$
f(\lambda)= \frac{\sigma^{2}}{2\pi} |\sum_{j=-\infty }^{+\infty}a_{j}e^{ij\lambda}|^{2} 
$$

事实上，若对于平稳列 $\{X_{t}\}$，存在谱密度函数，则一定存在白噪声序列 $\{\epsilon_{t}\}$ 和 $\{a_{j}\}\in l^{2}$ 使得

$$
X_{t}=\sum_{j=-\infty}^{+\infty}a_{j}\epsilon_{t-j}, t\in \mathbb{Z}
$$

## Pro 2

设 $\{ X_t\}$ 是平稳序列 , $H= \{ h_j\}$ 是绝对可和的保时线性滤波器 [[Wiki - 时间序列的线性滤波]] , $\{ Y_t\}$为滤波输出 

$$Y_t=\sum_{j=-\infty}^\infty h_jX_{t-j},\:t\in\mathbb{Z}.\:a.\:s.$$

$H( z)$ 是滤波器 H的特征多项式 $


$$H(z)=\sum_{j=-\infty}^\infty h_jz^j,\:|z|\leq1.$$

1. 如果 $\{ X_t\} \textit{有 谱 函 数 }F_X( \lambda ) \textit{, 则 }\{ Y_t\} \textit{有 谱 函 数 }$

$$F_Y(\lambda)=\int_{-\pi}^\lambda\left|H(e^{-is})\right|^2dF_X(s).$$

2. 如果 $\{ X_t\} \textit{有 谱 密 度 }f_X( \lambda ) \textit{, 则 }\{ Y_t\} \textit{有 谱 密 度 }$

$$f_Y(\lambda)=|H(e^{-i\lambda})|^2f_X(\lambda)$$

## Pro 3 

对任一平稳序列, 它的自协方差函数平方可和的充分必要条件是它的谱密度平方可积。[[Wiki - 平方可积]]

### Proof

这个结论主要是利用实变函数论中 Fourier 级数的理论 [[Wiki - fourier变换]]

