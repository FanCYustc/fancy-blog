---
aliases: 
info: 
date: 2025-03-18-星期二 09:32
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 热学
  - 概率论
  - 图论
  - 随机过程/markov链
id: wiki20250318093237
banner: "![[astrowalk.gif]]"
---
---

## Def 1 伊辛模型

Ising 模型是一种用于描述二元随机变量（通常取值为 $+1$ 或 $-1$）联合分布的概率模型，广泛应用于统计物理学、机器学习和社会科学等领域。它特别适用于描述系统中小单元（如磁针、意见等）之间的相互作用。

Ising 模型的联合分布可以表示为 [[Wiki - Hammersley-Clifford定理]] ：

$$
p(\mathbf{x}) = \frac{1}{Z} \exp\left(-\sum_{i \sim j} \phi_{ij}(x_i, x_j)\right)
$$

其中：
- $\mathbf{x} = (x_1, x_2, \dots, x_n)$ 是系统的状态向量，每个 $x_i$ 取值为 $+1$ 或 $-1$。
- $i \sim j$ 表示变量 $x_i$ 和 $x_j$ 是相邻的（在物理模型中，通常是空间上相邻的格点）。[[Wiki - 高斯图模型]]
- $\phi_{ij}(x_i, x_j)$ 是描述相邻变量之间相互作用的势函数。
- $Z$ 是归一化常数，称为**配分函数**，确保概率分布的总和为 1。

在Ising模型中，势函数通常表示为：

$$
\phi_{ij}(x_i, x_j) = a_{ij} + b_i x_i + c_j x_j + d_{ij} x_i x_j
$$
[[Wiki - 线性回归模型]]

其中：
- $a_{ij}, b_i, c_j, d_{ij}$ 是模型的参数。
- $d_{ij}$ 表示相邻变量之间的相互作用强度，$d_{ij} > 0$ 表示相邻变量倾向于取相同的值（协同作用），$d_{ij} < 0$ 表示相邻变量倾向于取相反的值（竞争作用）。
- $b_i$ 和 $c_j$ 表示外部场对变量 $x_i$ 和 $x_j$ 的影响。

如果假设系统具有一致性（homogeneity），即所有相邻变量之间的相互作用强度相同（$d_{ij} \equiv d$），并且外部场的影响也相同（$b_i \equiv b$ 和 $c_j \equiv c$），则势函数可以简化为：

$$
\phi_{ij}(x_i, x_j) = a + b x_i + c x_j + d x_i x_j
$$

这种简化后的模型称为**齐次Ising模型**，常用于描述物理系统中的磁化现象。

在物理模型中，Ising分布的联合分布通常表示为：

$$
p(\mathbf{x}) = \frac{1}{Z} \exp\left(-\frac{H(\mathbf{x})}{T}\right)
$$

其中：
- $H(\mathbf{x})$ 是**能量函数**（Hamiltonian），定义为：

$$
H(\mathbf{x}) = -J \sum_{i \sim j} x_i x_j - h \sum_{i} x_i
$$

- $J$ 表示相邻变量之间的相互作用强度。
- $h$ 表示外部磁场的影响。
- $T$ 表示系统的温度，控制系统的随机性。
