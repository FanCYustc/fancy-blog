---
aliases:
  - Engle's ARCH Test
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/检验
id: wiki20251216142004
banner: "![[astrowalk.gif]]"
---


## Def 1 ARCH 效应

**ARCH 效应**指的是时间序列的残差序列 $\{a_t\}$ 存在**条件异方差性**，即序列本身可能不相关，但其平方序列 $\{a_t^2\}$ 表现出显著的自相关性（波动率聚类）。

在建立波动率模型之前，必须先检验残差序列是否存在 ARCH 效应。[[Wiki - ARCH模型]]

## Met 1 Ljung-Box 检验 (对平方残差)

对均值方程的残差平方序列 $\{a_t^2\}$ 进行 [[Wiki - 白噪声检验]]。

-   **原假设 $H_0$**：$\{a_t^2\}$ 序列的前 $m$ 阶自相关系数都为 0（不存在 ARCH 效应）。
-   **备择假设 $H_1$**：$\{a_t^2\}$ 序列存在自相关性。

统计量：
$$
Q(m) = T(T+2) \sum_{k=1}^m \frac{\hat{\rho}_k^2(a_t^2)}{T-k}
$$
若 $p$ 值小于显著性水平（如 0.05），则拒绝原假设，认为存在 ARCH 效应，需要建立波动率模型。

## Met 2 Lagrange Multiplier (LM) 检验

又称 **Engle's ARCH Test**。

1.  建立辅助回归模型：
    $$ a_t^2 = \alpha_0 + \alpha_1 a_{t-1}^2 + \dots + \alpha_m a_{t-m}^2 + e_t $$
2.  计算检验统计量 $LM = T \cdot R^2$，其中 $T$ 是样本量，$R^2$ 是辅助回归的可决系数。
3.  在原假设（$\alpha_1 = \dots = \alpha_m = 0$）下，该统计量渐近服从 $\chi^2(m)$ 分布。[[Wiki - 卡方分布]]

若 $LM > \chi^2_\alpha(m)$，则拒绝原假设，存在 ARCH 效应。
