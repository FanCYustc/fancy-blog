---
aliases:
  - 非对称幂GARCH模型
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142010
banner: "![[astrowalk.gif]]"
---


## Def 1 APARCH 模型

**非对称幂 GARCH 模型 (Asymmetric Power ARCH)** 由 **Ding, Granger 和 Engle (1993)** 提出。它是一个非常通用的模型框架，通过引入幂参数 $\delta$，嵌套了多种常见的 GARCH 类模型。

## The 1 模型结构

APARCH($m, s$) 模型对条件标准差的 $\delta$ 次幂进行建模：

$$ 
\sigma_t^\delta = \alpha_0 + \sum_{i=1}^m \alpha_i (|a_{t-i}| - \gamma_i a_{t-i})^\delta + \sum_{j=1}^s \beta_j \sigma_{t-j}^\delta 
$$

其中：
-   $\delta > 0$ 是幂参数（通常由数据估计，常见值为 1 或 2）。
-   $\gamma_i$ ($|\gamma_i| < 1$) 是杠杆效应参数。

## Pro 1 嵌套关系

通过调整参数 $\delta$ 和 $\gamma$，APARCH 可以退化为以下模型：
1.  **GARCH**: $\delta = 2, \gamma_i = 0$。[[Wiki - GARCH模型]]
2.  **GJR-GARCH (TGARCH)**: $\delta = 2$。[[Wiki - TGARCH模型]]
3.  **Taylor/Schwert GARCH**: $\delta = 1$ (对标准差建模而非方差)。
4.  **Log-ARCH**: $\delta \to 0$。

APARCH 提供了一种灵活的方式来让数据“自己决定”波动率的最优变换形式（是方差、标准差还是其他幂次）。
