---
aliases:
info: 平面二次曲线在刚体变换下的代数不变量
date: 2026-01-13-星期二 11:15
update:
tags:
  - wiki/month01
  - 几何学
  - 数学分析/曲线积分和曲面积分
  - wiki/year2023
id: wiki20260113111501
banner: "![[astrowalk.gif]]"
---

# 二元二次型不变量

在 $\mathbb{E}^2$ 中，由二次方程定义的曲线（二次曲线）在刚体变换下，其系数虽然会改变，但存在特定的代数组合保持不变。这些**不变量**是判定曲线几何类型的核心依据。[[Wiki - 等距变换]]

## 1. 方程形式
考虑一般二次方程：
$$ F(x, y) = ax^2 + 2bxy + cy^2 + 2dx + 2ey + f = 0 $$
其对应的对称矩阵（全矩阵）为：
$$ \mathcal{M} = \begin{pmatrix} a & b & d \\ b & c & e \\ d & e & f \end{pmatrix}, \quad \text{二次部分矩阵 } \mathcal{A} = \begin{pmatrix} a & b \\ b & c \end{pmatrix} $$

## 2. 三大不变量

在刚体变换 $\phi(\vec{x}) = A\vec{x} + \vec{a}$ 下，以下三个量保持不变：

1.  **迹 (Trace) $I_1$**: [[Wiki - 矩阵的迹]]
    $$ I_1 = \operatorname{tr}(\mathcal{A}) = a + c $$
2.  **二次行列式 (Discriminant) $I_2$**:
    $$ I_2 = \det(\mathcal{A}) = ac - b^2 $$
    *   $I_2 > 0$：椭圆型（椭圆、点、空集）。
    *   $I_2 < 0$：双曲型（双曲线、相交直线）。
    *   $I_2 = 0$ ：抛物型（抛物线、平行直线、单直线）。[[Wiki - 行列式的定义]]
3.  **全行列式 $I_3$**:
    $$ I_3 = \det(\mathcal{M}) $$
    *   $I_3 \neq 0$：非退化曲线（椭圆、双曲线、抛物线）。
    *   $I_3 = 0$：退化曲线（点、直线对）。

## 3. 应用：标准型转化
利用不变量可以快速确定标准方程的系数。例如，对于有心曲线 ($I_2 \neq 0$)，其标准方程为 $\lambda_1 x'^2 + \lambda_2 y'^2 + \frac{I_3}{I_2} = 0$，其中 $\lambda_1, \lambda_2$ 是 $\mathcal{A}$ 的特征值。

