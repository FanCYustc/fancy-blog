---
aliases:
info: Theorem 4.2 in Karatzas & Shreve
date: 2025-12-26-星期五 11:00
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/鞅论
id: wiki20251226110001
banner: "![[astroflow.gif]]"
---

**连续鞅的积分表示 (Integral Representation of Continuous Martingales)** 定理揭示了任意连续局部鞅与布朗运动之间的深层联系：在适当扩充概率空间的前提下，几乎所有的连续局部鞅都可以视为布朗运动的随机积分。

## 1. 定理陈述 (Theorem Statement)

**来源:** Karatzas & Shreve, Theorem 3.4.2

设 $M = \{M_t = (M_t^{(1)}, \dots, M_t^{(d)}), \mathcal{F}_t; 0 \le t < \infty\}$ 是一个定义在 $(\Omega, \mathcal{F}, P)$ 上的连续局部鞅向量 [[Wiki - 局部鞅]]。

假设其**交叉变差 (Cross-variation)** $\langle M^{(i)}, M^{(j)} \rangle_t(\omega)$ 对于几乎所有的 $\omega$ 都是关于时间 $t$ 的绝对连续函数。[[Wiki - 二次变差|协变差]]

那么，存在一个扩张的概率空间 $(\tilde{\Omega}, \tilde{\mathcal{F}}, \tilde{P})$ [[Wiki - 概率空间]]，在其上定义了一个 $d$-维布朗运动 $W = \{W_t, \tilde{\mathcal{F}}_t\}$ [[Wiki - brown运动]]，以及一个 $d \times d$ 的适应矩阵过程 $X = \{X_t^{(i,k)}\}$，满足：
$$ \tilde{P} \left[ \int_0^t (X_s^{(i,k)})^2 ds < \infty \right] = 1, \quad \forall t < \infty $$
使得在 $\tilde{P}$-几乎必然的意义下，有如下表示：
$$ M_t^{(i)} = \sum_{k=1}^d \int_0^t X_s^{(i,k)} dW_s^{(k)}, \quad 1 \le i \le d $$
同时，交叉变差满足：
$$ \langle M^{(i)}, M^{(j)} \rangle_t = \sum_{k=1}^d \int_0^t X_s^{(i,k)} X_s^{(j,k)} ds $$
[[Wiki - 局部鞅的随机积分]]
### 理解与意义

*   **逆向思维:** 通常我们通过积分 $\int X dW$ 构造鞅。这个定理提供了逆向的视角：只要交叉变差足够“平滑”（绝对连续），任何鞅本质上都是布朗运动的积分。
*   **空间扩张的必要性:** 原概率空间可能没有足够的随机性来构造一个独立的布朗运动（特别是当 $M$ 退化时），因此需要通过乘积空间引入额外的随机源。

### 证明思路概要

1.  **构造密度矩阵:** 由于 $\langle M \rangle$ 绝对连续 [[Wiki - 随机过程的连续性]]，存在密度过程 $Z_t$ 使得 $d\langle M \rangle_t = Z_t dt$。
2.  **矩阵分解:** 对半正定矩阵 $Z_t$ 进行对角化或分解 [[Wiki - 正定矩阵]]。
3.  **构造布朗运动:** 利用 $M$ 的部分信息加上扩充空间引入的独立布朗运动，拼凑出所需的 $W$。当 $M$ 的“波动率”消失时，使用扩充的布朗运动来填充；当 $M$ 有波动时，通过标准化 $M$ 的增量来获得布朗运动部分。

此定理是理解随机微分方程弱解存在性的重要工具。
