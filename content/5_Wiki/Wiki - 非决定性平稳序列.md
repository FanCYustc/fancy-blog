---
aliases:
  - 决定性序列
  - 纯非决定性平稳序列
info:
date: 2025-01-09-星期四 11:21
update:
tags:
  - wiki/month12
  - wiki/year2024
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20250109112112
banner: "![[astrowalk.gif]]"
---
---

## Def 1 非决定性平稳序列 (Non-deterministic Stationary Sequence)

根据 **定义 18.1**，对于零均值平稳序列 $\{X_t\}$ [[Wiki - 平稳序列]]，利用其所有历史信息 $X_n, X_{n-1}, \dots$ 对 $X_{n+1}$ 进行最佳线性预测 [[Wiki - 最优线性预测]]。

记一步预测的均方误差极限为：
$$
\sigma_1^2 = \lim_{m \to \infty} E[X_{n+1} - L(X_{n+1}|X_n, \dots, X_{n-m+1})]^2
$$

- 如果 $\sigma_1^2 > 0$，则称 $\{X_t\}$ 为**非决定性平稳序列**。这意味着历史信息不能完全决定未来，总有新的随机信息（新息）加入。
- 如果 $\sigma_1^2 = 0$，则称 $\{X_t\}$ 为**决定性平稳序列**。在 [[Wiki - Wold表示定理]] 中，决定性部分 $V_t$ 满足 $V_t \in H_{t-k}, \forall k > 0$。

## Def 2 纯非决定性 (Purely Non-deterministic)


对于零均值平稳序列 {Xt} [[Wiki - 平稳序列]]，定义 k 步线性预测的均方误差为：
$$
\sigma_k^2 = E[X_{n+k} - L(X_{n+k}|H_n)]^2
$$
其中 Hn 是时刻 n 及其以前的历史生成的闭线性子空间。

如果满足：
$$
\lim_{k \to \infty} \sigma_k^2 = \gamma_0 = \text{Var}(X_t)
$$
则称 $\{X_{t}\}$ 为**纯非决定性平稳序列**。

### Pro  性质

1.  **长期预测失效**：随着预测步长 k 的增加，预测误差的方差趋于序列本身的方差。这意味着利用无限久远的历史信息对当前的预测没有任何帮助（最佳预测趋于均值 0）。
    $$
    \lim_{k \to \infty} L(X_{n+k}|H_n) = 0
    $$
2.  **Wold 表示**：纯非决定性序列可以表示为白噪声（新息）的单边滑动和（MA ($\infty$)）：
    $$
    X_t = \sum_{j=0}^\infty a_j \varepsilon_{t-j}, \quad \sum a_j^2 < \infty, a_0=1
    $$
    其中 εt 是新息序列 [[Wiki - 新息估计]]。
3.  **谱密度**：纯非决定性序列具有谱密度，且满足 Kolmogorov 对数可积性条件 [[Wiki - 平稳序列的kolmogorov公式]]。

## 关联

- [[Wiki - 非决定性平稳序列]] ：非决定性序列包含纯非决定性部分和决定性部分。
- [[Wiki - ARMA模型]] ：任何满足因果性和可逆性条件的 ARMA 序列都是纯非决定性的。


根据 [[Wiki - Wold表示定理]]，任何非决定性平稳序列都可以分解为纯非决定性部分和决定性部分之和。


