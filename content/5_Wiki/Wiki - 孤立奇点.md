---
aliases:
  - 可去奇点、极点、本性奇点
info: 孤立奇点的定义和分类
date: 2024-04-28-星期日 10:17
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/留数
  - 复分析/全纯函数
id: wiki20240428101749
banner: "![[astrowalk.gif]]"
---
---

## Def 1 孤立奇点

```ad-definition
title: Definition 1

如果 f 在**无心圆盘** (即除去圆心后的圆盘) $\{ z: 0\boldsymbol{< }|\boldsymbol{z}- \boldsymbol{z}_0|\boldsymbol{< }R\}$ 中全纯，就称 $z_0$ 是 $f$ 的**孤立奇点**.

$f\textbf{ 在孤立奇点 }z_0\textbf{ 附近可能有三种情形：}$

(i) $\lim_{z\to z_{0}}f(z)=a,a$ 是一有限数，这时称 $z_0$ 是 $f$ 的**可去奇点**；


(ii) $\lim_{z\to z_{0}}f(z)=\infty$, 这时称 $z_0$ 是 $f$ 的**极点**；


(iii) $\lim_{z\to z_{0}}f(z)$ 不存在，这时称 $\boldsymbol z_0$ 是 $f$ 的**本性奇点**.

```


先研究最简单的可去奇点：

## The 1 Riemann 可去奇点定理

```ad-theorem
title: Theorem 1

$z_{0}$ 是 f 的可去奇点当且仅当 f 在 $z_{0}$ 附近有界

```

### Proof

必要性易证。

对充分性，用 [[Wiki - 全纯函数的Laurent展开]]证明：

$$
\begin{align}
f(z)=\sum_{n=-\infty}^{\infty}a_{n}(z-z_{0})^{n},z\in D,\\ 
a_n=\frac1{2\pi\mathrm{i}}\int\frac{f(\zeta)}{(\zeta-z_0)^{n+1}}\mathrm{d}\zeta\text{,}0<\rho<R
\end{align}
$$

取 $0<\rho<\epsilon$，则由有界加长大不等式 [[Wiki - 长大不等式]]，

$$
|a_{-n}|\leq \frac{M}{2\pi \rho^{-n+1}}2\pi\rho=M\rho^{n}
$$

令 $\rho\to 0^{+}$ 则有 $a_{-n}=0$，所以 $f(z)$ 可以展开成幂级数 [[Wiki - 全纯函数的幂级数表示]]，所以 $\lim_{ z \to z_{0} }f(z)=a_{0}=a$


## The 2 极点的判定
```ad-theorem
title: Theorem 2


$z_{0}$ 是 f 的奇点当且仅当 $z_{0}$ 是 $\frac{1}{f}$ 的零点

```

### Proof

若 $z_{0}$ 是极点，则存在无心圆盘使得 $f(z)\neq 0$，则 $\frac{1}{f(z)}$ 在去心圆盘上全纯，且 $\lim_{ z \to z_{0}} \frac{1}{f(z)}=0$，所以 $z_{0}$ 是 $\frac{1}{f}$ 的可去奇点，且 $\frac{1}{f(z_{0})}=0$

## Def 2 m 阶极点

```ad-definition
title: Definition 2

如果 $z_{0}$ 是 $\frac{1}{f}$ 的 m 阶零点，则称 $z_{0}$ 是 f 的 m 阶奇点

```

## Pro 1 m 阶极点的判定

```ad-proposition
title: Proposition 1

$z_{0}$ 是 $f$ 的 $m$ 阶极点的充分必要条件是 $f$ 在 $z_{0}$附近的 Laurent 展开式为
$$
\begin{aligned}
f(z)=&\frac{a_{- m}}{(z-z_{0})^{m}}+\cdots+\frac{a_{-1}}{z-z_{0}}\\&+\:a_{0}\:+\:a_{1}(z\:-\:z_{0})\:+\:\cdots
\end{aligned}
$$
其中 $a_{-m}\neq 0$

```

用 [[Wiki - 全纯函数的Laurent展开]]刻画极点

## The 3 本性奇点的判定

```ad-theorem
title: Theorem 3

$z_{0}$ 为 f 的本性奇点当且仅当 f 在 $z_{0}$ 的 Laurent 展开除全纯部分外，主要部分有无穷多项

```


## Pro 2 本性奇点的 weierstrass 定理

```ad-proposition
title: Propositon 2

设 $z_{0}$ 是 $f$ 的本性奇点，那么对任
意 $A{\in}\boldsymbol{C}_{\infty}$, 必存在趋于 $z_{0}$ 的点列 $\left\{z_n\right\}$, 使得 $\lim_{n\to +\infty} f(z_n)=A.$


```

