---
aliases: 
info: 
date: 2024-04-28-星期日 10:04
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/级数
  - 复分析/全纯函数
  - 收敛
id: wiki20240428100419
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Laurent 级数

```ad-definition
title: Definition 1


$$\begin{aligned}&\sum_{n=-\infty}^\infty a_n(z-z_0)^n=\sum_{n=0}^\infty a_n(z-z_0)^n+\sum_{n=1}^\infty a_{-n}(z-z_0)^{-n}\end{aligned}$$

称为 Laurent 级数，如果正幂次和负幂次部分都收敛，则级数收敛

```

其中
$$
a_{n} = \frac{1}{2\pi i} \int _{|\xi-z_{0}|=\rho} \frac{f(\xi)}{(\xi-z_{0})^{n+1}} \, d\xi \, ,r<\rho<R
$$

在[[Wiki - 全纯函数的Taylor展开]]基础上

## Def 2 收敛区域

```ad-definition
title: Definition 1

```
参考 [[Wiki - 全纯函数的幂级数表示]]，设 $\sum a_{n}(z-z_{0})^{n}$ 的收敛半径为 R，对 $\sum a_{-n}(z-z_{0})^{-n}$ ，设当 $| \frac{1}{z-z_{0}}|<\rho$ 时级数收敛，则当 $|z-z_{0}|> \frac{1}{\rho}=r$ 时级数收敛。

则 Laurent 级数的收敛区域为**收敛圆环** $\{z\in C: r<|z-z_{0}|<R\}$，R 和 r 的求法同幂级数收敛半径的求法 [[Wiki - 全纯函数的幂级数表示#The 1 收敛半径计算]]

