---
aliases:
info: GTM113 CH2.5-2.7
date: 2025-12-18-星期四 11:38:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/markov链
id: wiki20251218113800
banner: "![[astrowalk.gif]]"
---
---

# brown 运动的马尔可夫性

## 1. 强马尔可夫性 (Strong Markov Property)

$d$ -维布朗运动是[[Wiki - 强马尔可夫性|强马尔可夫过程]]。

对于任意有限停时 [[Wiki - 停时]] $S$，定义过程 $W'_t = W_{S+t} - W_S, t \ge 0$。利用 **[[Wiki - 移位算子]]** $\theta_S$，这可以表述为 $W'_t = W_t \circ \theta_S - W_0 \circ \theta_S$。

则 $W'$ 仍为一个标准的 $d$ -维 [[Wiki - brown运动]]，且与停时前的 $\sigma$ -代数 $\mathscr{F}_{S+}$ 独立。

这意味着布朗运动在任意随机的停时时刻“重新开始”，且不受过去的统计影响。

[[Wiki - markov性]]

## 2. Blumenthal 0-1 律

**[[Wiki - Blumenthal 0-1律]]** 指出：对于布朗运动 $B$ 的自然过滤流 $\mathscr{F}_t^B$ 的右连续修正 $\mathscr{F}_t$，其初始 $\sigma$ -代数 $\mathscr{F}_0$ 是平凡的。即对于任意 $F \in \mathscr{F}_0$，有 $P(F) = 0$ 或 $P(F) = 1$。

[[Wiki - Filtration的通常条件]]
### **推论：**

- 布朗运动起点的行为是确定性的（如是否从正侧出发）。
- 典型应用：证明 [[Wiki - brown运动的样本轨道性质]] 中的局部规律（如 $t=0$ 处无穷次变号）。

## 3. Feller 性质与半群

布朗运动产生的 **[[Wiki - 转移半群]]** $\{P_t\}$ 具有 Feller 性质，这保证了其强马氏性。

该半群由热核卷积定义，并满足 **[[Wiki - Chapman-Kolmogorov方程]]**。
