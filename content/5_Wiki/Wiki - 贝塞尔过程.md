---
aliases:
  - Bessel Process
info:
date: 2025-12-26-星期五 17:05
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机过程
  - 随机过程
id: wiki20251226170501
banner: "![[astroflow.gif]]"
---

**贝塞尔过程 (Bessel Process)** 是一类取值于非负实数集 $[0, \infty)$ 的扩散过程，它源于高维布朗运动的径向部分（即离原点的距离）。

## 1. 定义与 SDE

设 $B_t = (B_t^{(1)}, \dots, B_t^{(d)})$ 是一个 $d$-维标准布朗运动 ($d \ge 1$, 整数)。
定义 **$d$-维贝塞尔过程** $\rho_t$ 为 $B_t$ 的欧几里得范数：
$$ \rho_t = |B_t| = \sqrt{\sum_{i=1}^d (B_t^{(i)})^2} $$

通过应用 [[Wiki - Ito公式]]，我们可以导出 $\rho_t$ 满足的随机微分方程 (SDE)。对于 $t$ 使得 $\rho_t > 0$ ：
$$ d\rho_t = \sum_{i=1}^d \frac{B_t^{(i)}}{\rho_t} dB_t^{(i)} + \frac{d-1}{2\rho_t} dt $$

令 $W_t = \sum \int_0^t \frac{B_s^{(i)}}{\rho_s} dB_s^{(i)}$。根据 [[Wiki - Levy字符化定理]]，可以验证 $W_t$ 是一个一维布朗运动 [[Wiki - brown运动]]。

因此，贝塞尔过程满足 SDE：
$$ d\rho_t = dW_t + \frac{d-1}{2\rho_t} dt $$

### 漂移项分析

项 $\frac{d-1}{2\rho_t} dt$ 称为**贝塞尔漂移**。
*   当 $d=1$ 时，漂移为 0，$\rho_t = |B_t|$ 是反射布朗运动（Reflected Brownian Motion）。
*   当 $d > 1$ 时，漂移项为正，表示过程倾向于被“推离”原点 0（这也是为什么高维空间体积更大的直观体现）。

## 2. 广义贝塞尔过程 ($BES^\delta$)

上述定义可以推广到非整数维度。对于任意实数 $\delta \ge 0$，满足以下 SDE 的非负过程 $X_t$ 称为**指数 $\delta$ 的贝塞尔过程**，记为 $BES^\delta$：
$$ dX_t = dW_t + \frac{\delta-1}{2X_t} dt $$
其中 $\delta$ 称为维度参数。

## 3. 性质：原点可达性

贝塞尔过程的一个核心性质是它是否会触及原点 $0$（Recurrence/Transience）。这取决于维度 $\delta$ 

*   **$\delta < 2$:** 原点是**可达的 (Reaching 0)**。过程会反复击中 0 点。
    *   特别地，$\\delta=1$ (反射布朗运动) 也是如此。
*   **$\delta \ge 2$:** 原点是**极集 (Polar)**，即过程几乎必然（a.s.）永远不会触及 0 点。
    *   这意味着 2 维及以上的布朗运动永远不会回到出发的原点（如果从非零点出发，或者出发后立即离开）。

