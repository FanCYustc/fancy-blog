---
aliases: 
info: 基和维数的定义
date: 2023-05-19-星期五 22:00
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519220045
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 

## Pro 1


设非空集 $V$ 是 $F^n$ 的子空间. 则存在线性无关的向量组 $\vec{a_1},\dots,\vec{a_{r}}$, 使得

$$

V=\langle \vec{a_1},\cdots,\vec{a_r}\rangle.

$$

任意 α∈V，可以唯一的由这组向量线性表出.

## Def 1基
对基的要求：

• 线性无关[[Wiki - 线性相关和线性无关]]
即整个等价类[[Wiki - 向量组等价]]中的一个极大线性无关组 [[Wiki - 极大线性无关组]]
• 生成整个子空间 V [[Wiki - 生成子空间]]

则称为 V 的**一组基**。


## Def 2 维数
极大线性无关组的个数是唯一的[[Wiki - 极大线性无关组与秩]]，虽然基可以有不同的选取，称之为**子空间的维数**


## Pro 2 基和维数的性质

$\left(1\right)$设 $V\in F^n$ 为r维子空间,则V中任意 $r+1$ 个向量线性相关;

(2)   设V为 $r$ 维子空间，则V中任意r个线性无关向量为V的一组基

(3)   设U与V为 $F^n$ 的子空间,且 $U\subseteq V,$ 则 $\dim U\leqslant\dim V_j\quad$

(4)   设 $U$ 与V为 $F^n$ 的子空间,且 $U\subseteq V,$ 若 $\dim U=\dim V,$ 则 $U=V$

## Pro 3 扩充基

设 $V\subset F^n$ 为 r 维子空间, $\vec{a_1},\dots,\vec{a_s}\in V$ 是 $s\left(s<r\right)$ 个线性无关的向量. 则存在 $V$ 中的向量 $\vec{a_{s+1}},\dots, \vec{a_{r}}$，使得 $a_1,\cdots,a_r$ 构成 $V$ 的一组基. 称 $a_1,\cdots,a_r$ 为线性无关组 $\vec{a_1},\dots, \vec{a_s}$ 的**一组扩充基**