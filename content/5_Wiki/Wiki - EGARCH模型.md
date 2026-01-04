---
aliases:
  - 指数GARCH模型
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142008
banner: "![[astrowalk.gif]]"
---
---

## Def 1 EGARCH 模型

**指数 GARCH 模型 (Exponential GARCH)** 由 **Nelson (1991)** 提出。它是最著名的非对称 GARCH 模型之一，旨在解决标准 [[Wiki - GARCH模型]] 的两个主要缺陷：
1.  无法捕捉 [[Wiki - 杠杆效应]]（即正负冲击对波动率影响的不对称性）。
2.  参数需要施加非负约束（$\alpha_i, \beta_j \ge 0$）。

## The 1 模型结构

EGARCH 模型对条件方差的**对数** $\ln(\sigma_t^2)$ 进行建模：

$$ 
\ln(\sigma_t^2) = \alpha_0 + \sum_{j=1}^s \beta_j \ln(\sigma_{t-j}^2) + \sum_{i=1}^m g(\varepsilon_{t-i}) 
$$

其中 $g(\varepsilon_t)$ 是加权的新息函数，包含两个部分：
$$ g(\varepsilon_t) = \theta \varepsilon_t + \gamma (|\varepsilon_t| - E|\varepsilon_t|) 
$$
或者写成更直观的分段形式：
$$ g(\varepsilon_t) = 
\begin{cases} 
(\theta + \gamma) \varepsilon_t - \gamma E|\varepsilon_t|, & \varepsilon_t \ge 0 \\
(\theta - \gamma) \varepsilon_t - \gamma E|\varepsilon_t|, & \varepsilon_t < 0
\end{cases}
$$

## Pro 1 关键特性

1.  **非对称性 (Asymmetry)**：
    -   $\theta \varepsilon_t$ 项捕捉了符号效应。如果 $\theta < 0$，则负的新息 ($\varepsilon_t < 0$) 会比正的新息导致更大的 $g(\varepsilon_t)$ 值，从而导致更大的下期波动率。这成功刻画了**杠杆效应**。
    -   $\gamma$ 项捕捉了大小效应（波动率聚类）。
2.  **无需非负约束**：由于是对 $\ln(\sigma_t^2)$ 建模，无论右边的计算结果是正还是负，取指数后的 $\sigma_t^2 = \exp(\dots)$ 恒为正。这大大简化了参数估计。
