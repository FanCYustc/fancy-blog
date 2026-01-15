---
aliases:
  - Tensor
info: 矢量空间上的多重线性映射。
date: 2026-01-09-星期五 10:02
update:
tags:
  - wiki/month01
  - wiki/year2024
id: wiki20260109100203
banner: "![[astrowalk.gif]]"
---

# 定义

**张量 (Tensor)** 是定义在矢量空间及其对偶空间上的多重线性映射（Multilinear Map）。

一个 **$(k, l)$ 型张量** $T$ 是一个映射：
$$
T: \underbrace{V^* \times \dots \times V^*}_k \times \underbrace{V \times \dots \times V}_l \to \mathbb{R}
$$
形象地说，$T$ 是一个有 $k$ 个“上槽”（输入对偶矢量/余切向量）和 $l$ 个“下槽”（输入矢量/切向量）的机器。当所有槽都被填满时，它输出一个实数。

# 分量表示
在基底 ${\vec{e}_i}$ 及其对偶基 ${\theta^j}$ 下，$(k, l)$ 型张量 $T$ 可以写为：
$$ T = T^{i_1 \dots i_k}_{j_1 \dots j_l} \vec{e}_{i_1} \otimes \dots \otimes \vec{e}_{i_k} \otimes \theta^{j_1} \otimes \dots \otimes \theta^{j_l} $$
其中 $T^{i_1 \dots i_k}_{j_1 \dots j_l}$ 是张量的分量。

# 常见例子

| 张量类型 $(k, l)$ | 描述 | 例子 |
| :--- | :--- | :--- |
| $(0, 0)$ | 标量 (Scalar) | 温度、质量 |
| $(1, 0)$ | 逆变矢量 (Contravariant Vector) | 速度、位移 |
| $(0, 1)$ | 协变矢量 (Covariant Vector) | 梯度、1-形式 |
| $(0, 2)$ | 二阶协变张量 | 度规张量 $g_{ij}$ |
| $(1, 1)$ | 混合张量 | 线性变换矩阵 $A^i_j$ |
| $(2, 0)$ | 二阶逆变张量 | 逆度规 $g^{ij}$ |

# 运算
*   **缩并 (Contraction)**：令张量的一个上指标和一个下指标相同并求和，从而得到一个阶数更低的张量（$(k-1, l-1)$ 型）。
    *   例：$T^i_i$ 是 $(1,1)$ 型张量 $T$ 的迹（Trace）。
*   **张量积 (Tensor Product)**：两个张量的张量积是一个更高阶的张量。
