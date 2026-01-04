---
aliases: 
info: gamma函数的定义过程和性质
date: 2024-05-23-星期四 10:11
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析
id: wiki20240523101120
banner: "![[astrowalk.gif]]"
---
---

## Def 1 gamma 函数

```ad-definition
title: Definition 1


$$
\Gamma(z)=\int_0^\infty e^{-t}t^{z-1}dt
$$


```

## Pro 1 

将数学分析中的 gamma 函数拓展到复平面：

```ad-proposition
title: Propositon 1

The gamma function extends to an analytic function  in the half- plane $\{Re( s) > 0\}$,  and is still given there by the integral formula.

```

[[Wiki - 全纯开拓]]

即 gamma 函数在右半平面全纯[[Wiki - 全纯函数]]

### Proof

用到引理：

```ad-lemma

$\Omega \subset \mathbb{C}$ 为区域，$I=[a,b]$，If g (z, t) is continious in $\Omega \times I$, and for all $t\in I$, g (z, t) is analytic as function of z in $\Omega$, then $f (z)= \int _{a}^{b}g(t,z) \, dt$ is analytic in $\Omega$.

```

[[Wiki - 连通区域]]

取 0<r<s, def $F_{r, s}(z) = \int _{r}^{s}e^{-t}t^{z-1} \, dt, Re z>0$，由引理全纯，证它们内闭一致收敛[[Wiki - 复变函数内闭一致收敛]]到 $\Gamma (z)$

## Pro 2 

```ad-proposition
title: Propositon 2

$$
\Gamma(s+1) = s\Gamma(s) ,Res>0
$$

```


## The 1

```ad-theorem
title: Theorem 1

$\Gamma(z)$ 为 $\mathbb{C}$ 上除去负整数的亚纯函数 ，且在极点 $s=-n$ 处的留数为 $Res (\Gamma,-n)= \frac{(-1)^{n}}{n!},n=0,1,\dots$

```

[[Wiki - 亚纯函数]]
### Proof

见 [[Book - Complex Analysis]] 第 6 章 6.1 中的证明

## The 2 无穷级数形式

```ad-theorem
title: Theorem 2


$$
\frac{1}{\Gamma(z)} = e^{\gamma z}z \prod_{k=1}^{\infty}\left[ \left( 1+ \frac{z}{k} \right)e^{ -\frac{z}{k}} \right]
$$

其中 $\gamma = \lim_{ N \to \infty } \sum_{n=1}^{N} \frac{1}{n} -\log N$ 为 **euler 常数**

```

### Proof

用到 [[Wiki - 复无穷乘积收敛判别]]，[[Wiki - weierstrass乘积定理]]说明无穷乘积的合理性

