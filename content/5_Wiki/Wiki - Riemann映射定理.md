---
aliases: 
info: 
date: 2024-06-04-星期二 08:15
update: 2024-06-06-Thursday 11:20:55
tags:
  - wiki/year2024
  - wiki/month06
  - 复分析/共形映射
id: wiki20240604081524
banner: "![[astrowalk.gif]]"
---
---

## The 1 Riemann 映射定理

```ad-theorem
title: Theorem 1

```
设 $\Omega \subset \mathbb{C}$ 为单连通域 [[Wiki - 连通区域]]，$\Omega\neq \mathbb{C}$，则 $\Omega$ **共形等价于单位圆盘** $\mathbb{D}=B(0,1)$

更具体的，$a\in \Omega$，则存在唯一的 $f:\Omega\to \mathbb{D}$ 为双全纯映射，满足 $f(a)=0,f'(a)>0,f(\Omega)=\mathbb{D}$


### Proof


证明见史济怀 [[Book - 复变函数]] 7.2 节证明

1、通过变换，可以考虑假设 $\Omega$ 是有界的，且其边界是光滑的。 

2、在有界域上，证明 $\mathscr{F}=\{f单叶全纯，f(a)=0,f'(a)>0,f(\Omega)\subset \mathbb{D} \}$ 非空，取 $f (z) = \frac{1}{2R}(z-a)$ 即可，R 为 $\Omega$ 半径

由 [[Wiki - 全纯函数导数的cauchy估计]]，取 $B(a,r)\subset\Omega$，则有 $f' (a)< \frac{1}{r}\sup \{|f(z)|: z\in B(a,r)\}< \frac{1}{r}$，所以 $f'(a)$ 有上界 M，取 $\lim_{ n \to \infty }f_{n}'(a)=M$

因为 $\mathscr{F}$ 一致有界，为 $\Omega$ 的正规族 [[Wiki - 正规族]]，所以由[[Wiki - 一致等度连续|阿斯科利引理]]，存在子列 $\lim_{ k \to \infty }f_{n_{k}}(z)= f_{0}(z)$。由 [[Wiki - weierstrass定理]], $f_{0}(z)\in H(\Omega)$。再由最大模原理 [[Wiki - 最大模原理]]说明 $f_{0}\in \mathscr{F}$

3、证明 $f_{0}$ 是满足定理条件的 Riemann 映射：反证 $f_{0}(\Omega)$ 真包含于 $B(0,1)$，取 $u_{0}\in B (0, 1), u_{0}\notin f_{0}(\Omega)$。构造一系列复合推出存在 $w\in\mathscr{F}$ 但 $w'(a)>M$。


4、证明唯一性：假设还有 $g_{0}$ 满足条件，考虑 $g_{0}\circ f_{0}^{-1}$ 为单位圆盘的自同构映射，由 Schwarz 定理 [[Wiki - 全纯函数的Schwartz引理]]有 $g_{0}\circ f_{0}^{-1}(z)=z,\forall z\in B(0,1)$。



