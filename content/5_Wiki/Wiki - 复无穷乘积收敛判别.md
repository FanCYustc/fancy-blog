---
aliases: 
info: 复数上一些特殊的无穷乘积收敛
date: 2024-05-28-星期二 08:24
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析/级数
id: wiki20240528082442
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 无穷乘积]]

## Pro 1 一类无穷乘积的判别

```ad-proposition
title: Propositon 1

考虑形如 $1+z_{k}$ 的级数，$z_{k}\neq -1,k=1,\dots$，则 $\prod_{k=1}^{\infty}(1+z_{k})$ 收敛等价于 $\sum_{k=1}^{\infty}\log(1+z_{k})$ 收敛，其中 log 取对数函数的主值分支，$-\pi<argz\leq \pi$

```

### Proof



## Pro 2 

```ad-proposition
title: Propositon 2

$$
\sum_{k=1}^{\infty}|z_{k}|<\infty\rightarrow \prod_{k=1}^{\infty}(1+z_{k})收敛
$$

```

### Proof

K 充分大时有 $|z_{k}|< \frac{1}{2}$，则

$$
|\log(1+z_{k})|=|z_{k} -\frac{z_{k}^{2}}{2} + \frac{z_{k}^{3}}{3}-\dots|\leq |z_{k}|\left( 1+ \frac{1}{2} +\frac{1}{4}+\dots \right)
$$

所以 $\sum_{k=1}^{\infty}\log(1+z_{k})$ 收敛


## Def 1  绝对收敛

```ad-definition
title: Definition 1

若 $\prod_{k=1}^{\infty}(1+|z_{k}|)$ 收敛，则称 $\prod_{k=1}^{\infty}(1+z_{k})$ 绝对收敛 ，蕴含无穷乘积收敛

```

[[Wiki - 绝对收敛与条件收敛]]
## Pro 3 

```ad-proposition
title: Propositon 3
```
设 $u_{k}(z)\in H(\Omega)$，$\sum_{k=1}^{\infty}|u_{k}(z)|$ 在 $\Omega$ 中内闭一致收敛 [[Wiki - 复变函数内闭一致收敛]]，则 $\prod_{k=1}^{\infty}(1+u_{k}(z))$ 在 $\Omega$ 中内闭一致收敛，从而无穷乘积为 $\Omega$ 上一个全纯函数 [[Wiki - 全纯函数]]



[[Scientech - 复分析-Taylor级数]]

[[Wiki - 一致收敛]]



