---
aliases: 
info: 复变函数的幂级数
date: 2024-04-16-星期二 08:10
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/级数
  - 复分析/全纯函数
  - 收敛
id: wiki20240416081012
banner: "![[astrowalk.gif]]"
---
---

## Def 1 幂级数

```ad-definition
title: Definition 1

幂级数是指形如
$$
\sum_{n=1}^{+\infty}a_{n}(z-z_{0})^{n}
$$
的复变函数

```

对比 [[Wiki - 幂级数]]的定义


## Def 2 收敛圆

```ad-definition
title: Definition 2

如果存在 R 使得 $\sum_{n=1}^{+\infty}a_{n}(z-z_{0})^{n}$ 在 $B(z_{0},R)$ 内收敛，在 $\overline{B(z_{0},R)}$ 中发散，则称 R 是幂级数的收敛半径，$B(z_{0},R)$ 为幂级数的**收敛圆**。

```

将实数域的收敛半径拓展出收敛圆 ![[Wiki - 幂级数的收敛半径#Def1 收敛半径]]

## The 1 收敛半径计算

```ad-theorem
title: Theorem 1

级数 $\sum_{n=1}^{+\infty}a_{n}(z-z_{0})^{n}$ 的收敛半径存在，
$$
R= \frac{1}{\overline{\lim_{ n \to \infty } }|a_{n}|^{\frac{1}{n}}}
$$



```

[[Wiki - 上下极限]]

同 ![[Wiki - 幂级数的收敛半径#Pro1 收敛半径计算]]
另一种判别法在复变函数也适用

### Proof

分为 R=0, $R=+\infty$, $0<R<+\infty$ 三种证明，具体类似实变幂级数的证明，可见史济怀《复变函数》 [[Book - 复变函数]] 4.1 证明

## The 2 Abel 定理

```ad-theorem
title: Theorem 2

如果 $\sum a_nz^n$ 在 $z=z_0\neq0$ 处收敛，则必在 $\{z:|z|<|z_0|\}$ 中内闭绝对一致收敛. 
```

[[Wiki - 复变函数内闭一致收敛]] 

[[Wiki - 绝对收敛与条件收敛]]


见 ![[Wiki - 幂级数#Pro1]]
### Proof

取紧集 K, 则存在 $r<|z_{0}|$ 使得 $K\subset B(0,r)$，由 [[Wiki - Weierstrass一致逼近定理]]可证

## The 3 全纯函数

```ad-theorem
title: Theorem 3

幂级数在其收敛圆内确定了一个全纯函数

另一方面，$f\in H (\Omega), z_{0}\in \Omega,R=d(z_{0},\partial \Omega)$，则 f 在 $B(z_{0},R)$ 中可展开为幂级数

这说明了**全纯性与解析性的等价性**

```

[[Wiki - 全纯函数]]


### Proof

正着推由 weierstrass 定理可知 [[Wiki - weierstrass定理]]

