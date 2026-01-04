---
aliases:
  - 基解矩阵
info: 线性微分方程组解的结构
date: 2023-11-14-星期二 16:41
update:
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
  - 微分方程/微分方程组
  - 线性代数/线性空间
id: wiki20231114164145
banner: "![[astrowalk.gif]]"
---
---

同 [[Wiki - 线性方程组解的结构]]

## Pro 1 齐次线性方程组性质

```ad-proposition
title: Propositon 1

齐次线性微分方程组的解的线性组合还是线性方程组的解

```

## Def 1 解的线性相关和线性无关

```ad-definition
title: Definition 1

线性微分方程组的解线性无关：
$$
c_{1}\boldsymbol{\varphi}_{1}(x)+\dots+c_{n}\boldsymbol{\varphi}_{n}(x)=0,a<x<b\leftrightarrow c_{1}=\dots=c_{n}=0
$$

线性相关的定义类似

```


[[Wiki - 线性相关和线性无关]]

## Pro 2 解空间

[[Wiki - 生成子空间]]


```ad-proposition
title: Propositon 1

$$\mathscr{S}=\left\{\text{ 微分方程组}\left(1.2\right)\text{在区间 }a<x<b\text{ 上的一切解 }\right\}.
$$
有$\mathscr{S}$是一个n维线性空间
$$
\mathscr{S}\simeq R^{n}
$$



```

[[Wiki - 线性空间同构]]

**注意限制在 a<x<b 上**

### Proof

取定 $x_0$ ，对 $\boldsymbol{y}\in \mathbb{R}^{n}$, 由 [[Wiki - n维的皮卡定理]]，存在唯一的 $\boldsymbol{\varphi_{y}}\in \mathscr{S},\boldsymbol{\varphi_{y}}(x_{0})=\boldsymbol{y}$

且对不同的 $\boldsymbol{\varphi}$ 对应不同的 $\boldsymbol{\varphi}(x_{0})$

所以存在同构映射 [[Wiki - 线性空间同构#Def1 同构映射]] $H:\boldsymbol{\varphi}\leftrightarrow \boldsymbol{y}$

## The  1 齐次线性微分方程组的解的结构

```ad-theorem
title: Theorem 1

若 n 维齐次线性微分方程组有 n 个线性无关的解

$\boldsymbol{\varphi}_1\left(x\right),\cdots,\varphi_n\left(x\right)$,
 

它的通解为

$$
\boldsymbol{y}=C_1\boldsymbol{\varphi}_1(x)+\cdots+C_n\boldsymbol{\varphi}_n(x)=\Phi(x)\boldsymbol{C}
$$


其中 $C_1,...,C_n$ 是任意常数,$\Phi(x)$为**基解矩阵**

这n个解称为一个基本解组

```

[[Wiki - 基和维数#Def 1基]]、[[Wiki - 生成子空间]]


## cal 1

设 $\Phi(x)$ 是方程 $\frac{d\boldsymbol{y}}{dx}=A(x)\boldsymbol{y}$ 的一个基解矩阵，则对于任一个非奇异的 n 阶常数矩阵 $C$, 矩阵也是一个基解矩阵$\Psi(x)=\boldsymbol{\Phi}(x)C$

[[Wiki - 可逆线性映射]]

