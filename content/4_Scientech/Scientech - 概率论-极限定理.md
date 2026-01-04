---
aliases:
info: 23秋概率论第6章，25秋高等概率论第5章
date: 2023-11-30-星期四 14:09:45
update: 2025-12-15-星期一 14:43:30
tags:
  - scientech/year2025
  - scientech/month12
  - 概率论/极限理论
id: scientech20231130140945
banner: "![[astrofishing.gif]]"
---
---

# 第六章-极限定理

[第六章课件](E:\课程资料\概率论\Prob-PPT-6.pdf)

## 6.0 随机变量的收敛体系

在深入具体定理之前，我们需要建立随机变量收敛的整体图像。从强到弱，主要有四种收敛：
[[Wiki - 随机变量的收敛]]

1.  **几乎处处收敛 (a.e.)**: [[Wiki - 几乎处处收敛]]
2.  **Lp 收敛**: [[Wiki - Lp收敛]]
3.  **依概率收敛 (P)**: [[Wiki - 依概率收敛]]
4.  **依分布收敛 (d)**: [[Wiki - 依分布收敛]] (也称弱收敛)

## 6.1 依概率收敛和平均收敛

### 依概率收敛

[[Wiki - 依概率收敛]]

[[Wiki - Chebyshev不等式]]

Chebyshev 不等式有很多重要应用

[[Wiki - 弱大数律]]

在一些情况下，可以判断随机变量序列服从弱大数律

[[Wiki - markov弱大数律]]

[[Wiki - Chebyshev弱大数律]]

### 平均收敛 ($L^p$ 收敛)

[[Wiki - 平均收敛]]

[[Wiki - Lp收敛]] (包括平均收敛 $p=1$ 和均方收敛 $p=2$)

平均收敛比依概率收敛强, 但反过来不一定能成立。
要使依概率收敛提升为 $L^p$ 收敛，需要额外的控制条件。

在一些情况下可以有平均收敛：

[[Wiki - Lebesgue控制收敛定理]]

[[Wiki - 单调收敛定理]]

### 一致可积与 Vitali 定理

为了给出依概率收敛推导 $L^p$ 收敛的充要条件，引入了**一致可积**概念。

[[Wiki - 随机变量一致可积]]

[[Wiki - 随机变量一致可积的判别]] (de la Vallée-Poussin 准则)

**核心定理：Vitali 收敛定理**

[[Wiki - Vitali收敛定理]]
$$ X_n \xrightarrow{\mathbb{P}} X \text{ 且 } \{|X_n|^p\} \text{ 一致可积} \iff X_n \xrightarrow{L^p} X $$

## 6.2 依分布收敛 (进阶：弱收敛)

### 依分布收敛

[[Wiki - 依分布收敛]]

依分布收敛是最弱的收敛形式，它只关心分布函数 $F_n$ 在连续点处收敛到 $F$。
在更一般的度量空间中，这被称为概率测度的 **[[Wiki - 弱收敛]]**。

### 核心变换定理

为了处理依分布收敛，引入了三个强大的工具：

1.  **[[Wiki - Skorokhod表示定理]]**:
    *   **作用**: 将“弱”的依分布收敛转化为“强”的几乎处处收敛。
    *   **内容**: 若 $X_n \xrightarrow{d} X$，则存在同分布的 $\tilde{X}_n, \tilde{X}$ 使得 $\tilde{X}_n \xrightarrow{\text{a.e.}} \tilde{X}$。这使得我们可以利用实分析中的极限定理（如控制收敛定理）来证明依分布收敛的性质。

2.  **[[Wiki - 连续映射定理]] (CMT)**:
    *   **作用**: 保证收敛性在连续变换下的不变性。
    *   **内容**: 若 $X_n \to X$ (a.e./P/d)，且 $g$ 连续，则 $g(X_n) \to g(X)$。

3.  **[[Wiki - Portmanteau定理]]**:
    *   **作用**: 提供依分布收敛（弱收敛）的多个等价定义（如开集、闭集、Lipschitz函数等）。

### 运算性质

[[Wiki - Slutsky引理]]
处理随机变量代数运算收敛性的重要工具，特别是当一部分变量收敛到常数时。

### 连续性定理

[[Wiki - Helly定理]]

[[Wiki - 分布的连续性定理]]

## 6.3 弱大数定律与 Lct

[[Wiki - Khintchine弱大数律]]

### 中心极限定理 (CLT)
- **标准 CLT**: [[Wiki - 中心极限定理]]
    - 独立同分布 (i.i.d.) 且方差有限的情形。
    - 证明思路：利用 Taylor 展开 $\Phi_n(\theta) \approx (1 - \theta^2/2n)^n \to e^{-\theta^2/2}$。
- **Lyapunov CLT**: [[Wiki - Lyapunov中心极限定理]]
    - 独立不同分布，需满足 [[Wiki - Lyapunov中心极限定理]]（控制高阶矩）。
- **Lindeberg CLT**: [[Wiki - Lindeberg中心极限定理]]
    - 最一般的独立变量 CLT。
    - 需满足 Lindeberg条件（控制尾部概率）。
    - **Feller 条件**: [[Wiki - Feller条件]]（无主导项），在此条件下 Lindeberg 条件是 CLT 成立的充要条件。

### 多元场合下的 Lct

[[Wiki - 多元中心极限定理]]

## 6.4 几乎处处收敛

几乎处处收敛是最强的

[[Wiki - 几乎处处收敛]]

[[Wiki - Borel-Cantelli引理]]

### 若干引理

下面为证明强大数律做准备

[[Wiki - Kolmogorov不等式]]

## 6.5 强大数律

先准备几个不等式引理：

```ad-lemma
title: Lemma 1


设 $a_n\to a\in\Re,b_n\geq0,\forall n\geq1$, 满足 $\sum_{n=1}^\infty b_n=+\infty$, 则
$$\lim_{n\to\infty}\frac{\sum_{k=1}^na_kb_k}{\sum_{k=1}^nb_k}=a.$$ 


```

```ad-lemma
title: Lemma 2 (Kronecker 引理)

设 \{x_n\} 为实数序列，\{b_n\} 为正实数序列，$b_n\uparrow+\infty$, 则

$$ 
\begin{aligned}&\sum_{n=1}^\infty\frac{x_n}{b_n}\text{ 收敛 }\Longrightarrow\lim_{n\to\infty}\frac1{b_n}\sum_{k=1}^nx_k=0.\end{aligned}
$$ 


```

[[Wiki - 强大数律]]

[[Wiki - 随机变量级数的几乎处处收敛]]

[[Wiki - Kolmogorov三级数定理]]

[[Wiki - Kolmogorov强大数律]]

## 6.6 进阶：度量空间上的概率测度收敛

本节讨论一般度量空间（如函数空间）上的概率测度收敛理论。

### 胎紧性与 Prokhorov 定理

*   **[[Wiki - 胎紧性]] (Tightness)**: 描述概率测度“不逃逸到无穷远”的性质。
*   **[[Wiki - Prokhorov定理]]**:
    *   建立了“相对紧性”与“一致胎紧性”的等价关系。
    *   它是证明随机过程（如布朗运动）弱收敛存在的关键工具。

### Wasserstein 距离

*   **[[Wiki - Wasserstein距离]]**:
    *   一种基于最优传输理论的概率距离。
    *   $W_p(\mu_n, \mu) \to 0 \iff \mu_n \Rightarrow \mu \text{ 且 } \mathbb{E}[|X_n|^p] \to \mathbb{E}[|X|^p]$。
    *   比弱收敛更强，因为它控制了矩的收敛。

数理统计中的总结：[随机变量收敛性质](E:\课程资料\概率论\随机变量收敛性质.pdf)