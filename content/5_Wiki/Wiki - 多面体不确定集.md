---
aliases: [Polyhedral Uncertainty Set]
info: 基于线性不等式组定义的不确定集，保持问题的线性特征
date: 2025-12-11-星期四 10:49:00
update: 
tags: [wiki/year2025, wiki/month12, 优化, 鲁棒优化]
id: wiki20251211104900
banner: "![[astrowalk.gif]]"
---

# 多面体不确定集 (Polyhedral Uncertainty Set)

## 定义
**多面体不确定集 (Polyhedral Uncertainty Set)** 是通过一组线性不等式定义的凸集。它利用多面体几何结构来限制不确定参数的范围。

一般形式为：
$$
\mathcal{U} = \{ z : \pmb{D} z \leq \pmb{d}, z \geq 0 \}
$$
或者更紧凑的：
$$
\mathcal{U} = \{ z : \pmb{A} z = \pmb{b}, z \geq 0 \}
$$
其中 $\pmb{D}, \pmb{d}$ (或 $\pmb{A}, \pmb{b}$) 是预定义的系数矩阵和向量。

## 特点
1.  **线性结构**：由于仅涉及线性约束，多面体不确定集的 [[Wiki - 鲁棒对等式]]仍然保持为**线性规划 (LP)**[[Scientech - 运筹学-线性规划]]。这在处理大规模问题时是一个巨大的计算优势。
2.  **灵活性**：可以通过增加线性约束来逼近更复杂的形状（如用多个切平面逼近椭球）。
3.  **特殊形式**：
    - [[Wiki - 盒式不确定集]]是多面体不确定集的一个特例（特殊的平行六面体）。
    - [[Wiki - 预算不确定集]] (Bertsimas & Sim) 也是一种特殊的多面体不确定集，通过限制非零偏差的总和（Budget）来定义。
4.  **局限性**：相比于[[Wiki - 椭球不确定集]]，多面体集在描述参数平滑的相关性（如正态分布的等高线）方面不如椭球自然。

## 鲁棒对等式转化
对于约束 $\pmb{a}^{\top} \pmb{x} \leq b$，若 $\pmb{a} \in \mathcal{U} = \{ \pmb{a} : \pmb{D} \pmb{a} \leq \pmb{d} \}$。
根据对偶理论，$\max_{\pmb{a} \in \mathcal{U}} \pmb{a}^{\top} \pmb{x}$ 的对偶问题为：
$$
\min_{\pmb{\lambda}} \pmb{d}^{\top} \pmb{\lambda}
$$
$$
\text{s.t.} \quad \pmb{D}^{\top} \pmb{\lambda} = \pmb{x}, \quad \pmb{\lambda} \geq 0
$$
代回原约束，得到鲁棒对等式：
$$
\pmb{d}^{\top} \pmb{\lambda} \leq b
$$
$$
\pmb{D}^{\top} \pmb{\lambda} = \pmb{x}
$$
$$
\pmb{\lambda} \geq 0
$$
这依然是一个线性规划约束。

[[Wiki - 鲁棒优化]]