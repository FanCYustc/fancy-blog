---
aliases: 
info: 多元特征函数的逆转公式
date: 2023-11-23-星期四 14:19
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/特征
  - fourier分析
id: wiki20231123141906
banner: "![[astrowalk.gif]]"
---
---

## The 1 逆转公式

```ad-theorem
title: Theorem 1

```
如果随机向量 $x=(X_1,\ldots,X_n)^\top$ 的分布函数[[Wiki - 分布函数]]为 F, 对应的特征函数[[Wiki - 多元特征函数]]为 $f$, 则对 $\forall\mathbf{a},\mathbf{b}\in C(F),\mathbf{a}<\mathbf{b}$, 有

$$
F(\mathbf{a},\mathbf{b}]=\lim_{c\to\infty}\frac1{(2\pi)^n}\int_{-c}^c\cdots\int_{-c}^cf(\mathbf{t})\prod_{j=1}^n\frac{\mathrm{e}^{-\mathrm{i}t_ja_j}-\mathrm{e}^{-\mathrm{i}t_jb_j}}{\mathrm{i}t_j}\mathrm{~}dt_1\cdots dt_n.
$$


[[Wiki - 特征函数的逆转公式]]

