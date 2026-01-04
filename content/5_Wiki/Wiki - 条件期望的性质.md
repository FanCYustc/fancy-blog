---
aliases:
info:
date: 2025-11-12-星期三 19:59
update:
tags:
  - wiki/year2025
  - wiki/month11
id: wiki20251112195902
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 条件期望的核心性质

条件期望 [[Wiki - 条件期望]]具有许多重要的性质，它们是随机分析和统计决策理论的基础。

```ad-proposition
title: 命题 1.1 （核心性质，引自讲义 4.2 节）

设 $X, Y$ 是概率空间 $(\Omega, \mathcal{F}, \operatorname{P})$ 上的可积随机变量，$\mathcal{G} \subset \mathcal{F}$ 是一个 $\sigma$-代数。
1.  **可测性 (C1)**：如果 $X \in \mathcal{G}$（即 $X$ 是 $\mathcal{G}$-可测的），则 $\operatorname{E}[X|\mathcal{G}] = X$ 几乎处处成立。特别地，对于任何常数 $C \in \mathbb{R}$，$\operatorname{E}[C|\mathcal{G}] = C$ 几乎处处成立。
2.  **独立性 (C2)**：设 $Y \in \mathcal{G}$ 且 $Z$ 独立于 $\mathcal{G}$。如果 $\psi(Y,Z)$ 是可积的，则：
    $$\operatorname{E}[\psi(Y, Z)|\mathcal{G}] = g(Y), \quad \text{其中 } g(y) := \operatorname{E}[\psi(y, Z)]$$
    一个重要推论是：如果 $Z$ 独立于 $\mathcal{G}$，则 $\operatorname{E}[h(Z)|\mathcal{G}] = \operatorname{E}[h(Z)]$ 几乎处处成立。
3.  **线性性 (C4)**：对于任意常数 $\alpha, \beta \in \mathbb{R}$，有：
    $$\operatorname{E}[\alpha X + \beta Y|\mathcal{G}] = \alpha \operatorname{E}[X|\mathcal{G}] + \beta \operatorname{E}[Y|\mathcal{G}] \quad \text{几乎处处成立}$$
4.  **单调性 (C5)**：如果 $X \le Y$ 几乎处处成立，则 $\operatorname{E}[X|\mathcal{G}] \le \operatorname{E}[Y|\mathcal{G}]$ 几乎处处成立。特别地，如果 $X \ge 0$ 几乎处处成立，则 $\operatorname{E}[X|\mathcal{G}] \ge 0$ 几乎处处成立。
5.  **全期望定律 / 塔性质 (C3 & C6)**：
    *   **一重塔性质**：$\operatorname{E}[\operatorname{E}[X|\mathcal{G}]] = \operatorname{E}[X]$。这体现了“**两步走思想**”，即先基于部分信息求期望，再对这个条件期望求期望，最终等于无条件期望。
    *   **多重塔性质**：如果 $\mathcal{G}_1 \subset \mathcal{G}_2 \subset \mathcal{F}$ 是嵌套的 $\sigma$-代数，则 $\operatorname{E}[\operatorname{E}[X|\mathcal{G}_2]|\mathcal{G}_1] = \operatorname{E}[X|\mathcal{G}_1]$ 几乎处处成立。
      
```


## Pro 2 极限性质 (Convergence Theorems)

条件期望作为积分的一种推广，保留了勒贝格积分的三大收敛定理。

```ad-proposition
title: 命题 2.1 （极限交换）

设 $X_n$ 是定义在 $(\Omega, \mathcal{F}, \mathbb{P})$ 上的随机变量序列，$\mathcal{G} \subset \mathcal{F}$。

1.  **条件单调收敛定理 (Conditional MCT)**:
    如果 $0 \le X_n \uparrow X$ 几乎处处成立，则
    $$ \operatorname{E}[X_n|\mathcal{G}] \uparrow \operatorname{E}[X|\mathcal{G}] \quad \text{a.s.} $$

2.  **条件 Fatou 引理**:
    如果 $X_n \ge 0$ 几乎处处成立，则
    $$ \operatorname{E}[\liminf_{n \to \infty} X_n | \mathcal{G}] \le \liminf_{n \to \infty} \operatorname{E}[X_n | \mathcal{G}] \quad \text{a.s.} $$

3.  **条件控制收敛定理 (Conditional DCT)**:
    如果 $X_n \to X$ 几乎处处成立，且存在可积随机变量 $Y$ 使得 $|X_n| \le Y$ 对所有 $n$ 成立，则
    $$ \lim_{n \to \infty} \operatorname{E}[X_n | \mathcal{G}] = \operatorname{E}[X | \mathcal{G}] \quad \text{a.s.} $$
```


[[Wiki - fatou引理]]、[[Wiki - Lebesgue控制收敛定理]]、[[Wiki - 单调收敛定理]]
## Pro 3 重要的不等式

[[Wiki - Jensen不等式]]、 [[Wiki - Holder不等式]]

```ad-proposition
title: 命题 3.1 （条件不等式）

1.  **条件 Jensen 不等式**:
    如果 $\phi: \mathbb{R} \to \mathbb{R}$ 是凸函数，且 $X$ 和 $\phi(X)$ 都是可积的，则：
    $$ \phi(\operatorname{E}[X|\mathcal{G}]) \le \operatorname{E}[\phi(X)|\mathcal{G}] \quad \text{a.s.} $$
    *   例如：$|\operatorname{E}[X|\mathcal{G}]|^p \le \operatorname{E}[|X|^p|\mathcal{G}]$ (对于 $p \ge 1$)。

2.  **条件 Holder 不等式**:
    设 $p, q > 1$ 且 $1/p + 1/q = 1$。如果 $X \in L^p, Y \in L^q$，则：
    $$ |\operatorname{E}[XY|\mathcal{G}]| \le \operatorname{E}[|XY||\mathcal{G}] \le (\operatorname{E}[|X|^p|\mathcal{G}])^{1/p} (\operatorname{E}[|Y|^q|\mathcal{G}])^{1/q} \quad \text{a.s.} $$
```

[[Wiki - 数学期望]] [[Wiki - 数学期望的性质]]

[[Wiki - 概率空间]]

[[Wiki - 随机变量的独立性]]

