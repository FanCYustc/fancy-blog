---
aliases: 
info: n维正态分布的形式
date: 2023-11-23-星期四 14:21
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论/概率分布
id: wiki20231123142119
banner: "![[astrowalk.gif]]"
---
将多元正态分布的条件分布用逆矩阵 $\Omega=\Sigma^{-1}$ 表达了出来。从多元正态概率密度函数的形式来看，这是比较自然的：记 $\Omega=$ $\Sigma^{-1}=\left(\omega_{i j}\right)$ , 则我们可以展开 ${\bf x}{\sim}N_{p}(0,\Sigma)$ 指数上的二次型：  

$$
\begin{array}{r}{f(\mathbf{x})=C\exp\left(-\frac{\mathbf{x}^{\mathsf{T}}\Sigma^{-1}\mathbf{x}}{2}\right)=C\exp\left(-\frac{1}{2}\sum_{i,j}\omega_{i j}x_{i}x_{j}\right)}\end{array}
$$  
---


[[Wiki - 正态分布]]
## Def 1 二维正态分布
```ad-definition
title: Definition 1


$$\begin{gathered}
(X,Y)\sim N_{2}(a_{1},a_{2};\sigma_{1}^{2},\sigma_{2}^{2};\rho),\text{其联合 pdf 为} \\
f(x,y)=\frac{1}{2\pi\sigma_{1}\sigma_{2}\sqrt{1-\rho^{2}}}\exp\left\{-\frac{1}{2(1-\rho^{2})}\left[\frac{(x-a_{1})^{2}}{\sigma_{1}^{2}}\right]\right. \\
\left.\left.-2\rho\frac{(x-a_{1})(y-a_{2})}{\sigma_{1}\sigma_{2}}+\frac{(y-a_{2})^{2}}{\sigma_{2}^{2}}\right]\right\} 
\end{gathered}$$
为**二维正态分布**,  其中 $\rho$ 表示 x 与 y 的**关联程度**。

```
[[Wiki - 随机向量的概率密度函数]]




## Def 1 n 维正态分布

通过对特殊的 n 维正态分布做线性变换得到新的 n 维正态分布

```ad-definition
title: Definition 1


设 $X_1,X_2,\ldots,X_n$ iid $\sim N(0,1)$, 则称随机向量
 $\mathbf{x}=(X_1,X_2,\ldots,X_n)^\top\sim N_n(0,1)$, 其中 $I= diag ( 1, 1, \ldots , 1).$ 
 
 设 $A=(a_{ij})_{n\times n}$ 为 n 阶方阵，$\mu\in\Re^n$, 随机向量 $x\sim N_n(0,1)$, 定义

$$
\mathbf{Y}=A\mathbf{X}+\mu,
$$

则称 $\mathbf{Y}\sim N_n(\boldsymbol{\mu},\Sigma)$, 其中 $\Sigma=AA^\top$


```

在二维中看到两个变量之间会有相关系数 $\rho$，则 A 就是用来表示每两个变量之间的相关性。$\sum$ 为协方差矩阵[[Wiki - 协方差矩阵]]


## 密度函数

```ad-theorem
title: Theorem 2

设 $Y\sim N_n(\mu,\Sigma)$, **$\Sigma$ 可逆**，则 Y 的 pdf 为

$$
p(\mathbf{y})=(2\pi)^{-n/2}|\Sigma|^{-1/2}\exp\left\{-\frac12(\mathbf{y}-\mathbf{\mu})^\top\Sigma^{-1}(\mathbf{y}-\mathbf{\mu})\right\},
$$

$y\in\Re^n$

```

将多元正态分布的条件分布用逆矩阵 $\Omega=\Sigma^{-1}$ 表达了出来。从多元正态概率密度函数的形式来看，这是比较自然的：记 $\Omega=$ $\Sigma^{-1}=\left(\omega_{i j}\right)$ , 则我们可以展开 ${\bf x}{\sim}N_{p}(0,\Sigma)$ 指数上的二次型：  

$$
\begin{array}{r}{f(\mathbf{x})=C\exp\left(-\frac{\mathbf{x}^{\mathsf{T}}\Sigma^{-1}\mathbf{x}}{2}\right)=C\exp\left(-\frac{1}{2}\sum_{i,j}\omega_{i j}x_{i}x_{j}\right)}\end{array}
$$  
[[Wiki - 精度矩阵]]
### Proof

  设 $Y=AX+\mu$, 其中 $X\sim N_n(0,I_n),\Sigma=AA^\top$. 由 $\Sigma$ 可逆知 $A$ 可逆。由变换 $y=Ax+\mu$, 得 $x=A^{-1}(y-\mu)$. 该变换对应的
 Jacobi 行列式的值为 $J(\mathbf{y})=|A^{-1}|=|\Sigma|^{-1/2}$（由可逆所以有行列式[[Wiki - 行列式与可逆]]）[[Wiki - 随机向量的函数]]. 注意到 X 的联合 pdf [[Wiki - 随机向量的概率密度函数]]为

$$q(\mathbf{x})=\frac1{(2\pi)^{n/2}}\exp\left\{-\frac{\mathbf{x}^{\top}\mathbf{x}}2\right\}$$

$$\begin{aligned}&\text{于是 }\mathbf{Y}\text{ 的联合 pdf 为}\\&p(\mathbf{y})=\frac1{(2\pi)^{n/2}|\Sigma|^{1/2}}\exp\left\{-\frac12(\mathbf{y}-\mathbf{\mu})^\top(A^{-1})^\top A^{-1}(\mathbf{y}-\mathbf{\mu})\right\}\end{aligned}$$

## Pro 1 条件分布

```ad-proposition
title: Propositon 1
```


若 $\mathbf{x}\sim N_p (\mathbf{\mu},\Sigma)$, 划分 $\mathbf{x}=\begin{pmatrix}\mathbf{x}_1\\\mathbf{x}_2\end{pmatrix}, \mathbf{\mu}=\begin{pmatrix}\mathbf{\mu}_1\\\mathbf{\mu}_2\end{pmatrix}$, $\Sigma=\begin{pmatrix}\Sigma_{11}&\Sigma_{12}\\\Sigma_{21}&\Sigma_{22}\end{pmatrix}>0$，其中 $\mathbf{x}_1$ 长度为 $q$，则边际分布和条件分布依然是 (多元) 正态分布: 
$$\begin{aligned}
&(1) \mathbf{x}_1\sim N_q(\mathbf{\mu}_1,\Sigma_{11}),\mathbf{x}_2\sim N_{p-q}(\mathbf{\mu}_2,\Sigma_{22}).\\&(2) \mathbf{x}_1\mid\mathbf{x}_2\sim N_q\Big(\mathbf{\mu}_1+\Sigma_{12}\Sigma_{22}^{-1}(\mathbf{x}_2-\mathbf{\mu}_2),\Sigma_{11\cdot2}\Big) \end{aligned}$$
其中 $\Sigma_{11\cdot2}=\Sigma_{11}-\Sigma_{12}\Sigma_{22}^{-1}\Sigma_{21}$。


[[Wiki - 随机向量的边际分布]]

[[Wiki - 条件分布与条件密度]]


形式与 [[Wiki - 去相关化]]一致

## Pro 2 

对于多元正态 $\boldsymbol{X}\sim N_{n}\left( \boldsymbol{\mu}, \sum \right)$，$C=(c_{ij})_{m\times n}$，则 $C\boldsymbol{X} \sim N\left(C\boldsymbol{\mu},  C\sum C^{T} \right)$