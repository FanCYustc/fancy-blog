---
aliases:
info: 半正定函数的定义与性质
date: 2025-12-17-星期三 10:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/特征
  - 复分析
id: wiki20251217100001
banner: "![[astrowalk.gif]]"
---

## Def 1 半正定函数

```ad-definition
title: Definition 6.1

设 $\varphi : \mathbb{R}^n \to \mathbb{C}$ 是一个复值函数。如果 $\varphi$ 满足：对任意 $m \in \mathbb{N}, x_1, \dots, x_m \in \mathbb{R}^n$ 和 $\xi_1, \dots, \xi_m \in \mathbb{C}$，

$$
\sum_{i, j = 1}^{m} \xi_{i} \bar{\xi}_{j} \varphi \left(x_{i} - x_{j}\right) \geqslant 0, \tag{6.1}
$$

那么称 $\varphi : \mathbb{R}^n \to \mathbb{C}$ 是一个半正定函数。
```

## Lem 1 基本性质

```ad-note
title: Lemma 6.1

设 $\varphi : \mathbb{R}^n \to \mathbb{C}$ 是一个半正定函数，则有

1.  $\varphi(0) \geqslant 0$
2.  对任意 $x \in \mathbb{R}^n$，有 $|Φ(x)| ≤ Φ(0)$
3.  $Φ(-x) = ¯Φ(x)$ (Hermite 对称性)

**证明思路**：
- 取 $m=1$ 可证 $Φ(0) ≥ 0$。
- 取 $m=2$ 利用二次型非负性可证 Hermite 对称性和有界性。
```

[[Wiki - Hermite矩阵]]

[[Wiki - 正定矩阵]]
## Lem 2 积分性质

```ad-note
title: Lemma 6.2

设 $\varphi : \mathbb{R}^n \to \mathbb{C}$ 是一个连续半正定函数。则对任意的 $f \in C_c(\mathbb{R}^n; \mathbb{C})$（具有紧支撑的连续函数），我们有

$$ 
\int_{\mathbb{R}^{n}} \left(f^{*} * f \right) (x) \varphi (x) m_{n} (\mathrm{d} x) \geqslant 0,
$$ 

其中 $f^*(x) := \overline{f(-x)}$，The convolution is defined with normalized Lebesgue measure.

该性质还可以拓展到 $f \in L^1(\mathbb{R}^n; \mathbb{C})$ (练习 6.1)。
```

## Pro 1 与特征函数的关系



根据 [[Wiki - 特征函数的性质]]，任何特征函数都是半正定函数。反之，由 [[Wiki - Bochner定理]]，连续的半正定函数（在 0 点归一化后）一定是特征函数。
