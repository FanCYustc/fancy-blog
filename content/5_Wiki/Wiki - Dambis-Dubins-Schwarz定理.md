---
aliases:
  - DDS Theorem
  - 鞅的时间变换定理
info: Theorem 4.6 in Karatzas & Shreve
date: 2025-12-26-星期五 11:35
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/布朗运动
id: wiki20251226113501
banner: "![[astrocleaner.gif]]"
---
---

**Dambis-Dubins-Schwarz (DDS) 定理** 是随机分析中极其优美的结果，它揭示了连续局部鞅与布朗运动之间的本质同构：**任何连续局部鞅都只是一个“变速”的布朗运动。**

## 1. 定理陈述

设 $M = \{M_t, \mathcal{F}_t; 0 \le t < \infty\}$ 是一个连续局部鞅 [[Wiki - 局部鞅]]，且满足 $M_0 = 0$ 和 $\lim_{t \to \infty} \langle M \rangle_t = \infty$ (a.s.)。定义时间变换过程 $T(s)$ 为二次变差的逆：
$$ T(s) = \inf \{ t \ge 0 : \langle M \rangle_t > s \} $$
[[Wiki - 随机时间变换]]

那么，定义在扩张过滤流 $\mathcal{G}_s = \mathcal{F}_{T(s)}$ 上的时间变换过程：
$$ B_s \triangleq M_{T(s)}, \quad 0 \le s < \infty $$
是一个**标准的布朗运动 (Standard Brownian Motion)** [[Wiki - brown运动]]。

反之，原过程 $M$ 可以表示为：
$$ M_t = B_{\langle M \rangle_t}, \quad 0 \le t < \infty $$

### 直观理解

*   **内在时钟:** 每个鞅都有自己的“内在时钟”，走得快慢由其二次变差 $\langle M \rangle_t$ (即累积波动) 决定。
*   **消去波动:** 当我们将时间重置，让鞅每走完单位二次变差就算作“1秒”，它就变成了一个标准的、均匀的布朗运动。
*   **应用:** 该定理允许我们将许多关于布朗运动的性质（如重对数律、增长性）直接推广到一般的连续局部鞅。

```ad-note

如果 $\langle M \rangle_\infty < \infty$ 的概率非零，则 $M$ 只会“走出”一段有限时间的布朗运动路径。为了得到定义在 $[0, \infty)$ 上的完整布朗运动，通常需要在 $\langle M \rangle_\infty$ 之后拼接一个独立的布朗运动（通常需要**概率空间扩张**）。
```


回想之前学的 [[Wiki - 非齐时poison过程]]，有些相似之处
