---
aliases:
  - N次单位根群
info: Stein Fourier Analysis Chapter 7.1
date: 2025-12-23-星期二 16:10:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 抽象代数/群论
id: wiki20251223161000
banner: "![[astrowalk.gif]]"
---

# Z(N) 群

## 1. N 次单位根群 (乘法群)

作为复平面单位圆上均匀分布的 $N$ 个点，即 $N$ 次单位根的集合：
$$ \{ 1, e^{2\pi i / N}, e^{2\pi i 2 / N}, \dots, e^{2\pi i (N-1) / N} \} $$
这 $N$ 个元素在复数**乘法**下构成一个群。

$N$ 次单位根 $\zeta$ 定义为满足 $\zeta^N = 1$ 的复数。

## 2. 整数模 N 群 (加法群)

作为整数集 $\mathbb{Z}$ 关于模 $N$ 同余类的集合：
$$ \mathbb{Z} / N\mathbb{Z} = \{ [0], [1], \dots, [N-1] \} $$
这 $N$ 个元素在模 $N$ **加法**下构成一个群。

## 3. 同构关系

这两个群是同构的。同构映射 $k \mapsto e^{2\pi i k / N}$ 将模 $N$ 整数群的加法结构映射为单位根群的乘法结构：
$$ e^{2\pi i (k+m) / N} = e^{2\pi i k / N} \cdot e^{2\pi i m / N} $$

[[Wiki - 群同构]]

**参考**:
- [[Wiki - 有限Abel群]]

