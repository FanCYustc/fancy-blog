---
aliases: 
info: 留数定理的内容
date: 2024-05-07-星期二 09:09
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析/留数
id: wiki20240507090912
banner: "![[astrowalk.gif]]"
---
---

## The 1 留数定理

```ad-theorem
title: Theorem 1

```
设 $D$ 是复平面上的一个有界区域，它的边界 $\gamma$ 由一条或若干条简单闭曲线组成. 如果 $f$ 在 $D$ 中除去孤立奇点 [[Wiki - 孤立奇点]] $z_1,\cdotp\cdotp\cdotp,z_n$ 外是全纯[[Wiki - 全纯函数]]的，在闭域 $\overline{D}$ 上除去 $z_1,\cdotp\cdotp\cdotp,z_n$ 外是连续的，那么

$$\int_\gamma f(z)\mathrm{d}z=2\pi\mathrm{i}\sum_{k=1}^n\mathrm{Res}(f,z_k).$$

[[Wiki - 留数]]说明不完全全纯的函数积分值主要有孤立奇点决定


### Proof

以 $z_{k}$ 为中心做小圆互不相交且均包含于 D，则利用 cauchy 积分定理的推论 [[Wiki - cauchy积分定理]]，得

$$
\underset{\gamma}{\operatorname*{\int}}f(z)\mathrm{d}z=\underset{k=1}{\operatorname*{\sum}}^{n} \underset{\gamma_k}{\operatorname*{\int}}f(z)\mathrm{d}z
$$

## Cal 1 

函数 f 所有孤立奇点的留数之和为 0。条件同 the 1

$$
\sum_{i=1}^{n}Res(f,a_{k}) + Res(f,\infty)=0
$$

