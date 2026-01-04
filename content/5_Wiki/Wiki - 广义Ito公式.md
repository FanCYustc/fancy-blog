---
aliases:
  - Generalized Ito Formula
  - 凸函数Ito公式
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229101005
banner: "![[astrowalk.gif]]"
---


经典的 Itô 公式要求函数 $f$ 属于 $C^2$ 类（二阶连续可微）。然而，在许多应用中（如 [[Wiki - Tanaka公式]]），我们需要处理凸函数（Convex Functions），它们通常只有二阶分布导数（测度）。**广义 Itô 公式** 正是为此而生。

## 1. 凸函数的二阶导数测度

若 $f: \mathbb{R} \to \mathbb{R}$ 是凸函数 [[Wiki - 凸函数]]，则：
1.  其左导数 $D^- f(x)$ 存在且非降。
2.  其二阶导数在广义函数意义下是一个非负 Radon 测度  $\mu$，满足 $\mu([a, b)) = D^- f(b) - D^- f(a)$。

## 2. 公式陈述

```ad-theorem
title: 广义 Itô 公式 (Theorem 6.22)

设 $f$ 为凸函数，$\mu$ 为其二阶导数测度。对于布朗运动 $W_t$，有：
$$
f(W_t) = f(W_0) + \int_0^t D^- f(W_s) dW_s + \int_{-\infty}^{\infty} L_t(a) \mu(da)
$$
其中 $L_t(a)$ 是布朗局部时间。
```

[[Wiki - 布朗局部时间]]
### 解释

*   **积分项**: 第一项 $\int D^- f dW$ 类似于经典公式中的 $\int f' dW$。
*   **修正项**: 第二项 $\int L_t(a) \mu(da)$ 替代了经典公式中的 $\frac{1}{2} \int f''(W_s) ds$。
    *   如果 $f \in C^2$，则 $\mu(da) = f''(a) da$，且根据占位时间公式，$\int L_t(a) f''(a) da = \frac{1}{2} \int_0^t f''(W_s) ds$，这与经典公式一致。
    *   如果 $f(x) = |x-a|$，则 $\mu = 2\delta_a$（两倍 Dirac 测度），积分变为 $2L_t(a)$，即得 [[Wiki - Tanaka公式]]。

## 推广：半鞅

该公式可以推广到连续半鞅 [[Wiki - 连续半鞅]] $X_t = X_0 + M_t + V_t$ ：
$$
f(X_t) = f(X_0) + \int_0^t D^- f(X_s) dM_s + \int_0^t D^- f(X_s) dV_s + \int_{-\infty}^{\infty} \Lambda_t(a) \mu(da)
$$
其中 $\Lambda_t(a)$ 是 [[Wiki - 半鞅的局部时间]]。

[[Wiki - 随机积分的定义]]