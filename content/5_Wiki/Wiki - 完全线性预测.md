---
aliases:
  - 非决定性平稳序列
  - 随机变量线性相关
info: 
date: 2024-12-28-星期六 22:07
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 时间序列分析
  - 线性代数
id: wiki20241228220729
banner: "![[astrowalk.gif]]"
---
---

## Def 1 线性相关

如果有随机变量 $\{Y_{1},\dots,Y_{n}\}$ 满足存在不全为 0 的 $b_{1},\dots,b_{n}$ 使得
$$
Var\left( \sum_{i=1}^{n}b_{i}Y_{i} \right)=0
$$

[[Wiki - 方差]]就称 $Y_{1},\dots,Y_{n}$ 线性相关，否则称为线性无关

[[Wiki - 线性相关和线性无关]]

## Def 2 完全线性预测

对时间序列，如果 $X_{t}$ 可以由 $X_{1},\dots,X_{t-1}$ 线性表出，就称是 $X_{t}$ 可以由 $X_{1},\dots,X_{t-1}$ 完全线性预测。

## Pro 1

$X_{t-1},\dots,X_{t-n}$ 线性无关当且仅当

$$
Var\left[ \sum_{j=1}^{n}b_{j}X_{t-j}+b_{0} \right]= \boldsymbol{b}^{*}\Gamma_{n}\boldsymbol{b}>0
$$
即 $\Gamma_{n}$ 正定 [[Wiki - 正定矩阵]]

[[Wiki - 平稳序列|自协方差函数矩阵]]

反之，若 $\Gamma_{n}$ 正定，$\Gamma_{n+1}$ 不满秩，则 $X_{t}$ 可以由 $X_{t-1},\dots,X_{t-n}$ 完全线性预测

## Cal 1

对于线性平稳过程 [[Wiki - 线性过程]]，不能被完全线性预测

[[Wiki - 非决定性平稳序列]]

