---
aliases: Box Uncertainty Set
info: 基于无穷范数定义的不确定集，最简单但最为保守
date: 2025-12-11-星期四 10:47:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化
id: wiki20251211104700
banner: "![[astrowalk.gif]]"
---

# 盒式不确定集 (Box Uncertainty Set)

## 定义
**盒式不确定集 (Box Uncertainty Set)**，又称为区间不确定集 (Interval Uncertainty Set)，是最简单的一类不确定集。它假设每个不确定参数 $z_i$ 都在一个独立的区间内变化，通过 $L_{\infty}$ 范数来描述。

数学表达为：
$$
\mathcal{U}_{\infty} = \{ z : \|z\|_{\infty} \leq \tau \}
$$
或者针对标称值 $\bar{z}$ 和偏差范围 $\hat{z}$：
$$ 
\mathcal{U} = \{ z : |z_i - \bar{z}_i| \leq \hat{z}_i, \quad \forall i 
$$

## 特点
1.  **几何形状**：在二维空间中是一个矩形，在三维空间中是一个长方体（盒子）。
2.  **独立性**：隐含假设各个参数的扰动是相互独立的，不考虑参数间的相关性。
3.  **计算复杂度**：其 [[Wiki - 鲁棒对等式]]通常是**线性规划 (LP)**[[Scientech - 运筹学-线性规划]]，求解非常高效。
4.  **保守性 (Conservatism)**：由于它包含了所有参数同时达到最坏边界的情况（例如所有资产收益率同时大跌），这在实际中发生的概率极低。因此，盒式不确定集通常被认为过于保守（Over-conservative）。

## 鲁棒对等式转化
对于线性约束 $\pmb{a}^{\top} \pmb{x} \leq b$，若 $\pmb{a}$ 在盒式集 $\mathcal{U} = \{ \pmb{a} : |\pmb{a}_i - \bar{\pmb{a}}_i| \leq \delta_i \}$ 内，其鲁棒对等式为：
$$ 
\sum_i \bar{a}_i x_i + \sum_i \delta_i |x_i| \leq b 
$$
引入辅助变量 $u_i \geq |x_i|$，可转化为纯线性规划约束：
$$ 
\sum_i \bar{a}_i x_i + \sum_i \delta_i u_i \leq b 
$$
$$ 
-u_i \leq x_i \leq u_i, \quad \forall i 
$$

## 改进
为了克服盒式不确定集的过度保守性，学者们提出了考虑总预算限制的[[Wiki - 预算不确定集]] (Budget Uncertainty Set) 和考虑相关性的[[Wiki - 椭球不确定集]]。

