---
aliases:
info: 微分方程初值问题的最大解与最小解
date: 2025-12-30-星期二 15:15
update:
tags:
  - wiki/month12
  - 微分方程/ODE
  - wiki/year2023
id: wiki20251230151500
banner: "![[astrowalk.gif]]"
---


## 最大最小解定理

### 定义

考虑初值问题

$$ 
(E): \quad \frac {d y}{d x} = f (x, y), \quad y \left(x _ {0}\right) = y _ {0},
$$ 

其中函数 $f(x,y)$ 在矩形区域 $R: | x - x _ {0} | \leqslant a, | y - y _ {0} | \leqslant b$ 上连续。

如果在区间 $|x - x_0| \leqslant h$ 上初值问题 $(E)$ 有二个解 $y = Z(x)$ 和 $y = W(x)$，使得 $(E)$ 的任何解 $y = y(x)$ 都满足不等式：

$$ 
W (x) \leqslant y (x) \leqslant Z (x), \quad (| x - x _ {0} | \leqslant h),
$$ 

则称 $y = W(x)$ 和 $y = Z(x)$ 分别为初值问题 $(E)$ 的**最小解**和**最大解**。[[Wiki - cauchy初值定理]]

由定义可知，最大解和最小解都是唯一的。

### 定理内容

```ad-theorem
title: Theorem 7 (最大最小解存在定理)
```
存在正数 $\sigma < h$，使得在区间 $|x - x_0| \leqslant \sigma$ 上，上述初值问题 $(E)$ 有最小解和最大解。

### Proof

1、**构造辅助初值问题序列**

考虑与 $(E)$ 相联系的初值问题

$$ 
(E _ {m}): \quad \frac {d y}{d x} = f (x, y) + \varepsilon_ {m}, \quad y \left(x _ {0}\right) = y _ {0},
$$ 

其中 $\varepsilon_{m} > 0$ 且当 $m\to \infty$ 时 $\varepsilon_{m}$ 单调下降趋于0。
由 [[Wiki - 皮亚诺存在定理]]，存在 $h_m > 0$（当 $m\to\infty$ 时 $h_m \to h$），使得 $(E_m)$ 有解 $y = \varphi_{m}(x)$。
可取正数 $\sigma < h$，使得 $(E)$ 和 $(E_m)$ 的解都在区间 $I: |x - x_0| \leqslant \sigma$ 上存在。

2、**应用 Ascoli 引理**

序列$\{\varphi_{m}(x)\}$ 在 $I$ 上满足：
*   一致有界：$|\varphi_m(x) - y_0| \leqslant b$
*   等度连续：$|\varphi_m(x_1) - \varphi_m(x_2)| \leqslant (M + \varepsilon_1)|x_1 - x_2|$

根据 [[Wiki - 一致等度连续|Arzelà-Ascoli 定理]]，$\{\varphi_{m}(x)\}$ 在 $I$ 上有一致收敛的子序列。不妨设序列本身一致收敛，令 $\Phi (x) = \lim_{m \rightarrow \infty} \varphi_ {m} (x)$。

3、**验证极限函数为解**

在积分方程中取极限：

$$ 
\Phi (x) = y _ {0} + \lim_{m \to \infty} \int_ {x _ {0}} ^ {x} [ f (x, \varphi_ {m} (x)) + \varepsilon_ {m} ] d x = y_0 + \int_{x_0}^x f(x, \Phi(x)) dx
$$ 

即 $y = \Phi(x)$ 是初值问题 $(E)$ 在 $I$ 上的一个解。

4、**证明最大性**

设 $y = y(x)$ 是 $(E)$ 的任一解。
由于 $f(x,y) < f(x,y) + \varepsilon_m$，对 $(E)$ 和 $(E_m)$ 应用 [[Wiki - 比较定理#第一比较定理|第一比较定理]]，可得：

$$ 
\begin{array}{l} y (x) < \varphi_ {m} (x), \quad \text {当} \quad x _ {0} < x < x _ {0} + \sigma , \\ y (x) > \varphi_ {m} (x), \quad \text {当} \quad x _ {0} - \sigma < x < x _ {0}. \end{array}
$$ 

令 $m \to \infty$，得 $y(x) \leqslant \Phi(x)$（右侧）和 $y(x) \geqslant \Phi(x)$（左侧）。
说明 $\Phi(x)$ 是 $(E)$ 的右行最大解和左行最小解。

*注：同理通过构造 $f(x,y) - \varepsilon_m$ 可得左行最大解和右行最小解。两者拼接即为整个区间上的最大（小）解。*
