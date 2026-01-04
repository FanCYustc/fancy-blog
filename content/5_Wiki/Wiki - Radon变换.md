---
aliases:
  - 投影切片定理
info: Radon变换的定义及其与CT成像的关系
date: 2025-12-25-星期四 11:05
update: 2025-12-25-星期四 11:05
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析
  - 数学分析/积分
id: wiki20251225110502
banner: "![[astrowalk.gif]]"
---

## Def 1 Radon 变换

```ad-definition
title: Definition 1 (Radon Transform)

设 $f$ 是 $\mathbb{R}^d$ 上的速降函数。
*   **在 $\mathbb{R}^2$ 中**: Radon 变换 $\mathcal{R}(f)$ 定义在直线集上。对于由法向量 $\gamma \in S^1$ 和距离参数 $t \in \mathbb{R}$ 确定的直线 $L_{t,\gamma}$，
    $$ \mathcal{R}(f)(t, \gamma) = \int_{L_{t,\gamma}} f(x) d\sigma(x) $$
*   **在 $\mathbb{R}^3$ 中**: Radon 变换通常定义为在**平面**上的积分。对于由法向量 $\gamma \in S^2$ 和距离参数 $t \in \mathbb{R}$ 确定的平面 $P_{t,\gamma}$，
    $$ \mathcal{R}(f)(t, \gamma) = \int_{P_{t,\gamma}} f(x) d\sigma(x) $$
```
[[Wiki - Schwartz空间]]

[[Wiki - X射线变换]]


## Thm 1 投影切片定理

```ad-theorem
title: Theorem 1 (Projection-Slice Theorem)

设 $f \in \mathcal{S}(\mathbb{R}^d)$。令 $\widehat{\mathcal{R}(f)}(\rho, \gamma)$ 表示 Radon 变换 $\mathcal{R}(f)(t, \gamma)$ 关于变量 $t$ 的一维 Fourier 变换。则有：
$$ \widehat{\mathcal{R}(f)}(\rho, \gamma) = \hat{f}(\rho \gamma) $$
```

### 几何解释

该定理表明：
函数 $f(x)$ 的 **Radon 变换**（投影）的一维 Fourier 变换，等于原函数 $f(x)$ 的 **$d$ 维 Fourier 变换** 在通过原点的切片（slice）上的值。

这个定理是利用 Radon 变换数据重构原函数 $f$ 的核心工具。