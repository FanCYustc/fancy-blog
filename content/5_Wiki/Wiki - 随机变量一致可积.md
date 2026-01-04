---
aliases:
  - Uniform Integrability
info: 随机变量列一致可积的定义与性质
date: 2025-12-15-星期一 14:50
update: 2025-12-15-星期一 14:55
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
  - 数学分析/积分
id: wiki20231130142933
banner: "![[astrowalk.gif]]"
---
---

# 随机变量一致可积 (Uniform Integrability)

**一致可积性 (UI)** 是比一致有界性更强的一个概念，它控制了随机变量在“无穷远处”或“大概率值处”的积分贡献，是保证依概率收敛能推出 $L^1$ 收敛（数学期望收敛）的关键条件。

## 定义 5.5

设 {$X_\alpha$}$_{\alpha \in I}$ 为概率空间 $(\Omega, \mathcal{F}, \mathbb{P})$ 上的一族随机变量。如果：
$$
\lim_{M \to \infty} \sup_{\alpha \in I} \mathbb{E}[|X_\alpha| \mathbb{1}_{|X_\alpha| > M}] = 0
$$
则称该随机变量族是 **一致可积的 (Uniformly Integrable, U.I.)**。

[[Wiki - 概率空间]]、[[Wiki - 随机变量]]

[[Wiki - 数学期望]]

## 性质

### 1. 充分条件
*   **$L^1$ 控制**: 若存在非负随机变量 $Y \in L^1(\mathbb{P})$ 使得 $|X_\alpha| \le Y$ (a.e.) 对所有 $\alpha$ 成立，则 {$X_\alpha$} 是 U.I.。
*   **有限个**: 有限个可积随机变量的集合总是 U.I.。
*   **$L^p$ 有界 ($p>1$)**: 若 $\sup_{\alpha} \mathbb{E}[|X_\alpha|^p] < \infty$ ($p>1$)，则 {$X_\alpha$} 是 U.I. (见 [[Wiki - 随机变量一致可积的判别]])。

### 2. 引理 5.2 (必要条件: $L^1$ 有界)
若 $\{X_n\}$ 是 U.I.，则它一定是 **一致 $L^1$ 有界** 的，即：
$$
\sup_{n \ge 1} \mathbb{E}[|X_n|] < \infty
$$
*   *注意*: 反之不成立 (反例：$X_n = n \mathbb{1}_{(0, 1/n]}$ 在 Lebesgue 测度下)。

[[Wiki - Lp线性空间]]
### 3. 引理 5.3 (充要条件)
$\{X_n\}$ 是 U.I. **当且仅当** 满足以下两个条件：
1.  **一致 $L^1$ 有界**: $\sup_n \mathbb{E}[|X_n|] < \infty$。
2.  **一致绝对连续**: 对任意 $\varepsilon > 0$，存在 $\delta > 0$，使得对任意 $A \in \mathcal{F}$，只要 $\mathbb{P}(A) < \delta$，就有：
    $$
    \sup_{n \ge 1} \mathbb{E}[|X_n| \mathbb{1}_A] < \varepsilon
    $$
[[Wiki - 随机变量一致绝对连续]]
## 判别准则

关于如何更方便地判别一致可积性（例如 de la Vallée-Poussin 准则），请参见：
*   [[Wiki - 随机变量一致可积的判别]]

## 核心应用

*   **[[Wiki - Vitali收敛定理]]**: $X_n \xrightarrow{\mathbb{P}} X$ 且 {$|X_n|^p$} U.I. $\iff X_n \xrightarrow{L^p} X$。
*   **[[Wiki - 鞅收敛定理]]**: 鞅的 $L^1$ 收敛依赖于一致可积性。
