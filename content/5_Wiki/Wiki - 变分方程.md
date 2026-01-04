---
aliases:
  - Variational Equation
info: 描述解对初值和参数偏导数的微分方程
date: 2025-12-29-星期一 16:35
update:
tags:
  - 微分方程/ODE
  - wiki/month10
  - wiki/year2023
id: wiki20251229163500
banner: "![[astrowalk.gif]]"
---


## The 1 变分方程 (Variational Equation)

```ad-definition
title: Definition

对于微分方程
$$
\frac{dy}{dx} = f(x, y, \lambda), \quad y(x_0) = y_0
$$
设其解为 $y = \varphi(x; x_0, y_0, \lambda)$。
若函数 $f$ 满足一定的光滑性条件，解 $\varphi$ 对初值 $x_0, y_0$ 和参数 $\lambda$ 的偏导数 $\frac{\partial \varphi}{\partial x_0}, \frac{\partial \varphi}{\partial y_0}, \frac{\partial \varphi}{\partial \lambda}$ 所满足的线性微分方程，称为原方程关于初值和参数的**变分方程**。
```

### 1. 关于初值 $y_0$ 的变分方程
令 $z = \frac{\partial \varphi}{\partial y_0}$，则 $z$ 满足如下一阶线性微分方程及初值条件：
$$
\begin{cases}
\frac{dz}{dx} = \frac{\partial f}{\partial y}(x, \varphi, \lambda) z \\
z(x_0) = 1
\end{cases}
$$

### 2. 关于初值 $x_0$ 的变分方程
令 $z = \frac{\partial \varphi}{\partial x_0}$，则 $z$ 满足：
$$
\begin{cases}
\frac{dz}{dx} = \frac{\partial f}{\partial y}(x, \varphi, \lambda) z \\
z(x_0) = -f(x_0, y_0)
\end{cases}
$$

### 3. 关于参数 $\lambda$ 的变分方程
令 $z = \frac{\partial \varphi}{\partial \lambda}$，则 $z$ 满足非齐次线性微分方程：
$$
\begin{cases}
\frac{dz}{dx} = \frac{\partial f}{\partial y}(x, \varphi, \lambda) z + \frac{\partial f}{\partial \lambda}(x, \varphi, \lambda) \\
z(x_0) = 0
\end{cases}
$$

### Derivation (推导)

这些方程可以通过对等价的积分方程两边分别关于 $y_0, x_0, \lambda$ 求导得到。
例如，对于关于 $\lambda$ 的变分方程，考虑积分方程：
$$
\varphi(x) = y_0 + \int_{x_0}^x f(t, \varphi(t), \lambda) dt
$$
对 $\lambda$ 求偏导：
$$
\frac{\partial \varphi}{\partial \lambda} = \int_{x_0}^x \left[ \frac{\partial f}{\partial y} \frac{\partial \varphi}{\partial \lambda} + \frac{\partial f}{\partial \lambda} \right] dt
$$
这就对应于上述微分方程的积分形式。

### Significance

变分方程将非线性方程解的灵敏度分析转化为线性微分方程的求解问题。它在研究解的稳定性、摄动理论以及数值计算中具有重要意义。

[[Wiki - 解对初值和参数的连续可微性定理]]
[[Wiki - 线性微分方程组]]
