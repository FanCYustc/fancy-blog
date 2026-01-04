---
aliases: 
info: 
date: 2024-01-02-星期二 10:21
update: 
tags:
  - wiki/year2024
  - wiki/month01
  - 数学分析/多变量微积分
id: wiki20240102102152
banner: "![[astrowalk.gif]]"
---
---

这里补了 [[Wiki - 二重积分的换元#Pro1]] 中证明的漏子，且不局限于二维三维 [[Wiki - 三重积分的换元]]

[[Wiki - 曲面积分的换元]]

## The 1 重积分换元

```ad-theorem
title: Theorem 1

设 $\phi:U^{\prime}\to U$ 是**参数变换**，并且 $\phi$ **可以延拓为 $U^{\prime}$ 闭包**上的 $C^{1}$ 映射设 $U^{\prime}$ 是可测集，则 $U=\phi(U^{\prime})$ **也是可测集**，对于 $U$ 上的任意可积函数 $f$, 有积分换元公式

$$
\int_U\:f(x)\mathrm{d}x=\int_{U^{\prime}}f\circ\phi(u)J(u)\mathrm{d}u.
$$


```

### Proof

需要下面的引理：

```ad-lemma

设 U 是 $\mathbb{R}^n$ 上的开集，$\phi: U\to \mathbb{R}^{n}$ 是 $C^{1}$ 映射，且 $\sup \mid\mid d\phi\mid\mid<+\infty$。则

1、若 $E\subset U$ 是有界集合，则 $\phi(E)$ 也是有界集合，且存在一个只依赖于维数 n 和 sup $\|$ d $\phi\|$ 的常数 $C$, 使得


$$
\sigma^+(\phi(E))\leqslant C\sigma^+(E);
$$


2、设 $D\subset U$ 是可测集有界，$D^{\circ}\neq\emptyset$, 且 $\det ( d \phi)$ 在 D 上处处非零，则 $\partial \phi (E)\subset \phi(\partial E)$ ，$\phi (D)$ 是可测集. 

3、若 $\phi$ 是参数变换，且 $D\subset U$ 是紧致可测集，则 $\phi (\partial D)=\partial (\phi D),\phi (D^{\circ})=(\phi (D))^{\circ}$

```

[[Wiki - 平面区域的面积]]

 [[Wiki - 紧致集合]]

#### 引理证明

引理一：
取分割 $\pi=\{I_{j}\}$，每个块为正方体，边长为 $\delta_{j}$ 由拟微分中值定理 [[Wiki - 拟微分中值定理]]，


$$
|\phi(u)-\phi(u_{j})|<\operatorname*{sup}\:\|\mathrm{d}\phi\||u-u_{j}|\leqslant\operatorname*{sup}\:\|\mathrm{d}\phi\|\sqrt{n}\delta_{j},
$$

所以 $\phi(I_j)$ 包含在以 $\phi(u_j)$ 为球心，sup $\|$ d $\phi\|\sqrt n\delta_j$ 为半径的球体中，它的外体积

$$\sigma^+(\phi(I_j))\leqslant C\delta_j^n.$$

求和即证


引理二：

 
