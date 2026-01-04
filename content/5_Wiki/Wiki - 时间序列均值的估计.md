---
aliases: 
info: 
date: 2025-01-08-星期三 19:35
update: 
tags:
  - wiki/month11
  - wiki/year2024
  - 时间序列分析
  - 数理统计/点估计
id: wiki20250108193550
banner: "![[astrowalk.gif]]"
---
---

## The 1 均值估计

$x_{1},\dots,x_{N}$ 是平稳时间序列 [[Wiki - 平稳序列]] $\{X_{n}\}$ 的观测值，则 $\mu= EX_{t}$ 的估计值为

$$
\hat{\mu}= \frac{1}{N} \sum_{i=1}^{N}x_{i}
$$
## Pro 1

设平稳列 $\{X_{t}\}$ 的自协方差函数为 $\{\gamma_{k}\}$ ，则

1. 均值的估计 $\hat{\mu}= \overline{x}$ 是无偏估计 [[Wiki - 无偏估计]]
2. 如果 $\gamma_{k}\to 0$，则 $\overline{x}$ 均方收敛到 $\mu$ [[Wiki - 平均收敛]]，从而依概率收敛到 $\mu$（相合估计）[[Wiki - 相合估计]]
3. 如果时间序列 $\{X_{t}\}$ 是严平稳序列 [[Wiki - 严平稳过程]]，则 $\overline{x}$ 是强相合估计 [[Wiki - 几乎处处收敛]]



