---
aliases:
  - 自协方差函数矩阵
  - 宽平稳过程
info: 
date: 2024-12-27-星期五 10:57
update: 
tags:
  - wiki/year2024
  - 随机过程/平稳过程
  - 时间序列分析
  - wiki/month09
id: wiki20241227105756
banner: "![[astrowalk.gif]]"
---
---

## Def 1 宽平稳过程

如果时间序列 $\{X_t\} = \{X_t : t \in \mathbb{N}\}$ 满足 

1. 对任何 $t \in \mathbb{N}$，$E X_t^2 < \infty$； 
2. 对任何 $t \in \mathbb{N}$，$E X_t = \mu$； 
3. 对任何 $t, s \in \mathbb{N}$，$E[(X_t - \mu)(X_s - \mu)] = \gamma_{t - s}$，

则称 $\{X_t\}$ 是平稳时间序列，简称为平稳序列或平稳列。称实数列 $\{\gamma_t\}$ 为 $\{X_t\}$ 的**自协方差函数**。 

性质： 
- 期望、方差与 t 无关。 
- 时间平移不影响两时刻的相关系数。 
- 又称平稳序列为二阶矩平稳序列，还称为**宽平稳列或弱平稳列**。 

在 $t\in \mathbb{Z}$ 时，记 $\Gamma_{n}= \{\gamma_{j-k}\}_{j,k=1,\dots,n}$ 为**自协方差函数矩阵**

## Pro 1 

自协方差函数矩阵满足：

1. 对称性：$\gamma_{k}=\gamma_{-k}, k\in \mathbb{Z}$
2. 非负定性：$\Gamma_{n}$ 非负定 [[Wiki - 正定矩阵]] $\forall n\in \mathbb{Z}^{+}$
3. 有界性：$|\gamma_{k}|\leq \gamma_{0}, \forall k\in \mathbb{Z}$ 

且满足这三条性质的序列 $\{\gamma_{k}\}_{k\in \mathbb{Z}}$ 都成为非负定序列。**每个非负定序列都可以是一个平稳序列的自协方差函数.**

## Def 2 自相关系数

对平稳序列 $\{X_{t}\}$，定义**标准化序列**为 $Y_{t}= \frac{{X_{t}-\mu}}{\sqrt{ \gamma_{0} }}$，则有 $EY_{t}=0, VarY_{t}= 1$。

$\{Y_{t}\}$ 的自协方差函数 $\rho_{k}= \frac{\gamma_{k}}{\gamma_{0}}$ 称为平稳序列 $\{X_{t}\}$ 的自相关函数或自相关系数。

