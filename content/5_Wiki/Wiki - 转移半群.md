---
aliases:
  - Transition Semigroup
  - Operator Semigroup
info:
date: 2025-12-19-星期五 12:40
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 抽象代数/群论
id: wiki20251219124000
banner: "![[astrowalk.gif]]"
---
# Wiki - 转移半群

## 1. 定义

对于一个齐次马尔可夫过程 [[Wiki - markov性]] $X = \{X_t\}_{t \ge 0}$，其**转移半群 (Transition Semigroup)** $\{P_t\}_{t \ge 0}$ 是一族作用在有界可测函数 [[Wiki - 可测函数]]空间上的线性算子。

对于有界可测函数 $f: \mathbb{R}^d \to \mathbb{R}$，定义 $P_t f$ 为：
$$
(P_t f)(x) = E^x [f(X_t)] = \int_{\mathbb{R}^d} f(y) p(t, x, dy)
$$
其中 $E^x$ 表示过程从 $X_0 = x$ 出发的期望，$p(t, x, dy)$ 是转移概率。


其实是 [[Wiki - markov链#Def 2 转移矩阵]] 的推广
## 2. 半群性质

该算子族满足**半群性质 (Semigroup Property)**，即对于任意 $s, t \ge 0$：
$$
P_{t+s} = P_t \circ P_s
$$
展开写即：
$$
(P_{t+s} f)(x) = E^x [f(X_{t+s})] = E^x [E^{X_t}[f(X_{t+s}) | \mathcal{F}_t]] = E^x [(P_s f)(X_t)] = (P_t (P_s f))(x)
$$
这一性质本质上是 [[Wiki - Chapman-Kolmogorov方程]] 的算子形式。

[[Wiki - markov链n步转移概率]]
## 3. 布朗运动的半群

对于 $d$ 维标准布朗运动 [[Wiki - brown运动]]，其转移半群由热核 (Gaussian Kernel) 给出：
$$
(P_t f)(x) = \int_{\mathbb{R}^d} f(y) \frac{1}{(2\pi t)^{d/2}} e^{-\frac{|x-y|^2}{2t}} dy
$$
这是一个卷积算子：$P_t f = f * g_t$，其中 $g_t$ 是正态分布密度。

布朗运动的半群是 **Feller 半群**，因为它将连续函数映为连续函数，且在 $t \to 0$ 时一致收敛到恒等算子。
