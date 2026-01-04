---
aliases: 
info: 首次积分降阶
date: 2023-12-14-星期四 10:21
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 微分方程/ODE
  - 数学分析/积分
id: wiki20231214102123
banner: "![[astrowalk.gif]]"
---
---

## The 1 降阶

```ad-theorem
title: Theorem 1

微分方程组

$$
\frac{dy_{i}}{dx}=f_{i}(x,y_{1},\dots,y_{n}),i=1,\dots,n
$$

若已知一个首次积分，则可以把微分方程组降低一阶

```

[[Wiki - 首次积分]]
### Proof

由定义 $\nabla \Phi\neq 0$, 不妨设 $\frac{{\partial \Phi}}{\partial y_{n}}\neq 0$，则由隐映射定理 [[Wiki - 隐函数存在定理]]

[[Wiki - 隐映射定理]]，存在 g 使得

$$
y_{n}=g(x,y_{1},\dots,y_{n-1},C)
$$

且有

$$\left.\left\{\begin{array}{ccc}\frac{\partial g}{\partial x}=-\frac{\partial\Phi}{\partial x}\Big/\frac{\partial\Phi}{\partial y_n},&&\\\\\frac{\partial g}{\partial y_i}=-\left.\frac{\partial\Phi}{\partial y_i}\Big/\frac{\partial\Phi}{\partial y_n},\right(i=1,\cdots,n-1).\end{array}\right.\right. $$

设 n-1 阶微分方程组

$$
\frac{dy_{i}}{dx}=f_{i}(x,y_{1},\dots,y_{n-1},g(x,y_{1},\dots,y_{n-1},C)),i=1,\dots,n-1
$$

有解 $y_{i}=u_{i}(x),i=1,\dots,n-1$

代入验证 $y_{i}=u_{i}(x),i=1,\dots,n-1;y_{n}=g(x,u_{1}(x),\dots,u_{n-1}(x),C)$ 为原微分方程组的解


## The 2 
```ad-theorem
title: Theorem 2

若能找到某区域 $G_{1}$ 内n 个相互独立的首次积分（jacobi 行列式不为 0），则不断降阶可得

通解

$$
y_{i}=\varphi_{i}(x,C_{1},\dots,C_{n}),i=1,\dots,n
$$

$C_{1},\dots,C_{n}$ 为在允许范围内的任意常数

```

[[Wiki - 雅各比矩阵]]

### Proof

需要首次积分的存在性[[Wiki - 首次积分的存在性]]
