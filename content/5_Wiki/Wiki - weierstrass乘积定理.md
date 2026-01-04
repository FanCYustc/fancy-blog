---
aliases: 
info: 存在根给定的全纯函数
date: 2024-05-28-星期二 08:58
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析/全纯函数
id: wiki20240528085840
banner: "![[astrowalk.gif]]"
---
---

## The 1 weierstrass product 定理

```ad-theorem
title: Theorem 1

$\{\lambda_{n}\}\subset \mathbb{C}$ 且有 $\lambda_{n}\to\infty(n\to \infty)$，则存在整函数  f 使得 $\lambda_{k}$ 为 f 的所有零点（可以重复）

```

[[Wiki - 整函数]]
### Proof

1、构造 $f (z)= \prod_{k=1}^{\infty}\left( 1- \frac{z}{\lambda_{k}} \right)$

如果 $\sum_{k=1}^{\infty} \frac{1}{|\lambda_{k}|}$ 收敛，则由 ![[Wiki - 复无穷乘积收敛判别#Pro 3]]

$\prod_{k=1}^{\infty}\left( 1- \frac{z}{\lambda_{k}} \right)$ 在 $\mathbb{C}$ 上内闭一致收敛，满足条件

2、$\sum_{k=1}^{\infty} \frac{1}{|\lambda_{k}|}=\infty$, $\sum_{k=1}^{\infty} \frac{1}{|\lambda_{n}|^{2}}<\infty$

构造 $f (z) = \prod_{k=1}^{\infty}\left( 1- \frac{z}{\lambda_{k}} \right)e^{z/\lambda_{k}}$

取 k 充分大，有

$$
\begin{align}
|\log\left( \left( 1- \frac{z}{\lambda_{k}} \right)e^{\frac{z}{\lambda_{k}}} \right)|&= |\frac{z}{\lambda_{k}} - \frac{z}{\lambda_{k}} - \frac{z^{2}}{2\lambda_{k}^{2}}- \dots| \\
&\leq |\frac{z}{\lambda_{k}}|^{2} \left( \frac{1}{2} +\frac{1}{4} +\dots \right)
\end{align}
$$

由 ![[Wiki - 复无穷乘积收敛判别#Pro 1 一类无穷乘积的判别]]

知 $\prod_{k=1}^{\infty}\left( \left( 1- \frac{z}{\lambda_{k}} \right) e^{\frac{z}{\lambda_{k}}} \right)$ 也内闭一致收敛

 3、推广如果 $\sum_{k=1}^{\infty} \frac{1}{|\lambda_{k}|^{n}}<\infty, n\in \mathbb{N}$，则引入收敛因子
$E_{k}(z) = \exp \left\{  \frac{z}{\lambda_{k}} + \frac{z^{2}}{2\lambda_{k}^{2}}+\dots + \frac{z^{n}}{n\lambda_{k}^{n}} \right\}$，可证明 $f (z) = \prod_{k=1}^{\infty} \left( 1- \frac{z}{\lambda_{k}} \right)E_{k}(z)$ 在 $\mathbb{C}$ 内闭一致收敛，满足条件

