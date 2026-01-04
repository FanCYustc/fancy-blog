---
aliases: 
info: 留数的定义
date: 2024-05-07-星期二 08:47
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析/留数
id: wiki20240507084707
banner: "![[astrowalk.gif]]"
---
---

## Def 1 留数

```ad-definition
title: Definition 1


```
设 $a$ 是 $f$ 的一个孤立奇点 [[Wiki - 孤立奇点]]，$f$ 在 $a$ 点的邻域 $B(a,r)$ 中的 Laurent 展开 [[Wiki - 全纯函数的Laurent展开]] 为 $f(z)=\sum_{n=-\infty}^{\infty}c_{n}(z-a)^{n}$, 称 $c_{-1}$ 为 $f$ 在 a 点的残数，记为

$$\mathrm{Res}(f,a)=c_{-1}$$

我们有
$$
\mathrm{Res}(f,a)= \frac{1}{2\pi i}  \int\limits_{\gamma}f(z)\mathrm{d}z
$$

[[Wiki - cauchy积分定理]] 这里，$\gamma=\left\{\boldsymbol{z}:|z-a\mid=\rho\right\}, 0<\rho<r.$


在一些得不到 Laurent 展开的情况下，也可以根据性质求出留数

## Pro  1 极点情形

```ad-proposition
title: Propositon 1

若 $a$ 是 $f$ 的 $m$ 阶极点，则
$$\mathrm{Res}(f,a)=\frac1{(m-1)!}\lim_{z\to a}\frac{\mathrm{d}^{m-1}}{\mathrm{d}z^{m-1}}\{(z-a)^mf(z)\}.$$


```

特别的对一阶极点，$Res (f, a) = \lim_{ z \to a } f(z)$

## Def 2 无穷远留数

```ad-definition
title: Definition 2

如果 $\infty$ 是 f 的孤立奇点 ，定义

$Res (f,\infty)= -\frac{1}{2\pi i } \int _{|\rho|=r} f(z) \, dz,(r>R)$

```

[[Wiki - 孤立奇点]]

[[Wiki - 无穷远点处的Laurent展开]]

