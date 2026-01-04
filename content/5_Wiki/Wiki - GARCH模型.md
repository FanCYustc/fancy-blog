---
aliases:
  - 广义自回归条件异方差模型
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142005
banner: "![[astrowalk.gif]]"
---

## Def 1 GARCH 模型

**广义自回归条件异方差模型 (Generalized ARCH Model)**，简称 **GARCH 模型**，由 **Bollerslev (1986)** 提出。它是 [[Wiki - ARCH模型]] 的推广，类似于 AR 模型 [[Wiki - AR模型]]推广到 ARMA 模型 [[Wiki - ARMA模型]]。

GARCH($m, s$) 模型假设条件方差 $\sigma_t^2$ 不仅依赖于过去的残差平方，还依赖于过去的条件方差：

$$a_t = \sigma_t \varepsilon_t$$ 
$$ \sigma_t^2 = \alpha_0 + \sum_{i=1}^m \alpha_i a_{t-i}^2 + \sum_{j=1}^s \beta_j \sigma_{t-j}^2 $$

最常用的是 **GARCH(1, 1)** 模型：
$$ \sigma_t^2 = \alpha_0 + \alpha_1 a_{t-1}^2 + \beta_1 \sigma_{t-1}^2 $$

其中参数需满足 $\alpha_0 > 0, \alpha_i \ge 0, \beta_j \ge 0$ 以保证方差为正。

## Pro 1 统计性质

1.  **平稳性条件**：对于 GARCH(1, 1)，宽平稳的充要条件是 $\alpha_1 + \beta_1 < 1$。
2.  **参数简约**：GARCH(1, 1) 等价于一个无穷阶的 ARCH($\infty$) 模型，能用很少的参数描述长期的波动率记忆性。
3.  **无条件方差**：
    $$ \text{Var}(a_t) = \frac{\alpha_0}{1 - \sum \alpha_i - \sum \beta_j} $$

## Met 1 预测

对于 GARCH(1, 1)，向前 $h$ 步的波动率预测可以递推计算。
一步预测：
$$ \sigma_{t+1}^2(1) = \alpha_0 + \alpha_1 a_t^2 + \beta_1 \sigma_t^2 $$
多步预测（$h>1$）：
$$ E_t[\sigma_{t+h}^2] - \bar{\sigma}^2 = (\alpha_1 + \beta_1)^{h-1} (E_t[\sigma_{t+1}^2] - \bar{\sigma}^2) $$
其中 $\bar{\sigma}^2$ 是无条件方差。这表明预测值会以指数速度向长期均值回归（**均值回复**特性）。

