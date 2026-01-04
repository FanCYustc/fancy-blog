---
aliases:
  - 矩阵列极限
  - 矩阵指数函数
info: 利用多项式展开定义矩阵运算
date: 2023-09-27-星期三 12:01
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/矩阵
id: wiki20230927120101
banner: "![[astrowalk.gif]]"
---
---

## Def 1 

Suppose $A_{k}=(a_{ij}^{k})_{m\times n}$  $\lim_{ k \to \infty }A_{k}=A$ 称 A 是矩阵列的极限

[[Wiki - 矩阵的加法和数乘]]

[[Wiki - 矩阵的乘法]]

## Example 1 矩阵指数函数

$$
e^{A}=\sum_{k=1}^{\infty} \frac{{A^{k}}}{k!}
$$

### proof

利用 [[Wiki - 矩阵范数#Def 2 和范数]] 可以证明其绝对收敛[[Wiki - 绝对收敛与条件收敛]]


同理还可以得到 sin (A), cos (A) 等定义

**来源：[[Book - 线性代数（数学专业用）]]**

## Pro 1 矩阵指数的性质
```ad-proposition
title: Propositon 1


1、若 AB=BA, 则 $e^{A+B}=e^{A}e^{B}$

2、对任何方阵 A，$e^{A}$ 可逆，且
$$
(e^{A})^{-1}=e^{-A}
$$

3、P 是非奇异的 n 阶矩阵，则
$$
e^{PAP^{-1}}=Pe^{A}P^{-1}
$$


```

