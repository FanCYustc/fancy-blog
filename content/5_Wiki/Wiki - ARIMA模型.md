---
aliases:
  - 单位根过程
info:
date: 2025-01-08-星期三 16:46
update:
tags:
  - wiki/month11
  - wiki/year2024
  - 时间序列分析
id: wiki20250108164651
banner: "![[astrowalk.gif]]"
---
---

## Def 1 ARIMA 模型

ARIMA $(p,d,q)$ 模型是**AR 部分有单位特征根**（即 1）的广义 ARMA 模型，$d$ 为单位特征根的重数。除了单位根以外，要求 AR 部分根都在单位圆外 [[Wiki - AR模型]]，**MA 部分单位圆内没有根**[[Wiki - MA模型]]。 ARIMA $(p,d,q)$ 序列是 $d$ 阶差分后服从 ARMA $(p,q)$ 模型的非平稳时间序列。设 $d$ 是一个正整数，如果 

$$ Y_{t}=(1-\mathscr{B})^{d}X_{t}=\sum_{k = 0}^{d}C_{d}^{k}(-1)^{k}X_{t - k}, \ t\in \mathbb{Z}, \tag{14.5} $$

是一个 ARMA $(p,q)$ 序列 [[Wiki - ARMA模型]]，其模型 MA 部分的特征多项式没有等于 1 的特征根，则称 $\{X_{t}\}$ 是一个求和自回归滑动平均 $(p,d,q)$ 序列. 简称为 ARIMA $(p,d,q)$ 序列，其中 $C_{d}^{k}$ 是二项式系数.

$(1-\mathcal{B})^{d}$ 就是对 $X_{t}$ 做 d 次差分

## Pro 1

对正整数 d，ARIMA (p, d, q) 模型都不是平稳序列 [[Wiki - 平稳序列]]

## Example 1 单位根过程

对 d=1 的 ARIMA (p, 1, q)，称为单位根过程

$X_{t}-X_{t-1}= (1-\mathcal{B}) X_{t}= Y_{t}$，$A (\mathcal{B}) Y_{t}= B(\mathcal{B})\epsilon_{t}$ 中 $Y_{t}$ 是通解

最简单的单位根过程是随机游动过程，即 $X_{t}= X_{t-1}+ \epsilon_{t}$

