---
aliases:
info: 特征函数的性质
date: 2025-12-17-星期三
update: 2025-12-17-星期三
tags:
  - 概率论/特征
  - fourier分析
  - wiki/year2023
  - wiki/month11
id: wiki20231116142322
banner: "![[astrowalk.gif]]"
---

# 特征函数的性质

设 $X$ 为随机变量，$\Phi_X(\theta)$ 为其特征函数。

## 基本性质 (引理 6.3)

1.  **初值与有界性**:
    $$ \Phi_X(0) = 1, \quad |\Phi_X(\theta)| \leqslant 1, \quad \forall \theta \in \mathbb{R} $$ 
2.  **Hermite 对称性**:
    $$ \Phi_X(-\theta) = \overline{\Phi_X(\theta)} $$ 
    这意味着若 $X$ 的分布对称（$X \stackrel{d}{=} -X$），则 $\Phi_X(\theta)$ 是实值偶函数。
3.  **一致连续性**:
    函数 $\theta \mapsto \Phi_X(\theta)$ 在 $\mathbb{R}$ 上是一致连续的。[[Wiki - 度量空间上的一致连续性]]
4.  **线性变换**:
    对任意 $a, b \in \mathbb{R}$，若 $Y = aX + b$，则
    $$ \Phi_{aX + b}(\theta) = e^{\mathrm{i}\theta b}\Phi_X(a\theta) $$ 
5.  **半正定性**:
    $\theta \mapsto \Phi_X(\theta)$ 是一个 [[Wiki - 半正定函数]]。即对任意 $\theta_1, \dots, \theta_m \in \mathbb{R}$，矩阵 $A = (\Phi_X(\theta_j - \theta_k))_{jk}$ 是半正定的。
6.  **收敛性**:
    若 $X_n \xrightarrow{d} X$，则 $\Phi_{X_n}(\theta) \to \Phi_X(\theta)$ 对任意 $\theta$ 成立（且在紧集上一致收敛，参见 [[Wiki - 分布的连续性定理]]）。

## 独立随机变量的和
若 $X, Y$ 相互独立，则
$$ \Phi_{X+Y}(\theta) = \Phi_X(\theta) \Phi_Y(\theta) $$ 
这一性质使得特征函数成为处理独立随机变量和的有力工具（如证明 [[Wiki - 中心极限定理]]）。

[[Wiki - 随机变量的独立性]]
## 矩与导数
若 $\mathbb{E}[|X|^k] < \infty$ [[Wiki - 随机变量的矩]]，则 $\Phi_X (\theta)$ 是 $k$ 阶连续可微的，且
$$ \Phi_X^{(k)}(0) = \mathrm{i}^k \mathbb{E}[X^k] $$ 
参见 [[Wiki - 特征函数的展开]]。