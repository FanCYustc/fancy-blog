---
aliases:
info:
date: 2024-06-10-星期一 19:00
update:
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
  - 几何学/度量空间
id: wiki20240610190059
banner: "![[astrowalk.gif]]"
---
---

## The 1 稠密性定理

```ad-theorem
title: Theorem 1

设 $1\leq p<\infty.$ 则 $L^p( \mathbb{R} ^d)$ 且 $\{阶梯函数\}\overset{ dense}\subset\{L^{p}简单函数\} \overset{dense}{\subset} L^{p}(\mathbb{R}^{d})$.

```

[[Wiki - Lp线性空间]]

其中 dense 表示 $\forall\epsilon, v\in右边$, 存在 $x\in 左边$, s.t. $d(x,v)<\epsilon$ [[Wiki - 度量空间的稠密性]]


需要配合一个引理：

```ad-lemma

若 $X \overset{dense}{\subset}V, Y \overset{dense}{\subset}X$，则 $Y \overset{dense}{\subset}V$

```

利用距离的三角不等式 [[Wiki - 欧几里得空间的距离和夹角#Pro1 距离的性质]]

### Proof

见[[实分析讲义-于树澄.pdf]] 第 15 节定理 15.2 的证明


[[Wiki - 简单函数逼近定理]]

[[Wiki - 阶梯函数逼近定理]]

用到简单函数稠密用到 [[Wiki - Lebesgue控制收敛定理]]

阶梯函数稠密用到 [[Wiki - Littlewood三原则#The 1 原则一]]

## The  2 稠密性定理

定义 $C_{c}(\mathbb{R})^{d}$ 为具有紧致支撑 [[Wiki - 列紧空间]]的连续函数 [[Wiki - 连续可测函数]]全体。

对于 $g\in C_{c}(\mathbb{R}^{d})$ 有好多性质，例如在 $supp(g)$ 上有界且一致连续 [[Wiki - 度量空间上的一致连续性]]

```ad-theorem
title: Theorem 2

对 $1\leq p<\infty$，有 $C_{c}(\mathbb{R}^{d})\overset{dense}{\subset}L^{p}(\mathbb{R}^{d})$

```
其实有 $C_{c}(\mathbb{R}^{d})\overset{dense}{\subset}\{阶梯函数\}$

### Proof 

只需要证明对任意矩体 $R\subset \mathbb{R}^{d},\forall\epsilon$，存在 $g\in C_{c}(\mathbb{R}^{d}),\mid \mid g-\chi_{R}\mid\mid_{p}<\epsilon$

对 d=1 构造函数，其他维数仿造，具体见[[实分析讲义-于树澄.pdf]] 第 15 节定理 15.4
