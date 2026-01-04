---
aliases:
info:
date: 2024-04-22-星期一 20:09
update:
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
  - 几何学/度量空间
id: wiki20240422200902
banner: "![[astrowalk.gif]]"
---
---

## The 1 完备性定理

```ad-theorem
title: Theorem 1

Suppose $1<p\leq \infty$，$L^{p}(E)$ 在度量 $d(f,g)=\mid\mid f-g\mid\mid_{p}$ 下完备

```
[[Wiki - Lp线性空间]]

[[Wiki - 度量空间的完备性]]

### Proof

对任意 $\{f_{n}\}\in L^{p}(E)$ 为 cauchy 列，$\lim_{ j,k \to \infty }d(f_{k}, f_{j})=0$，证存在 f，$\lim_{ n \to \infty }\mid \mid f_{n}-f\mid\mid_{p}=0$

证明见于树澄讲义[[实分析讲义-于树澄.pdf]] 第 13 节，14 节

```ad-caution

注意当 $1<p<\infty$ 时，$\mid\mid f_{n}-f\mid\mid_{p}\to 0$ 不能推出 $f_{n}\to f,a.e.x\in E$，但$p=\infty$时可以

```


