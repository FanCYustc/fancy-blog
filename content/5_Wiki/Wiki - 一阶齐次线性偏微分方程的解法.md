---
aliases: 
info: 
date: 2023-12-19-星期二 17:49
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 微分方程/PDE
  - 微分方程/微分方程组
id: wiki20231219174931
banner: "![[astrowalk.gif]]"
---
---

## Def 1 特征方程

对于齐次一阶 PDE

$$
\sum_{i=1 }^{n} A_{i}(x_{1},\dots,x_{n}) \frac{{\partial u}}{\partial x_{i}}=0
$$

其特征方程是

$$
\frac{dx_{1}}{A_{1}(x_{1},\dots,x_{n})}=\dots= \frac{dx_{n}}{A_{n}(x_{1},\dots,x_{n})}
$$
共 n-1 个特征方程

## The 1 解法

```ad-theorem
title: Theorem 1

一阶齐次 PDE 有 n-1 个特征方程，就转化成了 n-1 阶微分方程组，可以导出 n-1 个相互独立的首次积分  $\varphi_{1}(x_{1},\dots,x_{n})=C_{1},\dots,\varphi_{n-1}(x_{1},\dots x_{n})=C_{n-1}$

则一阶齐次 PDE 的通解为

$$
u=\Phi(\varphi_{1}(x_{1},\dots,x_{n}),\dots,\varphi_{n-1}(x_{1},\dots,x_{n}))
$$

其中 $\Phi$ 为 n-1 元连续可微函数

```

[[Wiki - 首次积分]]
### Proof

首次积分 $\varphi_{i}$ 满足原偏微分方程，且 $\Phi(\varphi_{1},\dots,\varphi_{n-1})$ 也是首次积分，也为原偏微分方程的解

另一方面每个解都是首次积分，都可表示称如上形式


