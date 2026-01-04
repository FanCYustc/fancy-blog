---
aliases:
info: GTM113 CH2.6
date: 2025-12-18-星期四 11:39:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251218113900
banner: "![[astrowalk.gif]]"
---
---

# 反射原理

## 描述
基于 [[Wiki - brown运动的马尔可夫性]]，对于一维标准布朗运动 $W$ 和水平线 $b > 0$。[[Wiki - brown运动]]

如果在时刻 $T_b$ 首次击中 $b$，则在 $T_b$ 之后，轨道 $W_t$ 在 $b$ 之上的概率与在 $b$ 之下的概率相等（对称性）。

可以通过将 $T_b$ 之后的轨道关于 $b$ 进行反射得到一条新的“影子”轨道，该轨道与原轨道具有相同的概率分布。

## 数学表述
对于 $a \le b$ 和 $t > 0$：
$$ P(T_b \le t, W_t < a) = P(T_b \le t, W_t > 2b - a) = P(W_t > 2b - a) $$
这里利用了 $\{T_b \le t, W_t > 2b - a\} \subseteq \{T_b \le t\}$ 且当 $W_t > 2b-a$ (且 $b>0, a \le b$) 时必然有 $M_t \ge W_t > b$ 即 $T_b \le t$。

## 应用
- 导出首达时 $T_b$ 的分布密度。
- 导出最大值 $M_t = \max_{0 \le s \le t} W_s$ 的分布：
  $$ P(M_t \ge b) = P(T_b \le t) = 2 P(W_t > b) $$
  详见 [[Wiki - brown运动的击中时和最大值]]。
