---
aliases:
  - Canonical Process
  - 典范过程
info:
date: 2025-12-19-星期五 12:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程
  - 随机分析
id: wiki20251219122000
banner: "![[astrowalk.gif]]"
---
# Wiki - 坐标映射过程

## 1. 定义
**坐标映射过程 (Coordinate Mapping Process)** 是定义在路径空间（如 $\Omega = C[0, \infty)$ 或 $\mathbb{R}^{[0, \infty)}$）上的最自然的随机过程。

设样本空间 $\Omega$ 为函数空间，其中的样本点 $\omega$ 本身就是一个函数（即一条路径）。坐标映射过程 $B = \{B_t\}_{t \ge 0}$ 定义为：
$$
B_t(\omega) = \omega(t)
$$
即：过程在时刻 $t$ 的值，就是路径 $\omega$ 在 $t$ 处的函数值。

## 2. 作用
坐标映射过程使得我们可以直接在函数空间上研究随机过程。
*   **典范空间 (Canonical Space)**：配备了坐标映射过程及其生成的 $\sigma$ -代数 [[Wiki - σ-代数]]的空间。
*   **Wiener 测度**：在 $C[0, \infty)$ 上，使得坐标映射过程 $B_t$ 成为标准布朗运动的概率测度即为 [[Wiki - Wiener测度]]。

## 3. 过滤

坐标映射过程生成的自然过滤（Natural Filtration）$\mathcal{F}_t^B = \sigma(B_s : 0 \le s \le t)$ 也就是由直至时刻 $t$ 的所有柱集 [[Wiki - 柱集]]生成的 $\sigma$ -代数。这代表了“观测到时刻 $t$ 为止的路径信息”。
