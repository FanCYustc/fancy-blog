---
aliases:
  - Levy's Characterization Theorem
info:
date: 2025-12-26-星期五 17:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
  - 随机分析/随机积分
id: wiki20251226170001
banner: "![[astroflow.gif]]"
---

**Lévy 字符化定理 (Lévy's Characterization Theorem)** 是随机分析中识别布朗运动最强有力的工具。它指出，要证明一个过程是布朗运动，我们不需要验证复杂的有限维分布（高斯性）和独立增量性，而只需验证其“鞅性质”和“二次变差”。

## 1. 定理陈述

设 $M = \{M_t, \mathcal{F}_t; t \ge 0\}$ 是一个定义在 $(\Omega, \mathcal{F}, P)$ 上的**连续局部鞅**[[Wiki - 局部鞅]]，且初值 $M_0 = 0$。如果 $M$ 的二次变差 [[Wiki - 二次变差]]过程满足：
$$ \langle M \rangle_t = t, \quad \forall t \ge 0, \quad P\text{-a.s.} $$
那么 $M$ 是一个标准的**布朗运动**（即 Wiener 过程）[[Wiki - brown运动]]。

### 多维形式
设 $M = (M^{(1)}, \dots, M^{(d)})$ 是 $d$-维连续局部鞅，且 $M_0 = \mathbf{0}$。如果其分量间的交叉变差满足：
$$ \langle M^{(i)}, M^{(j)} \rangle_t = \delta_{ij} t, \quad 1 \le i, j \le d $$
其中 $\delta_{ij}$ 是 Kronecker delta 符号（即对角线为 $t$，非对角线为 0），那么 $M$ 是一个 $d$-维标准布朗运动。

### 定理的意义

1.  **几何与概率的联系：** 定理表明，只要一个过程没有漂移（局部鞅）且具有恒定的波动率（$\langle M \rangle_t = t$），它必然表现出高斯分布的特性。
2.  **证明工具：** 在利用测度变换（Girsanov 定理）或随机时间变换构造新的布朗运动时，Lévy 定理是验证结果过程为布朗运动的标准方法。
3.  **鞅的不变性：** 它暗示了布朗运动在很多变换（如旋转、特定的时间变换）下保持不变。

### 证明思路

证明的核心在于利用**随机指数**和**特征函数**。

1.  考虑指数过程 $Z_t = \exp(iu M_t + \frac{1}{2}u^2 t)$。[[Wiki - 随机指数]]
2.  利用 [[Wiki - Ito公式]]，对 $f(x, t) = \exp(iu x + \frac{1}{2}u^2 t)$ 求微分。
3.  由于 $\langle M \rangle_t = t$，伊藤公式中的二阶项 $\frac{1}{2}(iu)^2 d\langle M \rangle_t$ 恰好消去了时间导数项 $\frac{1}{2}u^2 dt$。
4.  结果表明 $Z_t$ 是一个局部鞅（进而证明是真鞅）[[Wiki - 局部鞅]]。
5.  这意味着 $E[\exp(iu (M_t - M_s)) | \mathcal{F}_s] = \exp(-\frac{1}{2}u^2 (t-s))$，这正是正态分布的特征函数 [[Wiki - 正态分布]]。

[[Wiki - 特征函数的唯一性定理]]