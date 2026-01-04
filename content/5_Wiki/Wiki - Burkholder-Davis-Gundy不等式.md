---
aliases:
  - BDG不等式
info:
date: 2025-12-26-星期五 17:10
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 随机分析/鞅论
  - 随机分析/随机积分
id: wiki20251226171001
banner: "![[astroflow.gif]]"
---
---

**Burkholder-Davis-Gundy (BDG) 不等式** 是随机分析和鞅论中最重要的估计工具之一。它建立了连续局部鞅的**最大值**与其**二次变差**之间的紧密联系，表明这两个随机变量在 $L^p$ 范数意义下是“等价”的。

## 1. 定理陈述

对于任意给定的 $p > 0$，存在依赖于 $p$ 的正常数 $c_p$ 和 $C_p$，使得对于任意**连续局部鞅**[[Wiki - 局部鞅]] $M$（满足 $M_0 = 0$）和任意停时 $T$ [[Wiki - 停时]]，都有：

$$ c_p E [ \langle M \rangle_T^{p/2} ] \le E [ (M_T^*)^p ] \le C_p E [ \langle M \rangle_T^{p/2} ] $$

其中：
*   $M_T^* = \sup_{0 \le s \le T} |M_s|$ 是 $M$ 在 $[0, T]$ 上的最大值过程。
*   $\langle M \rangle_T$ 是 $M$ 的二次变差。[[Wiki - 二次变差]]
*   如果右端无穷大，则左端也为无穷大，反之亦然。

### 意义与应用

1.  **控制鞅的波动：** 
    BDG 不等式告诉我们要控制一个鞅 [[Wiki - 鞅]] $M_t$ 的最大幅度（$M^*$），只需要控制它的二次变差（$\langle M \rangle$）。反之亦然。这在证明随机积分的收敛性时非常有用。[[Wiki - 随机积分的定义]]

2.  **随机积分的 $L^p$ 估计：**
    对于随机积分 $M_t = \int_0^t X_s dW_s$，其二次变差为 $\int_0^t X_s^2 ds$。BDG 不等式给出了积分矩的界限：
    $$ E [ \sup_{0 \le t \le T} \left| \int_0^t X_s dW_s \right|^p ] \asymp E [ \left( \int_0^T X_s^2 ds \right)^{p/2} ] $$
    这比经典的伊藤等距（仅适用于 $p=2$）要强大得多。[[Wiki - Ito等距定理|随机积分的二次变差]]

3.  **通用性：** 
    该不等式对所有的 $p > 0$ 都成立，而不限于 $p > 1$（相比之下，Doob 极大不等式通常需要 $p > 1$）。[[Wiki - Doob不等式]]

### 特例

*   **p=2:**
    这与伊藤等距紧密相关。$E[(M_T^*)^2] \le 4 E[M_T^2] = 4 E[\langle M \rangle_T]$ (由 Doob 不等式 + 鞅性质)。BDG 提供了反向的控制。
