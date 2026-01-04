---
aliases: 
info: 对称域的一种全纯开拓
date: 2024-05-21-星期二 08:53
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析/全纯开拓
id: wiki20240521085357
banner: "![[astrowalk.gif]]"
---
---

## The 1 Schwartz 对称原理

```ad-theorem
title: Theorem 1
```
域 [[Wiki - 连通区域#Definition 2 区域]] D **关于实轴对称**，如果 $f$ 满足

(i) $f$ 在 $D\bigcap \{ z\in \boldsymbol{C}:$ Im $z> 0\}$ 上全纯[[Wiki - 全纯函数]]； 

(ii) $f$ 在 $D\bigcap \{ z\in \boldsymbol{C}:$ Im $z\geqslant 0\}$ 上连续；（连续到边界）

(iii) $f(D\cap R)\subset R$,


那么
$$F(z)=\begin{cases}f(z)\:,&z\in D\cap\:\langle z\in C;\:\mathrm{Im}z\geqslant0\rangle\:;\\\overline{f(\overline{z})}\:,&z\in D\cap\:\langle z\in C;\:\mathrm{Im}z<0\rangle\end{cases}$$
便是 $f$ 在 $D$ 上的全纯开拓. [[Wiki - 全纯开拓]]



### Proof

证明见史济怀复变函数 [[Book - 复变函数]] 6.1 节 Schwartz 对称原理的证明

先证 F 在下半平面 $D \cap \{z:Im z<0\}$ 导数存在故全纯；

由 panleve 原理 [[Wiki - Panleve原理]]，只需再证 F 在实轴上连续，故得  F 在 D 上全纯

## Cal 1 推广 1 

对称轴不一定是实轴：

```ad-theorem
title: Theorem 2

f 位于**直线 l 的一侧**，设 $f\in H (\Omega)\cap C(\Omega \cup \gamma)$，其中 $\gamma$ 是 $\partial \Omega$ 包含的一条 l 上的线段，且 f 在 $\gamma$ 上的**取值落在某条直线** L 上。则存在 $F\in H (\Omega \cup \gamma \cup \Omega')s.t.F=f , z\in \Omega$，其中 $\Omega'$ 为 $\Omega$ 关于 $\gamma$ 的对称域。

且若 $z_{1},z_{2}$ 关于 l 对称，那么 $F(z_{1}),F(z_{2})$ 关于 L 对称（事实上给出了 F 的构造方法）

```


## Cal 2 推广 2

可以关于圆周对称：

```ad-theorem
title: Theorem 3
```
设 $\boldsymbol{C}_{\infty}$ 中的域 $D$ 关于圆周 $\gamma=\left\{z\in C;|z\text{一}z_0|=r\right\}$ 对称，如果 f 满足：
(i) $f$ 在 $D\bigcap\boldsymbol{C}_\infty^+(\gamma)$ 上单叶全纯 [[Wiki - 单叶性域]]；

(ii) $f$ 在 $D\bigcap(\boldsymbol{C}_\infty^+(\boldsymbol{\gamma})\bigcup\boldsymbol{\gamma})$ 上单叶连续；

(iii) $f ( D\bigcap \gamma ) \subset \Gamma$, 这里 , $\Gamma=\left\{w\in\boldsymbol{C}:|w-w_{0}|=\rho\right\}$ 是一个圆周；

(iv) 对于任意 $z\in D\bigcap\boldsymbol{C}_\infty^+(\boldsymbol{\gamma}),f(\boldsymbol{z})\neq w_0$，

那么 $f$ 能双全纯地开拓到 $D$ 上，成为 $D$ 上的**单叶全纯函数** $F,F$
将 $D$ 中关于 $\gamma$ 对称[[Wiki - 复平面圆周的对称点]]的两点映为 $F(D)$ 中关于 $\Gamma$ 对称的两点.



### Proof

设 $\Omega,\Omega',\Gamma$ 分别为 D 关于圆周对称的两部分和与圆周 $\gamma$ 重合的部分，定义

$$
F(z)=\begin{cases}
f(z), z\in \Omega \cup \Gamma=D\cap C_{\infty}^{+}(\gamma)\cup\Gamma \\
w_{0 } + \frac{R^{2}}{\overline{f\left(  \frac{r^{2}}{\overline{z}-\overline{z_{0}}} \right)}- \overline{w_{0}}} , z\in \Omega'
\end{cases}
$$

