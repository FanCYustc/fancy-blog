---
aliases:
  - 奇解是通解的包络
info: 奇解是通解的包络
date: 2023-10-24-星期二 14:57
update: 2025-12-30-星期二 15:45
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231024145742
banner: "![[astrowalk.gif]]"
---
---

## Def 1 包络

```ad-definition
title: Definition 1

平面上有一条**连续可微**的曲线 $\Gamma$. 如果对任意一点 $q\in \Gamma$, 在曲线族 $K(C):V(x,y,C)=0$ 中都有一条曲线 $K(C^*)$ 通过 $q$ 点并在该点与 $\Gamma$ 相切，而且 $K (C^*)$ 在 $q$ 点的某一邻域内不同于 $\Gamma$ : 则称曲线 $\Gamma$ 为曲线族 $K(C)$ 的一支**包络**. 

```
*注：此定义不要求曲线族中的每一条曲线都与包络相切，与一般微分几何定义稍有不同，但在微分方程应用上较方便。*

[[Wiki - 映射的微分]]
## The 1 通解与奇解的关系

```ad-theorem
title: Theorem 1

设微分方程

$$
F\Big(\:x,y\:,\frac{dy}{dx}\Big)\:=\:0\:,
$$

 有通积分为

$$
U(x,y,C)=0.
$$

又设 (积分) 曲线族有包络为

$$
\Gamma:\quad y=\varphi(x)\:,\quad(x\in J).
$$

则包络 $y=\varphi(x)$ 是微分方程的奇解.

```

[[Wiki - 奇解]]
### Proof

在 $\Gamma$ 上任取一点 $(x_0, y_0)$，其中 $y_0 = \varphi(x_0)$。

由包络的定义可知，曲线族 $U(x, y, C) = 0$ 中有一条曲线 $y = u(x, C_0)$ 在 $(x_0, y_0)$ 点与 $y = \varphi(x)$ 相切，即满足：
$$
\varphi(x_0) = u(x_0, C_0), \quad \varphi'(x_0) = u'_x(x_0, C_0)
$$

因为 $y = u(x, C_0)$ 是原微分方程的一个解，所以：
$$
F\left(x_0, u(x_0, C_0), u'_x(x_0, C_0)\right) = 0
$$

代入相切条件，得：
$$
F(x_0, \varphi(x_0), \varphi'(x_0)) = 0
$$

由于 $x_0 \in J$ 是任意给定的，这说明 $y = \varphi(x)$ 满足微分方程，即为微分方程的解。

结合包络定义中“在 $q$ 点的某一邻域内不同于 $\Gamma$”的条件，可知该解与通解中的特定曲线相切但不重合，符合奇解的定义。

**结论**：求微分方程的奇解归结为求其通积分的包络。


