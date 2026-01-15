---
aliases:
  - Projective Transformation
  - Homography
info: 射影空间的可逆线性变换诱导
date: 2026-01-13-星期二 10:10
update:
tags:
  - wiki/month01
  - wiki/year2023
  - 几何学/射影几何
id: wiki20260113101001
banner: "![[astrowalk.gif]]"
---


# 定义

**射影变换 (Projective Transformation)**，也称为 **单应性 (Homography)** 或 **直射变换 (Collineation)**，是射影空间 $\mathbb{RP}^n$ 到自身的同构映射。[[Wiki - 射影空间与齐次坐标]]

它由 $\mathbb{R}^{n+1}$ 上的可逆线性变换[[Wiki - 线性映射|线性变换]]诱导。设 $A \in GL(n+1, \mathbb{R})$ 是一个非奇异矩阵，则其诱导的射影变换 $T_A$ 定义为：
$$
T_A([\mathbf{x}]) = [A\mathbf{x}]
$$
其中 $[\mathbf{x}]$ 表示向量 $\mathbf{x}$ 对应的齐次坐标点。

由于 $A$ 和 $\lambda A$ ($\lambda \neq 0$) 诱导相同的射影变换，射影变换群同构于 **射影线性群**:
$$
PGL(n+1, \mathbb{R}) := GL(n+1, \mathbb{R}) / \{\lambda I \mid \lambda 
∈ 
ℝ
^* 

\}
$$
[[Wiki - 埃尔朗根纲领]]
# 性质

1.  **保持共线性**: 将直线映为直线（共线点映为共线点）。
2.  **保持交比**: 射影变换保持共线四点的 **[[Wiki - 交比]]** 不变。这是射影变换的特征性质。
3.  **群结构**: 所有射影变换构成一个群 [[Wiki - 群]]。

# 射影变换基本定理

**一般位置 (General Position)**: 在 $\mathbb{RP}^n$ 中，如果 $n+2$ 个点中任意 $n+1$ 个点都不位于同一个超平面上，则称这 $n+2$ 个点处于一般位置。
*   在 $\mathbb{RP}^1$ (射影直线) 上，任意 3 个不同的点处于一般位置。
*   在 $\mathbb{RP}^2$ (射影平面) 上，任意 4 点若无 3 点共线，则处于一般位置。

**定理**: 设 $\{P_0, \dots, P_{n+1}\}$ 和 $\{Q_0, \dots, Q_{n+1}\}$ 是 $\mathbb{RP}^n$ 中两组处于一般位置的点，则存在**唯一**的射影变换 $T$，使得 $T(P_i) = Q_i$ 对所有 $i$ 成立。

*   **推论**: 射影直线上的射影变换由 3 对对应点唯一确定。
*   **推论**: 射影平面上的射影变换由 4 对对应点唯一确定。
