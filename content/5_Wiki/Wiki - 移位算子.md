---
aliases:
  - Shift Operators
  - Time Shift
info:
date: 2025-12-19-星期五 12:50
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程
id: wiki20251219125000
banner: "![[astrowalk.gif]]"
---
# Wiki - 移位算子

## 1. 定义
**移位算子 (Shift Operator)** $\theta_t$ 是作用在样本空间 $\Omega$ 上的变换，用于在时间轴上“推移”随机过程的观测窗口。

对于典范路径空间（如 $C[0, \infty)$），样本点 $\omega$ 是一条路径。对于 $t \ge 0$，移位算子 $\theta_t: \Omega \to \Omega$ 定义为：
$$
(\theta_t \omega)(s) = \omega(s+t), \quad \forall s \ge 0
$$
即 $\theta_t$ 将路径 $\omega$ 向左平移 $t$ 个单位，丢弃 $t$ 之前的路径，并将原点重新设定在 $t$。

## 2. 随机变量的移位
对于定义在 $\Omega$ 上的随机变量 $Y(\omega)$，移位后的变量 $Y \circ \theta_t$ 表示在“新世界”中的同一个随机变量。
例如，如果 $X_s(\omega) = \omega(s)$ 是坐标过程，那么：
$$
X_s(\theta_t \omega) = (\theta_t \omega)(s) = \omega(s+t) = X_{s+t}(\omega)
$$
即 $X_s \circ \theta_t = X_{s+t}$。

## 3. 在马尔可夫性中的应用
移位算子极大地简化了马尔可夫性的表述。[[Wiki - 强马尔可夫性]] 可以简洁地写为：
$$
E^x [Y \circ \theta_T | \mathcal{F}_T] = E^{X_T} [Y]
$$
其中 $T$ 是停时，$Y$ 是有界可测随机变量。这表示：在停时 $T$ 之后发生的事件（由 $Y \circ \theta_T$ 描述），其条件期望等同于从当前状态 $X_T$ 重新开始的过程的期望。
