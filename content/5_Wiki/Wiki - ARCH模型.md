---
aliases:
  - 自回归条件异方差模型
info:
date: 2025-12-16-星期二 14:20
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 时间序列分析/金融数据
id: wiki20251216142003
banner: "![[astrowalk.gif]]"
---

## Def 1 ARCH 模型

**自回归条件异方差模型 (AutoRegressive Conditional Heteroskedasticity Model)**，简称 **ARCH 模型**，由 **Robert Engle (1982)** 提出。这是第一个系统地对随时间变化的波动率进行建模的模型。

对于资产收益率序列 $r_t$，假设其均值方程为 $r_t = \mu_t + a_t$（其中 $\mu_t$ 为条件均值，通常设为常数或 ARMA 结构），则 ARCH($m$) 模型假设扰动项 $a_t$ 满足：

$$ a_t = \sigma_t \varepsilon_t $$
$$ \sigma_t^2 = \alpha_0 + \alpha_1 a_{t-1}^2 + \dots + \alpha_m a_{t-m}^2 $$

其中：
-   $\{\varepsilon_t\}$ 是独立同分布 (i.i.d.) 的白噪声序列，通常假设服从标准正态分布 $N(0,1)$ 或 $t$ 分布，且 $E(\varepsilon_t)=0, \text{Var}(\varepsilon_t)=1$。[[Wiki - 白噪声]]
-   $\alpha_0 > 0, \alpha_i \ge 0$ 为模型参数，以保证方差 $\sigma_t^2$ 始终为正。

## Pro 1 统计性质

1.  **条件方差时变**：$\text{Var}(a_t | F_{t-1}) = \sigma_t^2$，即当前的波动率依赖于过去的扰动平方（过去的大波动会导致未来的大波动）。
2.  **无条件方差恒定**：如果平稳条件满足（$\sum_{i=1}^m \alpha_i < 1$），则无条件方差为常数：
    $$ \text{Var}(a_t) = \frac{\alpha_0}{1 - \sum_{i=1}^m \alpha_i} $$
3.  **厚尾分布 (Heavy Tails)**：即使 $\varepsilon_t$ 服从正态分布，$a_t$ 的边缘分布也是厚尾的（峰度 $> 3$）。这符合金融数据的特征。


局限性：
1.  需要较多的滞后阶数 $m$ 才能充分描述波动率的持久性。
2.  对参数的非负约束较强。
3.  无法捕捉 [[Wiki - 杠杆效应]]（正负冲击的影响是对称的，因为是平方项）。

