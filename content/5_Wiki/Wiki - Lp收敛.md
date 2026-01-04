---
aliases:
  - 均方收敛
info: Lp空间中的收敛性
date: 2025-12-15-星期一 14:40
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 概率论/极限理论
  - 实分析/lebesgue积分
  - 收敛
id: wiki20240422201013
banner: "![[astrowalk.gif]]"
---
---

# Lp 收敛 (Convergence in $L^p$)

## 定义

### 实分析定义
设 $1\leq p<\infty,f,f_{n}(n=1,2,\cdots)\in L^{p}(E)$. 若当 $n\to\infty$ 时，
$$
\|f_n-f\|_p = \left( \int_E |f_n - f|^p d\mu \right)^{1/p} \to 0
$$
则称 $f_n$ 依 $L^p$ 范数收敛于 $f$, 记为 $f_n\xrightarrow{L^p}f$。

### 概率论定义
设 $p \ge 1$，若随机变量列 $\{X_n\} \subset L^p(\Omega, \mathcal{F}, \mathbb{P})$ 和 $X \in L^p$ 满足：
$$
\lim_{n \to \infty} \mathbb{E}[|X_n - X|^p] = 0
$$
则称 $X_n$ 在 $L^p$ 意义下收敛到 $X$。
*   $p=1$: **平均收敛** (Convergence in mean)
*   $p=2$: **均方收敛** (Convergence in mean square)

[[Wiki - Lp线性空间]]
## 性质与定理

### 定理 5.4 (与依概率收敛的关系)
1.  **充分性**: 若 $X_n \xrightarrow{L^p} X$，则 $X_n \xrightarrow{\mathbb{P}} X$。[[Wiki - 依概率收敛]]
    *   证明利用 Markov 不等式 ：$\mathbb{P}(|X_n - X| > \varepsilon) \le \frac{\mathbb{E}[|X_n - X|^p]}{\varepsilon^p}$。
2.  **必要性条件**: 若 $X_n \xrightarrow{\mathbb{P}} X$，且满足以下任一条件，则 $X_n \xrightarrow{L^p} X$：
    *   **控制条件**: 存在 $Y \in L^p$ 使得 $|X_n| \le Y$ (a.e.)。
    *   **一致可积**: $\{|X_n|^p\}$ 是 **[[Wiki - 随机变量一致可积|一致可积]]** 的 (Vitali 收敛定理)。

### 其他性质
1.  **唯一性**: $L^p$ 收敛的极限是几乎处处唯一的。
2.  **矩收敛**: 若 $X_n \xrightarrow{L^p} X$，则 $\mathbb{E}[|X_n|^p] \to \mathbb{E}[|X|^p]$ (范数收敛)。