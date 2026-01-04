---
aliases:
info:
date: 2024-03-31-星期日 10:56
update:
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
id: wiki20240331105658
banner: "![[astrowalk.gif]]"
---
---

## The 1 原则一

可测集几乎是区间（方体）的有限并

见 [[Wiki - lebesgue可测集的性质#Pro 3]] 的第 4 个


## The 2 原则二

```ad-theorem
title: Theorem 2

```
Suppose f is a function in measurable E[[Wiki - lebesgue可测]] 几乎处处有限, then exsists a closed set $F\subset E$, $m(E / F)<\epsilon$，and f is continous in F [[Wiki - 函数的连续性]]


连续的时候得要求闭集 [[Wiki - 度量空间的开集闭集#Definition 3 闭集]]

### Proof 

先对简单函数证明

再对一般可测函数 f，因为 f 几乎处处有限，不妨考虑 f 处处有限。

做变换 $g (x) = \frac{f(x)}{1+|f(x)|}$，则 g 是有界函数。则由 [[Wiki - 简单函数逼近定理]]知存在简单函数列一致收敛到 g (x)，再证明连续

具体见[[实分析讲义-于树澄.pdf]] 第 9 节 lusin 定理证明

## The 3 原则三

```ad-theorem
title: Theorem 1

```
Suppose f，$\{f_{k}\}$ 是可测集 E 上的可测函数 [[Wiki - 可测函数]]，且 $m(E)<\infty$, $f_{k}$ 几乎处处收敛 [[Wiki - 几乎处处收敛]]到 f。则 $\forall \epsilon>0$, 存在闭集 [[Wiki - 度量空间的开集闭集#Definition 3 闭集]] $F\subset E$，$m(E / F)<\epsilon$，$\{f_{k}\}$ 在 F 上一致收敛 [[Wiki - 一致收敛]]到 f


E **测度有限**不能省略

### Proof

首先注意到不妨设 $f_n$  逐点收敛到 f。对任意 $k, n\geq1$, 定义
$$
E_{k}^{n}:=\left\{x\in E:|f_{j}(x)-f(x)|<\frac{1}{n},\forall j\geq k\right\}
$$

则有 $E_{k}^{n}$ 关于 k 单调递增到 E，因此可以取 $\{k_{n}\}$，使得 $\hat{F} = \bigcap_{n=1}^{\infty}E_{k_{n}}^{n}, m (E / E_{k_{n}})  <\frac{\epsilon}{2^{n+1}}$，此时有 $\{f_{n}\}$ 在 $\hat{F}$ 上一致收敛到 f。

最后再取 $\hat{F}$ 内的闭集 F 使得 $m(E / F)<\epsilon$



