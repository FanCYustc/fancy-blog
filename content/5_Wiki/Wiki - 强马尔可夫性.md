---
aliases:
  - Strong Markov Property
info:
date: 2025-12-19-星期五 13:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/markov链
id: wiki20251219130000
banner: "![[astrowalk.gif]]"
---
# Wiki - 强马尔可夫性

## 1. 定义
**强马尔可夫性 (Strong Markov Property)** 是普通马尔可夫性的推广，它断言过程在**随机停时 (Stopping Time)** 之后的行为，正如其在确定性时刻之后的行为一样，只依赖于停时时刻的状态。

对于 $d$ 维布朗运动（或更一般的强马氏过程）$X$，设 $T$ 是一个关于滤子[[Wiki - sigma代数流|滤子]] $\{\mathcal{F}_t\}$ 的停时。强马尔可夫性表述为：

对于任意有界 Borel 函数 $f$ 和任意 $\mathcal{F}_T$ -可测的有限停时 [[Wiki - 停时]] $T$（即 $P(T < \infty) = 1$），有：
$$
E^x [f(X_{T+t}) | \mathcal{F}_T] = E^{X_T} [f(X_t)]
$$
利用 [[Wiki - 移位算子]] $\theta_T$，这可以写得更简洁：
$$
E^x [Y \circ \theta_T | \mathcal{F}_T] = E^{X_T} [Y]
$$
其中 $Y$ 是路径空间上的有界随机变量。

## 2. 直观含义
“从头开始 (Starts Afresh)”：如果在随机时刻 $T$ 停下来观察过程，你会发现从 $X_T$ 开始的未来路径 $X_{T+t} - X_T$ 仍然是一个布朗运动，且与停时之前的信息 $\mathcal{F}_T$ 独立。

对比 [[Wiki - markov性]]

## 3. 重要应用
*   **[[Wiki - 反射原理]]**：通过在首达时 $T_b$ 处应用强马氏性，推导布朗运动最大值的分布。
*   **过程的拼接**：可以将两个独立的布朗运动路径在停时处拼接起来，形成一个新的过程。
*   **零集分析**：证明布朗运动的零点集没有孤立点。
