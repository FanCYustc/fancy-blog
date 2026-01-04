---
aliases:
  - 正交相似
info: 欧式空间同构
date: 2023-12-18-星期一 09:15
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/欧式空间
  - 线性代数/相似标准型
id: wiki20231218091529
banner: "![[astrowalk.gif]]"
---
---

## Def 1 欧式空间同构

```ad-definition
title: Definition 1

```
$V_{1},V_{2}$ 为欧式空间，称它们同构，如果存在 $\sigma: V_{1}\to V_{2}$ 为线性同构映射 [[Wiki - 线性空间同构]]，且 $(\sigma (\alpha),\sigma (\beta))=(\alpha,\beta),\forall\alpha,\beta\in V_{1}$，即同构映射保持内积 [[Wiki - 内积]]不变


由于保持内积，所以将标准正交基映射为标准正交基，所以过渡矩阵 [[Wiki - 线性变换在不同基下]]为正交方阵 [[Wiki - 正交矩阵]]，所以又称为**正交相似**，强于普通的相似

## Pro 1 同构的条件

欧式空间 $V_{1},V_{2}$ 同构，当且仅当 $\dim V_{1} = \dim V_{2}$

### Proof

$\implies$ 跟一般线性空间同构一样 [[Wiki - 线性空间同构的性质]]

$\leftarrow$，若维数相同 [[Wiki - 基和维数]]，取 $V_{1}$ 标准正交基 [[Wiki - Schmidt 正交化|标准正交基]] $\alpha_{1},\dots,\alpha_{n}$，取 $V_{2}$ 标准正交基 $\beta_{1},\dots,\beta_{n}$，取线性映射 $\sigma$ 使得 $\sigma(\alpha_{i})=\beta_{i}$

$\forall\alpha=\sum x_{i}\alpha_{i}\in V_{1}，\beta=\sum y_{i}\alpha_{i}$，有 $\sigma (\alpha)=\sum x_{i}\beta_{i}$，所以

$$
(\sigma(\alpha),\sigma(\beta))=\sum x_{i}y_{i}= (\alpha,\beta)
$$

## The 1 正交相似标准型


```ad-theorem
title: Theorem 1


设 $\lambda_1,\lambda_2,\cdotp\cdotp\cdotp,\lambda_n$ 是 n 阶实方阵 A 的全部特征值，则 A 正交相似于准上三角形矩阵

$$\begin{vmatrix}\boldsymbol{A}_1&*&*&*&*&*\\&\ddots&*&*&*&*\\&&\boldsymbol{A}_s&*&*&*\\&&&\lambda_{2s+1}&*&*\\&&&&\ddots&*\\&&&&&\lambda_n\end{vmatrix},$$
其中
$$
A_{j}= \begin{pmatrix}
a_{j} & b_{j} \\
-b_{j} & a_{j}
\end{pmatrix}
$$

对应特征值 $\lambda_{2j-1}=a_{j}+ib_{j},\lambda_{2j}=a_{j}-ib_{j},j=1,\dots,s$
$\lambda_{2s+1},\dots\lambda_{n}$ 对应实特征值。

```

[[Wiki - 实方阵的实相似]]


**[[Wiki - 规范方阵]]对应的是特殊情况**




