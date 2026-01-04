---
aliases: 
info: 极大线性无关组
date: 2023-05-19-星期五 20:24
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519202419
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性空间 

## Def 1 极大无关组

```ad-definition
title: Definition 1

设 $a_1,\cdots,a_m\in F^n,$ 若 $a_{i_{1}},\cdots,a_{i_{r}}$ 线性无关, 且任加一个其他向量 $a_{i_{r+1}}$ 后 $a_{i_1},\cdots,a_{i_r},a_{i_{r+1}}$ 线性相关, 则称 $a_{i_1},\cdots,a_{i_r}$ 为 $a_1,\cdots,a_m$ 的极大无关组

```

 [[Wiki - 线性相关和线性无关]]

**极大线性无关组选取不唯一**

## Pro1

设 $a_1,\cdots,a_m\in F^n$ 为一组列向量, $\mathbf{A}=(a_1,\cdots,a_m)$ 是以 $a_1,\cdots,a_m$ 为列构成的 $n\times m$ 阶矩阵. A 经一系列的**初等行变换**[[Wiki - 矩阵的初等变换]]（只进行一种）变为矩阵 B= $(b_{1},\cdots,b_{m}).$ 则

(1) $a_1,\cdots,a_m$ 线性相关 (无关) 当且仅当 $b_1,\cdots,b_m$ 线性相关 (无关);
(2) $a_{i_1},\cdots,a_{i_r}$ 为 $a_1,\cdots,a_m$ 的极大无关组当且仅当 $b_{i_{1}},\cdots,b_{i_{r}}$ 为 $b_1,\cdots,b_m$ 的极大无关组.

即初等变换不改变矩阵的秩 [[Wiki - 矩阵的秩]]，极大无关组即对应矩阵的秩[[Wiki - 极大线性无关组与秩]]

