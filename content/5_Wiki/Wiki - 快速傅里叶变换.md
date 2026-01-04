---
aliases:
  - FFT
  - Fast Fourier Transform
info: Stein Fourier Analysis Chapter 7.1.3
date: 2025-12-23-星期二 16:15:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - fourier分析/fourier变换
  - 算法
id: wiki20251223161500
banner: "![[astrowalk.gif]]"
---

# 快速傅里叶变换 (Fast Fourier Transform)

**快速傅里叶变换 (FFT)** 是一种高效计算 $\mathbb{Z}(N)$ [[Wiki - Z(N)群]]上函数傅里叶系数的算法。特别是当 $N$ 为 2 的幂次时 ($N=2^n$)，该算法利用 $N$ 次单位根的代数性质，将计算复杂度从直接计算的 $O(N^2)$ 降低到 $O(N \log N)$。

## 算法原理

FFT 的核心思想是**分治法**。
假设 $N=2M$，定义 $F$ 在偶数点和奇数点上的子函数：
$$ F_0(r) = F(2r), \quad F_1(r) = F(2r+1) \quad (r=0, \dots, M-1) $$
则 $F$ 的傅里叶系数 $a_k^N(F)$ 可以表示为：
$$ a_k^N(F) = \frac{1}{2} \left( a_k^M(F_0) + \omega_N^{-k} a_k^M(F_1) \right) $$
其中 $\omega_N = e^{2\pi i / N}$。

## 复杂度分析
记 $\#(N)$ 为计算 $\mathbb{Z}(N)$ 上傅里叶系数所需的最少运算次数。根据递推关系 $\#(2M) \le 2\#(M) + O(M)$，可得：
$$ \#(N) \le C N \log_2 N $$

---
**参考**:
- [[Wiki - 离散傅里叶变换]]


