---
aliases:
info:
date: 2025-12-26-星期五 16:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/随机积分
id: wiki20251226160000
banner: "![[astrowalk.gif]]"
---
---

标准的伊藤积分定义依赖于被积函数和积分器满足较强的平方可积性条件 $\mathbb{E} \int X^2 d\langle M \rangle < \infty$。为了处理更广泛的过程（例如几何布朗运动，其矩可能发散），我们需要利用**局部化 (Localization)** 技术，将随机积分推广到**连续局部鞅 (Continuous Local Martingale)** 的框架下。

## 1. 广义被积函数空间 $\mathcal{P}^*$

对于连续局部鞅 [[Wiki - 局部鞅]] $M \in \mathcal{M}^{c, loc}$，我们定义更广泛的被积函数空间 $\mathcal{P}^*$。

一个循序可测过程 [[Wiki - 循序可测过程]] $X$ 属于 $\mathcal{P}^*$，如果它满足：
$$ P \left[ \int_0^T X_t^2 d\langle M \rangle_t < \infty \right] = 1, \quad \forall T \in [0, \infty) $$

**关键区别：**
*   **$L^2$ 空间 (旧):** 要求积分的**期望**有限。[[Wiki - 随机积分的定义]]
*   **$\mathcal{P}^*$ 空间 (新):** 只要求积分**几乎处处 (a.s.)** 有限。这允许被积函数在某些路径上很大，只要不发散到无穷即可。

## 2. 构造过程：局部化

构造的核心思想是“截断”。通过引入停时序列，将无界的局部鞅和被积函数“拉回”到行为良好的 $L^2$ 空间中。

**步骤：**

1.  **选取局部化停时序列：**
    由于 $M \in \mathcal{M}^{c, loc}$ 且 $X \in \mathcal{P}^*$，存在一个非减的停时序列 $S_n \uparrow \infty$ [[Wiki - 停时]]使得：
    *   停止后的过程 $M^{S_n}$ 是平方可积鞅 [[Wiki - 平方可积鞅]]。
    *   被积函数在 $t \le S_n$ 时有界（或积分有界）。
    通常可以显式构造为：
    $$ S_n = n \wedge \inf \left\{ t \ge 0 : \int_0^t X_s^2 d\langle M \rangle_s \ge n \right\} $$

2.  **定义局部积分：**
    对于每个 $n$，截断后的过程 $M^{(n)} = M^{S_n}$ 和被积函数 $X^{(n)} = X \cdot \mathbf{1}_{[0, S_n]}$ 满足标准 $L^2$ 积分的条件。
    因此，我们可以定义第 $n$ 步的随机积分：
    $$ I_t^{(n)} = \int_0^t X^{(n)}_s dM^{(n)}_s $$

3.  **一致性检查 (Consistency):**
    对于 $m > n$，在较小的时间范围 $t \le S_n$ 内，两次定义的积分必须一致：
    $$ I_t^{(m)} = I_t^{(n)}, \quad \text{for } 0 \le t \le S_n $$
    这是保证全局定义存在的关键。

4.  **定义全局积分：**
    由于 $S_n \to \infty$，对于任意固定的 $t$，当 $n$ 足够大时 $S_n > t$。我们可以定义全局积分 $I_t(X)$ 为：
    $$ I_t(X) := I_t^{(n)}, \quad \text{on the set } \{t \le S_n\} $$
    或者更形式化地：$I_t(X) = \lim_{n \to \infty} I_t^{(n)}$。

## 3. 性质

通过这种方式构造的积分 $I(X) = \int X dM$ 具有以下性质：

*   **局部鞅性：** 结果过程 $I(X)$ 本身是一个**连续局部鞅** ($I(X) \in \mathcal{M}^{c, loc}$)。[[Wiki - 局部鞅]]
*   **二次变差：** 其二次变差公式依然成立：
    $$ \langle \int X dM \rangle_t = \int_0^t X_s^2 d\langle M \rangle_s $$
*   **不保证是真鞅：** 即使 $M$ 是真鞅，$I(X)$ 也可能只是局部鞅（例如几何布朗运动 [[Wiki - brown运动的变形#Def 1 几何 brown 运动]]的积分）。只有当 $\mathbb{E} \int X^2 d\langle M \rangle < \infty$ 等额外条件满足时，它才是真鞅。

