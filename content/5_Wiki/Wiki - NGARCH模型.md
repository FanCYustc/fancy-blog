---
aliases:
  - 非线性GARCH模型
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142011
banner: "![[astrowalk.gif]]"
---

## Def 1 NGARCH 模型

**非线性 GARCH 模型 (Nonlinear GARCH)**，或称 **非对称 GARCH (Asymmetric GARCH)**，由 **Engle 和 Ng (1993)** 提出。

[[Wiki - GARCH模型]]
它通过调整新息的“中心”来引入不对称性，使得方差对正负冲击的反应曲线（新闻冲击曲线）发生平移。

## The 1 模型结构

NGARCH(1, 1) 的形式为：

$$
\sigma_t^2 = \alpha_0 + \beta_1 \sigma_{t-1}^2 + \alpha_1 (a_{t-1} - \theta \sigma_{t-1})^2
$$

或者写成关于标准化残差 $\varepsilon_t = a_t / \sigma_t$ 的形式：
$$
\sigma_t^2 = \alpha_0 + \beta_1 \sigma_{t-1}^2 + \alpha_1 \sigma_{t-1}^2 (\varepsilon_{t-1} - \theta)^2
$$

## Pro 1 解释

-   $\theta$ 是位置平移参数。
-   如果 $\theta > 0$，则对于相同的幅度，负的冲击 ($\varepsilon_{t-1} < 0$) 将比正的冲击产生更大的 $(\varepsilon_{t-1} - \theta)^2$，从而导致更高的 $\sigma_t^2$。
-   这有效地捕捉了 [[Wiki - 杠杆效应]]。
-   与 [[Wiki - TGARCH模型]] 的“折线”不同，NGARCH 的新闻冲击曲线是一条中心偏移的抛物线。
