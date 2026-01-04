---
aliases: 
info: 对称多项式基本定理
date: 2023-09-25-星期一 09:23
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230925092300
banner: "![[astrowalk.gif]]"
---
---

## The 1 对称多项式基本定理

```ad-theorem
title: Theorem 1

对称多项式基本定理

$x_{1},x_{2}\dots,x_{n}$ 的任何一个对称多项式 [[Wiki - 对称多项式]]都**可以唯一地**表示成 $x_{i}$ 的初等对称多项式 $\sigma_{1},\dots,\sigma_{n}$ 的多项式.

```

### Proof

构造证明：

按字典排序[[Wiki - 单项式的序]]，设 f 首项为 $ax_{1}^{m_{1}}x_{2}^{m_{2}}\dots x_{n}^{m_{n}}$，而 $ax_{1}^{k_{1}}x_{2}^{k_{2}}\dots x_{n}^{k_{n}}$ 也是 f 的项，$k_{1},\dots k_{n}$ 是 $m_{i}$ 的任意排列，所以 $m_{1}\geq m_{2}\geq\dots\geq m_{n}$

构造考虑

$a(x_{1}+\dots)^{m_{1}-m_{2}}(x_{1}x_{2}+\dots)^{m_{2}-m_{3}}\dots(x_{1}\dots x_{n}+\dots)^{m_{n}-0}$

记为 $g(\sigma_{1},\dots,\sigma_{n})$ ，由于 $m_{i}\geq m_{i-1}$ 所以是合理的。 其首项 [[Wiki - 多元多项式]]为 $ax_{1}^{m_{1}}x_{2}^{m_{2}}\dots x_{n}^{m_{n}}$

所以 $f'=f-g(\sigma_{1},\dots,\sigma_{n})$ 按字典排序首项递减，经过有限步一定可以得到构造





