---
aliases:
  - 复数域的无穷远点
info: 无穷远点的构造
date: 2024-03-14-星期四 10:01
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 几何学
  - 复分析
id: wiki20240314100143
banner: "![[astrowalk.gif]]"
---
---

在射影几何中有涉及 [[Wiki - 射影平面]]、[[Wiki - 射影空间与齐次坐标]]

## Def 1 无穷

$z+\infty=\infty, z\cdot \infty=\infty$

定义 $\frac{1}{0}=\infty, \frac{1}{\infty}=0$，就得到拓展平面 $\mathbb{C}_{\infty}$

注意 $0\cdot \infty,\infty+\infty,\infty-\infty$ 以及无穷的辐角不确定

## Def 2Riemann 球面

为了将无穷远与 $\mathbb{C}$ 其他点统一:

![[Riemann球面.bmp]]

NP 与平面的交点代表映射到的复数 z。这样就构造了一个 $S^{2} / \{N\}\to \mathbb{C}_{\infty}$ 的一一映射，其中 $S^{2}=\{(x_{1},x_{2},x_{3}): x_{1}^{2}+x_{2}^{2}+x_{3}^{2}=1\}$

若已知 $P(x_{1},x_{2},x_{3})$，则 $z= \frac{{x_{1}+ix_{2}}}{1-x_{3}}$

## Def 3 无穷远的距离

在 $\mathbb{C}_{\infty}$ 上定义距离，对 $z, w\in \mathbb{C}_{\infty}$，对应 $S^{2}$ 上 $(x_{1},x_{2}x_{3}),(y_{1},y_{2},y_3)$， 定义
$$
\rho(z,w)=\sqrt{ (x_{1}-y_{1})^{2}+(x_{2}-y_{2})^{2}+(x_{3}-y_{3})^{2} }
$$

经计算，
$$
\rho(z,w)^{2}= \frac{{4|z-w|^{2}}}{(|z|^{2}+1)(|w|^{2}+1)}
$$

## Def 4 无穷远的邻域

定义 $D(\infty,R)=\{z\in \mathbb{C}_{\infty}:|z|>R\}$ 为无穷远的 R 邻域；

$D_{*}(\infty, R)=\{z\in \mathbb{C}: |z|>R\}$ 为 $\infty$ 的去心 R-邻域

