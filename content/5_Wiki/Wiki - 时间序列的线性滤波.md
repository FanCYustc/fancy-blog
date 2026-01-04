---
aliases: 
info: 
date: 2024-12-27-星期五 16:43
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20241227164314
banner: "![[astrowalk.gif]]"
---
---

## Def 1 线性滤波

对 $\{h_{j}\}\in l^{1}$，如果有平稳序列 $\{X_{t}\}$ [[Wiki - 平稳序列|宽平稳过程]]，定义序列
$$
Y_{t}= \sum_{j=-\infty}^{+\infty} h_{j}X_{t-j}, t\in \mathbb{Z}
$$
称为对 $\{X_{t}\}$ 的一个线性滤波，$\{h_{j}\}$ 称为保时线性滤波器。此时 $\{Y_{t}\}$ 也是平稳序列

[[Wiki - 线性过程]]

## Pro 1 

$\{X_{t}\}$ 为平稳序列有谱函数 $F_{X}(\lambda)$，$\{h_{j}\}\in l^{1}$，$X_{t}$ 的自协方差函数为 $\gamma_{k}, k\in \mathbb{Z}$，则线性滤波输出序列 $\{Y_{t}\}$ 自协方差函数为

$$
\gamma_{k}^{Y}= \sum_{j,l=-\infty}^{+\infty}h_{j}h_{l}\gamma_{k+l-j}
$$
求和蕴含实数级数意义下收敛 [[Wiki - 无穷级数的收敛性]]

### Proof

由 [[Wiki - Lebesgue控制收敛定理]]

