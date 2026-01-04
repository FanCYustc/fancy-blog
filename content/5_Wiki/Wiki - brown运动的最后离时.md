---
aliases:
info: GTM113 CH2.8
date: 2025-12-18-星期四 11:42:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251218114200
banner: "![[astrowalk.gif]]"
---

# brown 运动的最后离时

## 定义
对于时间 $t > 0$，定义最后一次离开原点的时间（Last exit time form 0 before $t$）为：
$$ \gamma_t = \sup \{s \le t : W_s = 0\} $$
注意 $\gamma_t$ **不是停时。**

## 反正弦律 (Arc-sine Law)

$\gamma_t$ 服从 **[[Wiki - 弧正弦律]]**。其概率密度函数为：
$$ P(\gamma_t \in ds) = \frac{1}{\pi \sqrt{s(t-s)}} ds, \quad 0 < s < t $$
相应的分布函数为：
$$ P(\gamma_t \le s) = \frac{2}{\pi} \arcsin \sqrt{\frac{s}{t}} $$


定义 $\theta_t$ 为布朗运动在 $[0, t]$ 上达到最大值的时刻。
$$ \theta_t = \inf \{s \le t : W_s = \max_{0 \le u \le t} W_u\} $$
$\theta_t$ 与 $\gamma_t$ 具有相同的分布，即也服从反正弦律。

这意味着布朗运动很容易在区间两端达到最大值，而在中间达到的概率较小。

## Pro2 反正弦律

```ad-proposition
title: Propositon 3

$\forall 0<t_{1}<t_{2}$，对标准 brown 运动

$$\mathbb{P}\left(\text{BMP 于时间段 }(t_{1},t_{2})\text{ 未访问“0” }\right)=\frac2\pi\arcsin\sqrt{\frac{t_{1}}{t_{2}}}.$$


```


设 $L_{t}= \sup\{s\leq t:B_{s}=0\}$，则

$$
P(L_{t}\leq s)= \frac{2}{\pi}\arcsin \sqrt{ \frac{s}{t} }, \forall_{0}\leq s\leq t
$$
