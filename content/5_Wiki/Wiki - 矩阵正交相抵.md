---
aliases: 
info: 矩阵正交相抵的条件
date: 2023-10-25-星期三 10:10
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 线性代数/矩阵
  - 线性代数/线性变换
id: wiki20231025101006
banner: "![[astrowalk.gif]]"
---
---

## Def 1 正交相抵

```ad-definition
title: Definition 1


[[Wiki - 矩阵相抵]]

$A, B\in \mathbb{R}^{m\times n}$，若存在正交方阵 [[Wiki - 正交矩阵]] U, V 使 $B=UAV$，则称 AB 正交相抵

```
**讨论的是实矩阵的奇异值**

## Pro 1 正交相抵的条件

```ad-proposition
title: Propositon 1


A, B 正交相抵当且仅当 A, B 奇异值相等 [[Wiki - 矩阵的奇异值]]


```

### Proof

若 B=UAV，则 $B B^{T}=UAVV^{T}A^{T}U^{T}=UAA^{T}U^{-1}$

所以 $BB^{T}$ and $A A^{T}$ 特征值相同 [[Wiki - 相似矩阵的性质]]

所以 A, B 奇异值相同

另一方面，若奇异值相等，则
$$
A=U_{1}\begin{pmatrix}
\Lambda & O \\
O& O
\end{pmatrix}V_{1}\quad 
B=U_{2} \begin{pmatrix}
\Lambda& O \\
O& O
\end{pmatrix}V_{2}
$$
所以 A, B 正交相抵