---
aliases:
info: 依概率收敛升级为Lp收敛的充要条件
date: 2025-12-15-星期一 15:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 收敛
  - 随机过程/鞅论
  - 概率论/极限理论
id: wiki20250924164831
banner: "![[astrowalk.gif]]"
---
---

# Vitali 收敛定理

Vitali 收敛定理是概率论和实分析中的经典定理，它给出了从 **依概率收敛** 提升到 **$L^p$ 收敛** 的充分必要条件。

```ad-theorem
title: 定理 5.8 (Vitali Convergence Theorem)
```
设 $p \ge 1$，$\{X_n\}_{n \ge 1}$ 和 X 为 $L^p$ 中的随机变量 [[Wiki - 随机变量]]。
若已知 **$X_n \xrightarrow{P} X$** (依概率收敛)，则以下三个条件是**等价**的：

1.  **一致可积**: $\{|X_n|^p\}_{n \ge 1}$ 是 **[[Wiki - 随机变量一致可积|一致可积]] (Uniformly Integrable, U.I.)** 的。
2.  **$L^p$ 收敛**: $X_n \xrightarrow{L^p} X$，即 $\lim_{n \to \infty} \mathbb{E}[|X_n - X|^p] = 0$。[[Wiki - Lp收敛]]
3.  **矩收敛**: $\lim_{n \to \infty} \mathbb{E}[|X_n|^p] = \mathbb{E}[|X|^p]$。


## 直观理解

*   **`依概率收敛 + 一致可积性  <=>  Lp 收敛`**
*   **`依概率收敛 + 矩收敛  <=>  Lp 收敛`** (Scheffé 引理) 

这个定理告诉我们，依概率收敛本身不能保证积分收敛（质量可能逃逸到无穷远），而 **一致可积性** 正是防止这种“质量逃逸”的条件。

## 特例 ($p=1$)

当 $p=1$ 时，即为经典的 $L^1$ Vitali 定理：
若 $X_n \xrightarrow{P} X$，则 $X_n \xrightarrow{L^1} X \iff \{X_n\}$ 是 U.I. 的。


