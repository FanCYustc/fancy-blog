---
aliases:
  - GJR-GARCH Model
  - 门限GARCH模型
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142009
banner: "![[astrowalk.gif]]"
---

## Def 1 TGARCH 模型

**门限 GARCH 模型 (Threshold GARCH)**，由 **Zakoian (1994)** 和 **Glosten, Jagannathan, Runkle (1993)** 独立提出（后者通常称为 **GJR-GARCH**）。

它通过在方差方程中引入虚拟变量（示性函数）来直接处理好坏消息对波动率影响的不对称性。

## The 1 模型结构

TGARCH(1, 1) 的形式如下：

$$
\sigma_t^2 = \alpha_0 + \alpha_1 a_{t-1}^2 + \gamma_1 a_{t-1}^2 I_{t-1} + \beta_1 \sigma_{t-1}^2
$$

其中 $I_{t-1}$ 是示性函数：
$$
I_{t-1} = 
\begin{cases} 
1, & \text{若 } a_{t-1} < 0 \text{ (坏消息)} \\
0, & \text{若 } a_{t-1} \ge 0 \text{ (好消息)}
\end{cases}
$$

## Pro 1 解释

-   **好消息 ($a_{t-1} \ge 0$)** 对波动率的影响系数是 $\alpha_1$。
-   **坏消息 ($a_{t-1} < 0$)** 对波动率的影响系数是 $\alpha_1 + \gamma_1$。
-   如果 $\gamma_1 > 0$，说明坏消息会产生更大的波动，即存在 [[Wiki - 杠杆效应]]。
-   参数需满足非负约束。

与 [[Wiki - EGARCH模型]] 相比，TGARCH 的结构更直观，类似于分段线性的 GARCH [[Wiki - GARCH模型]]。
