---
aliases:
info:
date: 2025-12-19-星期五 13:05
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机过程/brown运动
id: wiki20251219130500
banner: "![[astrowalk.gif]]"
---
# Wiki - Blumenthal 0-1律

## 1. 定理陈述
**Blumenthal 0-1 律** 描述了布朗运动在 $t=0$ 附近的局部行为的确定性。

设 $B = \{B_t\}$ 为从 $x$ 出发的布朗运动，$\{\mathcal{F}_t\}$ 为其自然过滤的右连续完备化。定义 $t=0$ 处的**萌芽 $\sigma$-代数 (Germ $\sigma$-algebra)** 为：
$$
\mathcal{F}_{0+} = \bigcap_{t>0} \mathcal{F}_t
$$
定理断言：对于任意 $A \in \mathcal{F}_{0+}$，有：
$$
 P^x(A) = 0 \quad \text{或} \quad P^x(A) = 1
$$
即 $\mathcal{F}_{0+}$ 对于概率测度 $P^x$ 是平凡的。

## 2. 直观含义

$\mathcal{F}_{0+}$ 包含的信息是那些“在 $t=0$ 之后瞬间就能决定”的事件。Blumenthal 0-1 律告诉我们，这瞬间的行为要么必然发生，要么几乎必然不发生，不存在“依概率 $p \in (0, 1)$ 发生”的随机性。

## 3. 应用实例

利用该定律可以证明布朗运动路径的许多极度不规则性质：
1.  **无穷次变号**：对于标准布朗运动，$P(\forall \epsilon > 0, \exists t \in (0, \epsilon) \text{ s.t. } B_t > 0) = 1$。结合对称性，这意味着 $B_t$ 在 0 附近几乎必然无穷次穿越原点。
2.  **不可微性**：可以证明 $t=0$ 处不可微的概率为 1（因为导数存在的事件属于 $\mathcal{F}_{0+}$，且可以通过放缩论证其概率不为 1）。
3.  **局部极值**：$t=0$ 不是局部极大值也不是局部极小值（几乎必然）。
