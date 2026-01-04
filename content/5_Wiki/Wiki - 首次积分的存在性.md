---
aliases: 
info: 
date: 2023-12-14-星期四 10:33
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 微分方程/ODE
id: wiki20231214103302
banner: "![[astrowalk.gif]]"
---
---

## The 1 首次积分的存在性

```ad-theorem
title: Theorem 1

```

设 $P_0=(x_0,y_1^0,...,y_n^0)\in G$. 则存在 $P_{0}$ 点的一个邻域 $G_0\subset G$, 使得微分方程

$$
\frac{dy_{i}}{dx}=f_{i}(x,y_{1},\dots,y_{n}),i=1,\dots,n
$$

在区域 $G_{0}$ 内有 $n$ 个互相独立 [[Wiki - 雅各比矩阵]] [[Wiki - 逆映射定理]] 的首次积分 [[Wiki - 首次积分]]



### Proof

任取初值条件 $y_1(x_0)=C_1,\quad...,\quad y_n(x_0)=C_n$, 其中 $(x_0,C_1,\cdotp\cdotp,C_n)$ 在 $P_0$ 点的某个邻域 $G^*$ 内. 则由**解对初值的可微性定理**[[Wiki - 解对初值和参数的连续性]]推出，微分方程满足初值条件的解

 $y_1=\varphi_1(x,C_1,...,C_n),...,y_n=\varphi_n(x,C_1,...,C_n)$


对 $x,C_{1},\dots,C_{n}$ 连续可微，且

$$
\frac{{D(\varphi_{1},\dots,\varphi_{n})}}{D(C_{1},\dots,C_{n})}|_{x=x_{0}}=1
$$

[[Wiki - 雅各比矩阵]]

由逆映射定理 [[Wiki - 逆映射定理]]，存在 $\Phi_{i}$ 使得

$$
\Phi_{i}(x,y_{1},\dots,y_{n})=C_{i},i=1,\dots,n
$$

且 $\Phi_{i}$ 在 $P_{0}$ 的邻域 $G_{0}$ 里连续可微，且雅各比矩阵为 $\frac{{D(\varphi_{1},\dots,\varphi_{n})}}{D(C_{1},\dots,C_{n})}$ 的倒数不为 0，所以此时 $\Phi_{i}$ 相互独立


