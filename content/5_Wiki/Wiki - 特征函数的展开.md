---
aliases:
info: 特征函数的Taylor展开
date: 2023-11-16-星期四 15:20:20
update: 2025-12-17-星期三 16:30:57
tags:
  - 概率论/特征
  - fourier分析
  - wiki/month11
  - wiki/year2023
id: wiki20231116142322
banner: "![[astrowalk.gif]]"
---

# 特征函数的级数展开

特征函数的级数展开是证明中心极限定理的关键工具。它建立了随机变量的矩（Moments）与特征函数在 0 点附近的导数之间的联系。

## 误差估计

设 $p \in \mathbb{N}$，若随机变量 $X$ 具有 $p$ 阶矩（即 $\mathbb{E}[|X|^p] < \infty$）[[Wiki - 随机变量的矩]]，则对任意 $\theta \in \mathbb{R}$ ：

$$ 
\left| \Phi_{X} (\theta) - \sum_{k = 0}^{p} \frac{(\mathrm{i} \theta)^{k} \mathbb{E} [ X^{k} ]}{k !} \right| \leqslant \mathbb{E} \left[ \min \left(\frac{|\theta X|^{p + 1}}{(p + 1) !}, \frac{2 |\theta X|^{p}}{p !}\right) \right]. 
$$ 

该估计来自于复指数函数 $e^{\mathrm{i}x}$ 的 Taylor 展开误差。

[[Wiki - 随机变量的特征函数]]

[[Wiki - 全纯函数的Taylor展开]]
## 泰勒展开定理

基于上述引理，我们有如下带 Peano 余项的展开式：

**定理 6.1**
设 $p \in \mathbb{N}$，若 $\mathbb{E}[|X|^p] < \infty$，则对任意 $\theta \in \mathbb{R}$：

$$ 
\Phi_{X} (\theta) = 1 + \sum_{k = 1}^{p} \frac{(\mathrm{i} \theta)^{k}}{k !} \mathbb{E} \left[ X^{k} \right] + o (|\theta|^{p}), \quad (\theta \to 0) 
$$ 

### 特别情形 ($p=2$)
这是最常用的情形，用于证明中心极限定理：
若 $\mathbb{E}[X] = \mu, \operatorname{Var}(X) = \sigma^2 < \infty$，则 $\mathbb{E}[X^2] = \mu^2 + \sigma^2$，有：
$$ 
\Phi_{X} (\theta) = 1 + \mathrm{i} \theta \mu - \frac{\theta^2}{2} (\mu^2 + \sigma^2) + o(\theta^2) 
$$ 
若进一步假设 $\mu=0, \sigma=1$（标准化），则：
$$ 
\Phi_{X} (\theta) = 1 - \frac{\theta^2}{2} + o(\theta^2) 
$$ 

## 带 Lagrange 型余项的展开

存在连续函数 $R_p^\Phi(\theta)$ 使得：
$$ 
\Phi_{X} (\theta) = 1 + \sum_{k = 1}^{p} \frac{(\mathrm{i} \theta)^{k}}{k !} \mathbb{E} \left[ X^{k} \right] + \frac{1}{p !} R_{p}^{\Phi} (\theta) \theta^{p} 
$$ 
其中余项满足估计：
$$ 
|R_p^\Phi(\theta)| \leqslant \sup_{v \in [0, 1]} |\Phi_X^{(p)}(v\theta) - \Phi_X^{(p)}(0)| 
$$ 
由于 $\Phi_X^{(p)}$ 是连续的，故 $\lim_{\theta \to 0} R_p^\Phi(\theta) = 0$。

