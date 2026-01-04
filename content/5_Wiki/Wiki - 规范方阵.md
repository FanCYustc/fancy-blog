---
aliases: 
info: 规范方阵的定义、标准型
date: 2023-12-25-星期一 07:57
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/欧式空间
  - 线性代数/矩阵
  - 线性代数/相似标准型
id: wiki20231225075737
banner: "![[astrowalk.gif]]"
---
---

## Def 1 规范阵

```ad-definition
title: Definition 1

正规变换在标准正交基下的矩阵就是规范方阵，即满足$AA^{T}=A^{T}A$的矩阵称为规范方阵


```

 [[Wiki - 正规变换]]

即 [[Wiki - 伴随映射#Pro 2]]

## The 1 正交相似标准型


```ad-theorem
title: Theorem 1

```

设 $\lambda_1,\lambda_2,...,\lambda_n$ 是 $n$ 阶实规范方阵 $A$ 的全部特征值[[Wiki - 特征值和特征向量]]，则 A 正交相似[[Wiki - 欧式空间同构]]于淮对角形
$$
diag(\begin{pmatrix}
a_{1} & b_{1} \\
-b_{1} & a_{1}
\end{pmatrix},\dots,\begin{pmatrix}
a_{s} & b_{s} \\
-b_{s} & a_{s}
\end{pmatrix},\lambda_{2s+1},\dots,\lambda_{n})
$$

其中 $\lambda_{2j- 1}= a_j+ i b_j, \lambda_{2j}= a_i- i b_j, j= 1, ..., s$, $a_1, ..., a_s, b_1, ..., b_s, \lambda_{2s+ 1}, ..., \lambda_n$ 是实数，$b_1\cdotp\cdotp\cdotp b_s\neq0$. 并且规范方阵的特征值是规范方阵在正交相似下的全系不变量.




属于一些特殊矩阵的 [[Wiki - 实方阵的实相似]]，其过渡矩阵正交，且标准型准对角。

### Proof

当 $s>0$ 时，设 $a_i= u_1+ i v_1$ 是 $A$ 的属于特征值 $\lambda_{1}$ 的特征向量，其中 $u_1,v_1$ 是实向量. 则 $u_1,v_1$ 线性无关，且 $a_2= u_1- i v_1$ 是 A 的属于特征值 $\lambda_2$ 的特征向量. 将 $\langle u_1,v_1\rangle$ Schmidt 标准正交化 [[Wiki - Schmidt 正交化]]为{$\beta_1,\beta_2\}$, 并扩充为 R" 的一组标准正交基 $\{\beta_{1},\beta_{2},\dots,\beta_{n}\}$，A 在之下的矩阵为 
$$\begin{pmatrix}
A_{1} &A_{2} \\
0 & A_{3}
\end{pmatrix},A_{1}=\begin{pmatrix}
a_{1} &b_{1} \\
-b_{1}&a_{1}
\end{pmatrix}$$

它也是规范方阵，所以有 $A_{1}A_{1}^{T}+A_{2}A_{2}^{T}=A_{1}^{T}A_{1}$，$trace(A_{2}A_{2}^{T} )=trace(A_{1}^{T}A_{1}-A_{1}A_{1}^{T})=0$, 所以 $A_{2}=0$。[[Wiki - 矩阵的迹]]。

需要验证 $A_{3}$ 还是正规矩阵，然后作归纳即可。

同理可得 A 可正交相似于准对角阵。

## Pro 1 

```ad-proposition
title: Propositon 1

```
欧式空间的正规变换 [[Wiki - 正规变换]]可以分解成 s 个二维不变子空间和 n-2s 个一维不变子空间 [[Wiki - 不变子空间]]的直和 [[Wiki - 子空间的直和]]，且这些空间两两正交


[[Wiki - 欧式空间的子空间]]


