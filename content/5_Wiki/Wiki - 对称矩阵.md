---
aliases: 
info: 对称矩阵的性质
date: 2023-07-08-星期六 23:27
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230708232736
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

## Pro 1

在标准内积下，给定实对称矩阵 A，线性变换 $\mathcal{A}: x=Ax$ 是对称变换 [[Wiki - 对称变换]]


## Pro 2

实对称矩阵的特征值 [[Wiki - 特征值和特征向量]]都为实数

```ad-note
title: 推广

在复数域下自共轭矩阵的特征值也都是实数

```

[[Wiki - Hermite矩阵]]

[[Wiki - 伴随映射]]**来源：[[Book - 线性代数应该这样学]]**

## Pro3

```ad-proposition
title: Propositon 3
```
任意实对称方阵 A，存在正交矩阵[[Wiki - 正交矩阵]] T，使得

$${T^{ - 1}}AT = diag\left( {{\lambda _1},{\lambda _2}, \ldots ,{\lambda _n}} \right)$$
[[Wiki - 特征值和特征向量]]

### Proof
证明：归纳， 1 时成立，假设 n-1 时成立
取一个特征向量 X 1，并扩充成一组标准正交基（由施密特正交化）

                                   $$\begin{array}{*{20}{c}}{{T_n} = \left( {{X_1},{X_2}, \ldots {X_n}} \right)}\\{T_n^{ - 1}A{T_n} = {{\left( {{x_1},{x_2}, \ldots ,{x_n}} \right)}^T}  \left( {{\lambda _1}{x_1},A{x_2}, \ldots ,A{x_n}} \right)}\\{ = \left( {\begin{array}{*{20}{c}}{{\lambda _1}}&0\\0&{{A_{n - 1}}}\end{array}} \right)}\end{array}$$

可以验证，变换后的矩阵还是对称矩阵

由归纳假设，存在

       $$\begin{array}{*{20}{c}}{T_{n - 1}^{ - 1}{A_{n - 1}}{T_{n - 1}} = diag\left( {{\lambda _2},{\lambda _3}, \ldots {\lambda _n}} \right)}\\{ \to T = {T_n}\left( {\begin{array}{*{20}{c}}1&0\\0&{{T_{n - 1}}}\end{array}} \right) \to {T^{ - 1}}AT = diag\left( {{\lambda _1},{\lambda _2}, \ldots ,{\lambda _n}} \right)}\end{array}$$

## Cal1 

A 为对称矩阵当且仅当 A 有 n 个标准正交的特征向量 [[Wiki - 特征值和特征向量]]

## Pro4 real spectual theorem

```ad-theorem
title: Theorem 1

定理：对称矩阵不同的特征值对应的特征向量是正交的

```

 [[Wiki - 几何重数与代数重数]]

所以找正交矩阵时，只需要将每个特征子空间正交化[[Wiki - Schmidt 正交化]]即可