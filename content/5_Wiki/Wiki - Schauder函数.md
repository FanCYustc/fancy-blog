---
aliases:
  - 帐篷函数
info:
date: 2025-12-19-星期五 12:35
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 泛函分析
  - 随机过程/brown运动
  - 数学分析/函数
id: wiki20251219123500
banner: "![[astrowalk.gif]]"
---
# Wiki - Schauder函数

## 1. 定义
**Schauder 函数 (Schauder Functions)** 是 [[Wiki - Haar函数]] 的积分，其图像形状像帐篷，因此有时也称为**帐篷函数 (Tent Functions)**。

对于 $n \ge 0, k \in I(n)$，Schauder 函数 $S_k^{(n)}(t)$ 定义为：
$$
S_k^{(n)}(t) = \int_0^t H_k^{(n)}(u) du, \quad 0 \le t \le 1
$$
其中 $H_k^{(n)}$ 是 Haar 函数。

具体地，$S_k^{(n)}(t)$ 是一个**小帐篷**：
*   **支撑集**：$[\frac{k-1}{2^n}, \frac{k+1}{2^n}]$。
*   **峰值**：在中心点 $t = k/2^n$ 处达到峰值 $2^{-(n+1)/2}$。
*   **形状**：在支撑集内是分段线性的连续函数，在支撑集外为 0。

基函数 $S_1^{(0)}(t) = \int_0^t 1 du = t$。

## 2. 在布朗运动构造中的应用

Schauder 函数系构成了 $C[0, 1]$ 空间的一组基（Schauder Basis）[[Wiki - 内积空间的正交基]]。

根据 **Lévy-Ciesielski 构造**， 标准布朗运动 $B_t$ 可以几乎必然地展开为 Schauder 函数的随机级数：
$$
B_t = \sum_{n=0}^\infty \sum_{k \in I(n)} Z_k^{(n)} S_k^{(n)}(t)
$$
其中 $\{Z_k^{(n)}\}$ 是独立同分布的标准正态随机变量序列 $N(0, 1)$。

[[Wiki - brown运动]]
## 3. 性质

*   **非重叠性**：对于固定的 $n$，不同 $k$ 的 Schauder 函数 $S_k^{(n)}$ 具有不重叠的支撑集（除了端点）。
*   **模连续性**：由于级数收敛的一致性，通过控制系数 $Z_k^{(n)}$ 的增长速度，可以证明构造出的 $B_t$ 具有连续性及特定的 Hölder 连续性模。
