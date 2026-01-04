---
aliases:
info:
date: 2025-09-22-星期一 20:49
update:
tags:
  - wiki/year2025
  - wiki/month09
  - 随机过程/鞅论
id: wiki20250922204916
banner: "![[astrowalk.gif]]"
---
---

## Lemma 1 Doob 下鞅不等式（Doob's Submartingale Inequality）

```ad-lemma
title: Doob下鞅不等式

设$\{X_n\}$是非负下鞅（nonnegative submartingale），$X_n^* = \max_{1 \leq i \leq n} X_i$，$\lambda > 0$。则
$$
\mathbb{P}\{X_n^* \geq \lambda\} \leq \frac{1}{\lambda} \mathbb{E}[X_n ; X_n^* \geq \lambda].
$$
```
### Proof 

**证明简述**：  
定义停止时 $\tau = \inf\{i : X_i \geq \lambda\} \wedge (n+1)$（空集取 $n+1$）。$\tau$ 是停止时，由可选停止定理（[[Wiki - Doob可选采样定理]]），$\mathbb{E}[X_n ; \tau \leq n] \geq \mathbb{E}[X_\tau ; \tau \leq n] \geq \lambda \mathbb{P}\{\tau \leq n\}$。由于 $\{X_n^* \geq \lambda\} = \{\tau \leq n\}$ 且 $X_\tau \geq \lambda$（当 $\tau \leq n$），即得不等式。该不等式精确控制最大值超过阈值的概率与截尾期望的关系。

## The 1 Doob 不等式

```ad-theorem
title: Doob最大不等式

设$\{X_t\}_{t \geq 0}$是一个非负submartingale，$\lambda > 0$。则
$$
\mathbb{P}\left( \sup_{0 \leq s \leq t} X_s \geq \lambda \right) \leq \frac{\mathbb{E}[X_t]}{\lambda}.
$$
```

在连续时间下设 $\{X_t\}$ 是一个非负的、càdlàg 的下鞅。对任意 $\lambda > 0$ 和 $T > 0$ ： $$ P\left( \sup_{0 \le t \le T} X_t \ge \lambda \right) \le \frac{1}{\lambda} E[X_T] $$

[[Wiki - 上鞅和下鞅]]
### Proof

**证明简述**：由鞅的停止定理（Doob 可选停止定理，参见 [[Wiki - Doob可选采样定理]]），令 $\tau = \inf\{s : X_s \geq \lambda\} \wedge t$，则 $\tau$ 是停止时，$\mathbb{E}[X_\tau] \geq \mathbb{E}[X_0]$（下鞅性质）。  

事件$\{\sup_{s \leq t} X_s \geq \lambda\} = \{\tau < t\}$上，$X_\tau \geq \lambda$，故  
$$
\mathbb{E}[X_t] \geq \mathbb{E}[X_\tau] \geq \lambda \mathbb{P}(\tau < t).
$$
从而得到不等式。该不等式控制了下鞅的最大逸出概率，注释：适用于右连续下鞅，推广到鞅需取绝对值。


## Proposition 1 非负随机变量的矩不等式（Moment Inequality for Nonnegative Random Variables）

```ad-proposition
title: 非负随机变量矩不等式

设$X, Y \geq 0$满足$\mathbb{P}\{Y \geq \lambda\} \leq \frac{1}{\lambda} \mathbb{E}[X ; Y \geq \lambda]$对所有$\lambda > 0$成立。若$p > 1$，则
$$
\|Y\|_p \leq \frac{p}{p-1} \|X\|_p.
$$
若$p=1$，则$\|Y\|_1 \leq \frac{e}{e-1} \|1 + X \ln^+ X\|_1$，其中$\ln^+ x = \max\{\ln x, 0\}$。
```

### Proof

**证明简述**（$p>1$）：截断 $Y^N = \min\{Y, N\}$，由 Fubini 定理 [[Wiki - Fubini定理]]，
$$
\mathbb{E}(Y^N)^p = p \int_0^N \lambda^{p-1} \mathbb{P}\{Y \geq \lambda\} d\lambda \leq p \int_0^N \lambda^{p-2} \mathbb{E}[X ; Y \geq \lambda] d\lambda = \frac{p}{p-1} \mathbb{E}[X (Y^N)^{p-1}]$$
Hölder 不等式 [[Wiki - Holder不等式]]得 $\mathbb{E}(Y^N)^p \leq \frac{p}{p-1} \|X\|_p \|Y^N\|_{p-1}^{p-1}$，故 $\|Y^N\|_p \leq \frac{p}{p-1}^{1/p} \|X\|_p$。单调收敛定理下 $N \to \infty$ 得结果。$p=1$ 类似，使用 $\ln^+ X$ 处理对数积分。

**注释**：将尾概率不等式转化为L_p范数控制，促进从概率到矩的分析。适用于鞅的最大值估计。

## Theorem 2 L_p Doob 下鞅不等式（L_p Doob Submartingale Inequality）

```ad-theorem
title: L_p Doob下鞅不等式

设$\{X_n\}$是非负下鞅。若$p > 1$，则
$$
\|X_n^*\|_p \leq \frac{p}{p-1} \|X_n\|_p.
$$
若$p=1$，则$\|X_n^*\|_1 \leq \frac{e}{e-1} \|1 + X_n \ln^+ X_n\|_1$。
```

### Proof

**证明简述**：$Y = X_n^*$满足$\mathbb{P}\{Y \geq \lambda\} \leq \frac{1}{\lambda} \mathbb{E}[X_n ; Y \geq \lambda]$。直接套用Proposition 5.4得结果。该定理推广Doob不等式到高阶矩，$\frac{p}{p-1}$是最佳常数。

**注释**：核心工具，用于鞅的L_p有界性分析。例如，对$p=2$，$\mathbb{E}[(\sup_{n \leq N} |S_n|)^2]^{1/2} \leq 2 \mathbb{E}[S_N^2]^{1/2}$（Kolmogorov示例）。在连续时间，需右连续路径，支持收敛定理。

## Cal 1 

**推论**：  
- 该定理蕴含下鞅的均匀可积性：Doob 不等式蕴含鞅收敛定理。若 $\{X_n\}$ 是 $L^1$ 有界鞅（$\sup_n \mathbb{E}[|X_n|] < \infty$），则 $\sup_n \mathbb{E}[|X_n|] < \infty$，且 $X_n$ 几乎处处收敛（参见 [[Wiki - 鞅收敛定理]]）。  
### Proof

**推导**：由最大不等式，$\mathbb{P}(\sup_n |X_n - X_m| > \epsilon) \to 0$ 当 $m,n \to \infty$，故 Borel-Cantelli 引理下收敛。[[Wiki - Borel-Cantelli引理]]