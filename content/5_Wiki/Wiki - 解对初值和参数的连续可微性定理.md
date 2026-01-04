---
aliases:
  - 解的可微性定理
info: 微分方程解对参数和初值的可微性
date: 2025-12-29-星期一 16:38
update:
tags:
  - 微分方程/ODE
  - wiki/year2023
  - wiki/month10
id: wiki20251229163800
banner: "![[astrowalk.gif]]"
---

## The 1 解对初值和参数的连续可微性定理

```ad-theorem
title: Theorem 3

设 $f(x, y, \lambda)$ 在区域
$$
G: \quad |x| \leqslant a, \quad |y| \leqslant b, \quad |\lambda - \lambda_0| \leqslant c
$$
上连续，而且对 $y$ 和 $\lambda$ 有连续的偏微商（即 $\frac{\partial f}{\partial y}, \frac{\partial f}{\partial \lambda}$ 连续）。
则微分方程
$$
\frac{dy}{dx} = f(x, y, \lambda), \quad y(0) = 0
$$
的解 $y = \varphi(x, \lambda)$ 在区域
$$
D: \quad |x| \leqslant h, \quad |\lambda - \lambda_0| \leqslant c
$$
上是连续可微的（即对 $x$ 和 $\lambda$ 有连续偏导数）。
其中 $h = \min(a, \frac{b}{M})$，$M$ 为 $|f|$ 在 $G$ 上的上界。
```


### Proof Strategy

1.  **转化为积分方程**：
    $$
    y = \int_0^x f(t, y, \lambda) dt
    $$

2.  **构造皮卡序列**[[Wiki - cauchy初值定理|皮卡序列]] ：
    $$
    \varphi_{k+1}(x, \lambda) = \int_0^x f(t, \varphi_k(t, \lambda), \lambda) dt
    $$
    根据[[Wiki - 解对初值和参数的连续性]]，该序列一致收敛于解 $\varphi(x, \lambda)$。

3.  **偏导数序列的一致收敛性**：
    利用归纳法证明 $\varphi_k$ 对 $\lambda$ 可微，且
    $$
    \frac{\partial \varphi_{k+1}}{\partial \lambda} = \int_0^x \left[ \frac{\partial f}{\partial y}(t, \varphi_k, \lambda) \frac{\partial \varphi_k}{\partial \lambda} + \frac{\partial f}{\partial \lambda}(t, \varphi_k, \lambda) \right] dt
    $$
    利用柯西收敛准则证明序列 $\frac{\partial \varphi_k}{\partial \lambda}$ 在 $D$ 上一致收敛。由于 $\frac{\partial f}{\partial y}$ 和 $\frac{\partial f}{\partial \lambda}$ 有界且 $\varphi_k$ 一致收敛 [[Wiki - 一致收敛]]，可以证明 $\left| \frac{\partial \varphi_{k+s}}{\partial \lambda} - \frac{\partial \varphi_k}{\partial \lambda} \right|$ 趋于 0。

4.  **极限函数的性质**：
    由一致收敛定理可知，极限函数 $\varphi (x, \lambda)$ 对 $\lambda$ 的偏导数存在且连续，即：
    $$
    \frac{\partial \varphi}{\partial \lambda} = \lim_{k \to \infty} \frac{\partial \varphi_k}{\partial \lambda}
    $$

### 推论
若 $f(x, y)$ 在区域 $R$ 上连续且对 $y$ 有连续偏微商，则初值问题 $\frac{dy}{dx} = f(x, y), y(x_0) = \eta$ 的解 $\varphi(x, \eta)$ 对初值 $\eta$ 也是连续可微的。

[[Wiki - 变分方程]]、 [[Wiki - 解对初值和参数的连续性]]
