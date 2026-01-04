---
aliases:
  - 多维鞅的时间变换
info: Theorem 4.13 in Karatzas & Shreve
date: 2025-12-26-星期五 11:50
update: 2025-12-26-星期五
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/布朗运动
id: wiki20251226115001
banner: "![[astropainter.gif]]"
---
---

**Knight定理 (Knight's Theorem)** 是 [[Wiki - Dambis-Dubins-Schwarz定理]] 在多维情形下的推广。它处理的是一组相互**正交**的连续局部鞅，揭示了它们经过各自的时间变换后会变成相互独立的布朗运动。

## 1. 定理陈述

设 $M = (M^{(1)}, "，" M^{(d)})$ 是 $d$ 个连续局部鞅 ($M_0=0$)，满足以下两个条件：
1.  **两两正交 (Mutually Orthogonal):** 对于所有的 $i \neq j$，交叉变差 $\langle M^{(i)}, M^{(j)} \rangle_t = 0$ 几乎处处成立。[[Wiki - 二次变差|协变差]]
2.  **无限波动 (Unbounded Variation):** 对于每个 $k=1, "，" d$，其二次变差满足 $\lim_{t \to \infty} \langle M^{(k)} \rangle_t = \infty$ a.s. 

定义各自的逆二次变差（时间变换）为 [[Wiki - 随机时间变换]] ：
$$ T_k(s) = \inf \{ t \ge 0 : \langle M^{(k)} \rangle_t > s \}, \quad s \ge 0 $$

那么，定义在扩张概率空间上的过程组：
$$ B_s^{(k)} \triangleq M^{(k)}_{T_k(s)}, \quad 1 \le k \le d $$
是 $d$ 个**相互独立**[[Wiki - 随机变量的独立性]]的标准一维布朗运动。[[Wiki - brown运动]]

*   **独立性的源泉:** 原始鞅 $M^{(i)}$ 之间可能存在很强的依赖关系（虽然它们正交，但正交不等于独立）。Knight 定理表明，这种依赖性完全被“时间尺度的不同”所吸收。一旦我们在各自内在的“时钟”下观察它们，它们就变成了互不相干的纯噪声。
*   **多维 DDS:** 当 $d=1$ 时，这就是 Dambis-Dubins-Schwarz 定理。[[Wiki - Dambis-Dubins-Schwarz定理]]

### 应用场景

*   **弱解的存在性:** 在构造多维随机微分方程的弱解时，如果能构造出正交的鞅部分，就可以利用 Knight 定理将它们转化为独立的布朗运动驱动源。
*   **极限理论:** 在证明某些随机过程序列收敛到多维布朗运动时，Knight 定理是一个强有力的工具。
