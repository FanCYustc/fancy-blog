---
aliases:
info: 将依分布收敛转化为几乎处处收敛的构造性定理
date: 2025-12-15-星期一 14:05
update: 2025-12-15-星期一 14:05
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
id: wiki20251215140501
banner: "![[astrowalk.gif]]"
---

# Skorokhod 表示定理

**Skorokhod 表示定理** (Skorokhod Representation Theorem) 是概率论中连接**依分布收敛**与**几乎处处收敛**的重要桥梁。它表明，虽然依分布收敛是最弱的收敛形式，但我们可以通过构造一个新的概率空间，使得在分布不变的前提下，将依分布收敛转化为几乎处处收敛。

这一性质在证明 [[Wiki - 连续映射定理|连续映射定理]] 等极限理论中具有核心作用。

## 实值随机变量情形

### 定理内容

设 $\{X_{n}\}_{n\geqslant 1}$ 和 $X$ 为概率空间 $(\Omega ,\mathcal{F},\mathbb{P})$ [[Wiki - 概率空间]]上的一列实值随机变量 [[Wiki - 随机变量]]且满足依分布收敛：

$$
X _ {n} \stackrel {d} {\to} X, \quad n \to \infty .
$$

那么，存在一个概率空间 $(\tilde{\Omega},\tilde{\mathcal{F}},\tilde{\mathbb{P}})$ 和其下的一列随机变量 $\{\tilde{X}_n\}_{n\geqslant 1}$ 和 $\tilde{X}$ 满足：

1.  **同分布性**：
    $$
    \tilde{X}_n \stackrel {d}{=} X_n, \quad \forall n\geqslant 1;
    $$

[[Wiki - 依分布收敛]]
1.  **极限分布一致**：
    $$
    \tilde{X} \stackrel {d}{=} X;
    $$
2.  **几乎处处收敛**：
    $$
    \tilde{\mathbb{P}} \left( \lim_{n\to \infty}\tilde{X}_n = \tilde{X} \right) = 1.
    $$
    即在概率测度 $\tilde{\mathbb{P}}$ 下，$\tilde{X}_n \xrightarrow{\mathrm{a.e.}} \tilde{X}, n\to \infty$。
 [[Wiki - 几乎处处收敛]]
### 证明构造

定理的证明提供了一种典型的构造方法，通常取标准概率空间：
$$
(\tilde {\Omega}, \tilde {\mathcal {F}}, \tilde {\mathbb {P}}) = ((0, 1 ], \mathcal {B} _ {(0, 1 ]}, m),
$$
其中 $m$ 为 Lebesgue 测度。

构造函数如下（利用分布函数的广义逆或分位数函数）：
对任意 $\omega \in \tilde{\Omega} = (0,1]$，定义

$$
\tilde {X} (\omega) := \inf \{x \in \mathbb {R}; F (x) \geqslant \omega \},
$$

$$
\tilde {X} _ {n} (\omega) := \inf \{x \in \mathbb {R}; F _ {n} (x) \geqslant \omega \}, \quad n \geqslant 1.
$$

其中 $F(x)$ 和 $F_n(x)$ 分别为 $X$ 和 $X_n$ 的分布函数。
由于 $F_n \Longrightarrow F$（在连续点处收敛），利用分布函数的单调性和右连续性，可以证明对几乎所有的 $\omega \in (0,1]$，都有 $\tilde{X}_n(\omega) \to \tilde{X}(\omega)$。

## 一般度量空间情形

对于取值于一般空间（**Polish 空间**，即完备可分的度量空间）的随机变量列，该定理同样成立。这一结果由乌克兰数学家 A.V. Skorokhod 在 1956 年给出。[[Wiki - 度量空间的完备性]]、[[Wiki - 度量空间的稠密性|度量空间的可分性]]

### 定理内容

设 $(S,d)$ 是一个 Polish 空间，$\{\mu_n\}_{n\geqslant 1}\subset \mathcal{P}(S)$ 和 $\mu \in \mathcal{P}(S)$。
如果 $\mu_{n}\Longrightarrow \mu$（概率测度弱收敛 [[Wiki - 弱收敛]]），$n\to \infty$，那么，存在一个概率空间 $(\tilde{\Omega},\tilde{\mathcal{F}},\tilde{\mathbb{P}})$ 和其上的 $S$ -值随机变量 $\{X_{n}\}_{n\geqslant 1}$，$X$ 使得：

1.  $X_{n}$ 的分布为 $\mu_{n}$；[[Wiki - 分布函数]]
2.  $X$ 的分布为 $\mu$；
3.  在概率测度 $\tilde{\mathbb{P}}$ 下，
    $$
    X_{n} \xrightarrow{\mathrm{a.e.}} X, \quad n\to \infty .
    $$

