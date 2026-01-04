---
aliases:
info:
date: 2025-09-23-星期二 14:23
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机分析
  - 随机过程/brown运动
id: wiki20250923142312
banner: "![[astrowalk.gif]]"
---
---

在 $\sigma-$ 代数流空间 $( \Omega, \mathcal{F}, \mathcal{F}_{*}, P)$，设 $(B_{t})_{t\geq 0}$ 是一维标准 brown 运动，$M_{t}= \sup_{ 0\leq s\leq t}B_{s}$

## Pro 1 鞅性

Brown 运动是鞅 [[Wiki - 鞅]]，由独立平稳增量，也就有 markov 性 [[Wiki - markov性]]

[[Wiki - sigma代数流]]
### Proof

验证
$$
E[B_t | \mathcal{F}_s] = E[B_t - B_s + B_s | \mathcal{F}_s] = E[B_t - B_s | \mathcal{F}_s] + E[B_s | \mathcal{F}_s]
$$
由于独立增量性，
$$
E[B_{t}|\mathcal{F}_{s}]= E[B_{t}-B_{s}]+B_{s}= B_{s}
$$

## Pro 2 markov 性

设 $\tau$ 是 $\mathcal{F}_{*}$ 适应的有限停时 [[Wiki - 停时]] ($P (\tau<\infty)=1$)， $(W_{t})_{t\geq 0}$ 是独立于 $\mathcal{F}_{\tau}$ 的 brown 过程，则过程

$$
Z_{t}=\begin{cases}
B_{t}, t\leq \tau \\
B_{\tau}+ W_{t-\tau}, t>\tau
\end{cases}
$$

[[Wiki - 停止过程]]也是标准 brown 运动

## Pro 3

$$
P(B_{t}\in da, M_{t}\in dc)= \sqrt{ \frac{2}{\pi t^{3}} }(2c-a)e^{-2(c-a)^{2} /2t}dadc
$$
其中 $a<c, c>0$
### Cal 

对固定的 t，$M_{t}-B_{t}$，$|B_{t}|,M_{t}$ 同分布，同 [[Wiki - brown运动的击中时和最大值#Pro 2 最大值]]

## Pro  4

$\forall t>0$，

$$
P(\exists u,v\in (0,t), u\neq v, s.t.B_{u}=B_{v}= M_{t})=0
$$

## Pro 5

$$
P(\forall a<b, B_{t}在[a,b]上不单调)=1
$$

## Pro 6

定义完全集 D：D 为 $\mathbb{R}$ 中闭集 [[Wiki - 实数域的开集闭集]]，$\forall t\in D,\exists\{t_{n}\}\to t$，且 $t_{n}\neq t$。则设 $Z= \{t\geq 0, B_{t}=0\}$

$$
P(Z是完全集)=1
$$

## Pro 7

$\sigma_{0}= \inf\{t>0: B_{t}=0\}$，则
$$
P(\sigma_{0}=0)=1
$$

即理解为 BM 没有首次返回时

[[Wiki - brown运动]]

## Pro 8 布朗运动的路径连续性与处处不可微性

```ad-proposition
title: 连续但处处不可微 (Continuous but Nowhere Differentiable)

标准布朗运动 $\{B_t, t \ge 0\}$ 的样本路径 $t \mapsto B_t(\omega)$ 几乎必然处处连续，但以概率1处处不可微。

**形式化描述**:
1.  **路径连续性**: 存在一个零测集 $N_1 \subset \Omega$ ($P(N_1)=0$)，使得对所有 $\omega \notin N_1$，函数 $t \mapsto B_t(\omega)$ 在 $[0, \infty)$ 上连续。此性质由[[Wiener定理]]保证。
2.  **处处不可微性**: 存在一个零测集 $N_2 \subset \Omega$ ($P(N_2)=0$)，使得对所有 $\omega \notin N_2$，对于任意 $t \ge 0$，导数 $\lim_{h \to 0} \frac{B_{t+h}(\omega) - B_t(\omega)}{h}$ 不存在。
```

[[Wiki - 映射的微分]]

[[Wiki - Wiener定理]]

**数学细节**:
对于任意固定的 $t \ge 0$，以概率1有：
$$
\limsup_{h \to 0^+} \frac{B_{t+h} - B_t}{h} = \infty \quad \text{且} \quad \liminf_{h \to 0^+} \frac{B_{t+h} - B_t}{h} = -\infty
$$
这表明布朗运动的增量在任意小的时间间隔内，其相对变化率可以是任意大或任意小，从而无法定义一个有限的导数。


## Pro 9 布朗运动的二次变差

```ad-proposition
title: 二次变差 (Quadratic Variation)

```

标准布朗运动 $\{B_t, t \ge 0\}$ 在任何有限区间 $[0, T]$ 上的**二次变差** (Quadratic Variation) 几乎必然等于该区间的长度 $T$。

**形式化描述**:
设 $\Pi = \{0 = t_0 < t_1 < \dots < t_n = T\}$ 是区间 $[0, T]$ 的一个划分，定义其网格大小 $\|\Pi\| = \max_{i} (t_{i+1} - t_i)$。那么，几乎必然地：
$$
[B, B]_T = \lim_{\|\Pi\| \to 0} \sum_{i=0}^{n-1} (B_{t_{i+1}} - B_{t_i})^2 = T
$$
这个极限是依概率收敛或几乎必然收敛的。


**通俗解释**:
对于一个普通的（可微的）函数 $f(t)$，如果我们计算其在小区间上的平方增量之和 $\sum (f(t_{i+1}) - f(t_i))^2$，当划分越来越细时，这个和会趋于 0（因为 $f(t_{i+1}) - f(t_i) \approx f'(t_i) (t_{i+1} - t_i)$，平方后是 $(t_{i+1} - t_i)^2$，求和后趋于 0）。但对于布朗运动，由于其增量 $B_{t_{i+1}} - B_{t_i}$ 的量级是 $O(\sqrt{t_{i+1} - t_i})$，所以平方增量的量级是 $O(t_{i+1} - t_i)$。将这些 $O(t_{i+1} - t_i)$ 的项加起来，最终会累积成区间的总长度 $T$。

[[Wiki - 有界变差函数|全变差]]


其他性质：[[Wiki - brown运动的击中时和最大值]]、[[Wiki - brown运动的变形]]