---
aliases:
  - Moment-based Ambiguity Set
info: 利用均值、协方差等矩信息构建的概率分布集合
date: 2025-12-11-星期四 10:52:00
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 优化
  - 鲁棒优化/分布鲁棒优化
id: wiki20251211105200
banner: "![[astrowalk.gif]]"
---

# 矩模糊集 (Moment-based Ambiguity Set)

## 定义
**矩模糊集 (Moment-based Ambiguity Set)** 是[[Wiki - 分布鲁棒优化]]中最经典的一类模糊集。它包含所有满足特定矩条件（如一阶矩均值、二阶矩协方差）的概率分布。

其一般形式为：
$$ 
\mathcal{F} = \left\{ \mathbb{P} \in \mathcal{P}_0(\Xi) \ \middle| \ \begin{aligned} & \mathbb{E}_{\mathbb{P}}[\pmb{\psi}(\xi)] = \pmb{\mu} \\ & \mathbb{E}_{\mathbb{P}}[\pmb{\phi}(\xi)] \preceq \pmb{\Sigma} \end{aligned} \right\} 
$$
其中 $\Xi$ 是支撑集，$\pmb{\psi}, \pmb{\phi}$ 是关于随机变量 $\xi$ 的函数（如 $\xi, \xi\xi^{\top}$）。

## 经典模型

### 1. Delage & Ye (2010) 模型
这是一个具有里程碑意义的模型，考虑了均值和协方差的不确定性：
$$ 
\mathcal{F}_{DY} = \left\{ \mathbb{P} \ \middle| \ \begin{aligned} & (\mathbb{E}_{\mathbb{P}}[\xi] - \hat{\pmb{\mu}})^{\top} \Sigma^{-1} (\mathbb{E}_{\mathbb{P}}[\xi] - \hat{\pmb{\mu}}) \leq \gamma_1 \\ & \mathbb{E}_{\mathbb{P}}[(\xi - \hat{\pmb{\mu}})(\xi - \hat{\pmb{\mu}})^{\top}] \preceq \gamma_2 \Sigma \end{aligned} \right\} 
$$
它允许真实均值在以经验均值 $\hat{\pmb{\mu}}$ 为中心的椭球内波动，真实协方差被经验协方差 $\Sigma$ 缩放后界定。该模型的最大优势是其对应的分布鲁棒优化问题可以转化为**半定规划 (SDP)**，在多项式时间内可解。

参见 [[Wiki - 随机变量的矩]] 和 [[Wiki - 矩估计]]。

### 2. Wiesemann, Kuhn & Sim (2014) 框架
为了处理更广泛的矩信息（如绝对离差、分段线性函数），Wiesemann 等人提出了**升维模糊集 (Lifted Ambiguity Set)** 的概念。通过引入辅助变量 $\pmb{u}$，将非线性的矩约束转化为高维空间中的线性约束：
$$ 
\mathcal{F}_{WKS} = \left\{ \mathbb{P} \in \mathcal{P}_0(\mathbb{R}^J \times \mathbb{R}^L) \ \middle| \ \begin{aligned} & \mathbb{E}_{\mathbb{P}}[\pmb{A}\xi + \pmb{B}\pmb{u}] = \pmb{b} \\ & \mathbb{P}[(\xi, \pmb{u}) \in \Xi_k] \in [\underline{p}_k, \bar{p}_k] \end{aligned} \right\} 
$$
该框架统一了许多之前的模型，并证明了只要支撑集 $\Xi$ 具有特定结构（如二阶锥可表示），DRO 问题就是计算可处理的。

## 特点
- **可解释性强**：基于均值和方差的约束符合直觉。
- **计算友好**：通常转化为 SDP 或 SOCP。
- **保守性**：相比于基于距离的模糊集，有时可能较为保守，因为它包含的分布形状可能差异巨大。

