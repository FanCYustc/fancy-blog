---
aliases:
  - Contravariant and Covariant
info: 矢量在基变换下的两种不同变换行为及指标升降。
date: 2026-01-09-星期五 10:01
update:
tags:
  - wiki/year2024
  - wiki/month04
id: wiki20260109100102
banner: "![[astrowalk.gif]]"
---
---

# 定义

**逆变 (Contravariant)** 和 **协变 (Covariant)** 描述了在基底变换下，几何对象的“分量”是如何随之变换的。

设基底变换为 $\vec{e}'_j = R_{kj} \vec{e}_k$（或 $\vec{e}'_j = \frac{\partial x^k}{\partial x'^j} \vec{e}_k$）。

[[Wiki - 爱因斯坦求和]]
## 逆变矢量 (Contravariant Vector)
*   **定义**：分量的变换规律与基底的变换规律**相反**（逆向）。
*   **记号**：指标写在**上方**，如 $x^i$。
*   **变换规则**：
    $$ x'^j = \frac{\partial x'^j}{\partial x^i} x^i $$
    (若基底变大，分量相应变小以保持矢量不变)。
*   **典型例子**：切向量（速度矢量） $v = v^i \vec{e}_i$。

## 协变矢量 (Covariant Vector)
*   **定义**：分量的变换规律与基底的变换规律**相同**（协同）。
*   **记号**：指标写在**下方**，如 $x_i$。
*   **变换规则**：
    $$ x'_j = \frac{\partial x^i}{\partial x'_j} x_i $$
*   **典型例子**：梯度矢量、对偶矢量（余切向量）。

# 关联

## 指标升降 (Raising and Lowering Indices)
逆变与协变分量可以通过**度规张量 (Metric Tensor)** $g_{ij}$ 及其逆 $g^{ij}$ 相互转化：
*   **降指标**：$x_i = g_{ij} x^j$
*   **升指标**：$x^i = g^{ij} x_j$

在欧几里得空间 [[Wiki - 欧几里得空间]]直角坐标系下，度规 $g_{ij} = \delta_{ij}$，此时逆变分量与协变分量数值相等，通常不作区分。但在曲线坐标系或非欧空间中，必须严格区分。[[Wiki - 度规]]
