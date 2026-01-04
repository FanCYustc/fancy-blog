---
aliases:
  - 线性平稳序列
  - 滑动平均
info: 
date: 2024-12-27-星期五 12:00
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 时间序列分析
  - 随机过程/平稳过程
id: wiki20241227120051
banner: "![[astrowalk.gif]]"
---
---

## Def 1 有限运动平均

$\{\epsilon_{t}\}$ 为 $WN(0,\sigma^{2})$ [[Wiki - 白噪声]]，定义
$$
X_{t}= \sum_{j=0}^{q}a_{j}\epsilon_{t-j}
$$
为有限运动平均，其中 $q\in \mathbb{N}, a_{0}\neq 0, a_{q}\neq 0$，称为有限运动平均或有限**滑动平均**。

满足 $EX_{t}=0, Cov(X_{t}, X_{t+k})=\sigma^{2}\sum_{j=0}^{q-k}a_{j}a_{j+k}$，为宽平稳序列[[Wiki - 平稳序列|宽平稳过程]]，且 $\gamma_{k}=0,\forall k>q$

称这样的序列是 q-相关的。

## Def 2 线性过程

对 $\{a_{j}\}\in l^{1}$ [[Wiki - 绝对收敛与条件收敛]]，对 $MN(0,\sigma^{2})$ 序列 $\{\epsilon_{t}\}$ 无限滑动平均得到
$$
X_{t}= \sum_{j=-\infty}^{\infty}a_{j}\epsilon_{t-j}
$$
为平稳序列，$EX_{t}=0,\gamma_{k}=\sigma^{2} \sum_{j=-\infty}^{\infty}a_{j}a_{j+k}$

且 $\{X_{t}\}$ 在 $L^{1}$ 范数下收敛 [[Wiki - 赋范空间]]

[[Wiki - 平均收敛]]
## Pro 1

若有 $\{a_{t}\}\in l^{2}$，则有 $X_{t}$ 是平稳序列，且在 $L^{2}$ 范数下是收敛的

[[Wiki - 平方可积|平方平均收敛]]

### Proof

首先有 [[Wiki - Cauchy-Schwarz不等式]]，$E|\epsilon_{t}|\leq \sigma$

按收敛定义验证


## Pro 2 自协方差收敛

对 $\{a_{t}\}\in l^{1}$，对应的 $\{X_{t}\}$ 有 $\sum_{j=-\infty}^{+\infty} |\gamma_{j}|<\infty$

特别的，当 $\{a_{t}\}\in l^{2}$ 时，$\lim_{ k \to \infty }\gamma_{k}\to 0$


[[Wiki - 级数的平方收敛]]