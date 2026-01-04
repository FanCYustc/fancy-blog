---
aliases:
  - 常数变易法
info: 齐次和非齐次一阶线性方程的常数变易法
date: 2023-09-14-星期四 10:29
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 微分方程/ODE
id: wiki20230914102931
banner: "![[astrowalk.gif]]"
---
---

## 非齐次解法

对
$$
\frac{dy}{dx}+p(x)y=q(x)
$$
引入积分因子 $\mu=e^{\int p(x) \, dx}$

$$
e^{\int p(x) \, dx }dy+ye^{\int p(x) \, dx }p(x)=q(x)dx
$$
```ad-important

积分得
$$
y=e^{-\int p(x) \, dx }\left( C+\int q(x)e^{\int p(x) \, dx } \, dx  \right)
$$


```

```ad-attention

**变量要写清楚：**

$$
y(x)=e^{-\int _{x_{0}}^{x}p(t) \, dt }\left( C+\int _{x_{0}}^{x}q(t)e^{\int _{x_{0}}^{t}p(s) \, ds } \, dt  \right)
$$



```

## 常数变易法

取齐次方程的解 $y=Ce^{-\int p(x) \, dx}$，变常数 C 为 $C(x)$

代入得

$$
C'(x)e^{-\int p(x) \, dx }=q(x)
$$

解得
$$
C(x)=\int q(x)e^{\int p(x) \, dx } \, dx+C 
$$

[[Wiki - 常微分方程的解]]