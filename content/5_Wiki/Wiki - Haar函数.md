---
aliases:
info:
date: 2025-12-19-星期五 12:30
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 数学分析/函数
  - 泛函分析
id: wiki20251219123000
banner: "![[astrowalk.gif]]"
---
# Wiki - Haar函数

## 1. 定义

**Haar 函数 (Haar Functions)** 是一组定义在 $[0, 1]$ 上的正交函数系，常用于布朗运动的级数构造（[[Wiki - brown运动的构造#Lévy-Ciesielski 构造|Lévy-Ciesielski 构造]]）。

对于 $n \ge 0$ 和 $k \in I(n)$（其中 $I(n)$ 是 $0$ 到 $2^n$ 之间的奇数集合，即 $I(n) = \{1, 3, \dots, 2^n-1\}$），第 $n$ 层第 $k$ 个 Haar 函数 $H_k^{(n)}(t)$ 定义为：

$$
H_k^{(n)}(t) = \begin{cases} 
2^{(n-1)/2}, & \text{若 } \frac{k-1}{2^n} \le t < \frac{k}{2^n} \\
-2^{(n-1)/2}, & \text{若 } \frac{k}{2^n} \le t < \frac{k+1}{2^n} \\
0, & \text{其他}
\end{cases}
$$

此外，定义基函数 $H_1^{(0)}(t) \equiv 1$。

## 2. 性质

1.  **正交性**：Haar 函数系 $\{H_k^{(n)}\}$ 在 $L^2[0, 1]$ 空间上构成一个**完备正交基 (Complete Orthonormal System)**。[[Wiki - 内积空间的正交基]]
    $$ \int_0^1 H_k^{(n)}(t) H_j^{(m)}(t) dt = \delta_{nm} \delta_{kj} $$
2.  **紧支集**：每个 $H_k^{(n)}$ 的支集是二进区间 $[\frac{k-1}{2^n}, \frac{k+1}{2^n}]$，且在区间中点变号。

## 3. 与布朗运动的关系

Haar 函数是布朗运动 [[Wiki - brown运动]] “导数”（白噪声）的正交基表示。对其积分可得到 [[Wiki - Schauder函数]]，后者用于直接展开布朗运动的路径：
$$ B_t(\omega) = \sum_{n=0}^\infty \sum_{k \in I(n)} Z_k^{(n)}(\omega) S_k^{(n)}(t) $$
其中 $Z_k^{(n)}$ 是独立标准正态随机变量 [[Wiki - 正态分布]]。



