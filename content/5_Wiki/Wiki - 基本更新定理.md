---
aliases: 
info: 
date: 2024-04-16-星期二 16:22
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/更新过程
id: wiki20240416162251
banner: "![[astrowalk.gif]]"
---
---

## The 1 N (t) 极限分布

[[Wiki - 更新过程]]

```ad-theorem
title: Theorem 1

```
由 [[Wiki - 强大数律]]可知 $\frac{S_{n}}{n}\xrightarrow{a.s}\mu$

所以有 $\frac{{N (t)}}{t}\xrightarrow{a.s} \frac{1}{\mu}$



## The 2 更新定理

```ad-theorem
title: Theorem 2

当 $\mu=EX_{1}<\infty$ 时，有 $m(+\infty)=+\infty$


```

当 t 有限时的估计为 ![[Wiki - 更新函数大小的估计#Pro 1]]
### Proof

$N(t)+1$ 为更新过程序列 $\{X_{n}\}$ 的一个停时：$\{N(t)+1=n\}\leftrightarrow S_{N(t)}<t,S_{N(t)+1}>t$

由 Wald 等式 [[Wiki - Wald等式]]，

$$
t\leq E[S_{N(t)+1}]=\mu[m(t)+1]
$$

**一定要有加 1**

## The 3 基本更新定理

```ad-theorem
title: Theorem 1


$$
\lim_{ t \to \infty } \frac{m(t)}{t}= \frac{1}{\mu} 
$$
与 N (t) 极限一样但一个是强大数律，一个是函数极限

```

### Proof

需要截断加夹逼，过程见 ROSS《Stochestic Process》3.3 证明 [[Book - 随机过程-Ross]]

