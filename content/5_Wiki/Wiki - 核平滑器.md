---
aliases:
  - Nadaraya-Watson Estimator
info:
date: 2025-12-10-星期三 16:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/非参方法
  - 统计学习
id: wiki20251210160000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 核平滑器 (Kernel Smoother)

核平滑器是一类非参数回归方法，它通过对局部邻域内的数据进行加权平均来估计目标点 $x_0$ 处的函数值 $f(x_0)$。权重由核函数 $K_\lambda(x_0, x_i)$ 决定，距离 $x_0$ 越近的点权重越大。

### Nadaraya-Watson 估计
最基础的核平滑器是 Nadaraya-Watson 估计：
$$
\hat{f}(x_0) = \frac{\sum_{i=1}^N K_\lambda(x_0, x_i) y_i}{\sum_{i=1}^N K_\lambda(x_0, x_i)}
$$
其中 $K_\lambda$ 是核函数，$\lambda$ 是控制邻域宽度的参数（带宽）。

### 常用核函数
-   **Epanechnikov 核**：具有紧支集 [[Wiki - 紧致集合]]，均方误差最优。
-   **高斯核**：$K_\lambda(x_0, x) = \exp\left(-\frac{\|x-x_0\|^2}{2\lambda^2}\right)$，具有无限支集。
-   **k-近邻核**：权重平均分配给最近的 $k$ 个邻居。

## Pro 1 性质

### 偏差-方差权衡
-   **带宽 $\lambda$**：控制模型的复杂度。$\lambda$ 过大导致高偏差（欠拟合，曲线过于平滑）；$\lambda$ 过小导致高方差（过拟合，曲线波动剧烈）。
-   **边界效应**：核平滑器在数据边界处往往存在较大的偏差（Boundary Bias），因为在边界处核函数的对称性被截断。这可以通过 **[[Wiki - 局部回归]]** 来缓解。

参见：[[Wiki - 局部回归]], [[Wiki - 样条函数]]
