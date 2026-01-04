---
aliases:
info:
date: 2025-12-29-星期一
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251229101003
banner: "![[astrowalk.gif]]"
---

**Skorohod 方程**（或 Skorohod 问题）主要用于解决带反射遇界的随机过程构造问题。最著名的应用是构造反射布朗运动，并将其与布朗运动的最大值过程联系起来。

## 1. 確定性引理 (Skorohod Lemma)

设 $y(t)$ 为一个连续函数，且 $y(0)=0$。我们要寻找一对连续函数 $(x(t), k(t))$ 满足：
1.  $x(t) = y(t) + k(t) ≥ 0$ 对所有 $t ≥ 0$。
2.  $k(0) = 0$，且 $k(t)$ 是非降函数。
3.  $k(t)$ 仅在 $x(t)=0$时增加，即 $\int_0^\infty 1_{\{x(s)>0\}} dk(s) = 0$。

```ad-lemma
title: Skorohod 引理 (Lemma 6.14)

上述方程存在独一无二解，且由下式给出：
$$ k(t) = \max_{0 \le s \le t} (-y(s))^+ = -\min_{0 \le s \le t} y(s) \quad (\text{若 } y(0) \ge 0) $$
对应地：
$$ x(t) = y(t) + \max_{0 \le s \le t} (-y(s))^+ $$
```

## 2. 随机分析中的应用

### 反射布朗运动与 Lévy 定理
来 $y(t)$ 为标准布朗运动路径 $W_t$（或带初值）。根据 [[Wiki - Tanaka公式]]，反射布朗运动 [[Wiki - 反射原理]] $|W_t|$ 满足：
$$ |W_t| = \int_0^t \text{sgn}(W_s) dW_s + 2L_t(0) $$
令 $\hat{W}_t = -\int_0^t \text{sgn}(W_s) dW_s$。这是一个新的布朗运动。则上式可写为：
$$ |W_t| = -\hat{W}_t + 2L_t(0) $$
这正是 Skorohod 方程的形式，其中 $y(t) = -\hat{W}_t$，$x(t) = |W_t|$，$k(t) = 2L_t(0)$。

利用 Skorohod 引理的独一性，我们得到：
$$ 2L_t(0) = \max_{0 \le s \le t} \hat{W}_s $$
这导出了著名的 **Lévy 定理**：
> 过程对 $(|W_t|, 2L_t(0))$与过程对 $(M_t - W_t, M_t)$具有同样的联合分布，其中 $M_t = \max_{0 \le s \le t} W_s$。

[[Wiki - brown运动的击中时和最大值]]

