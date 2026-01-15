---
aliases:
  - Pappus Theorem
info: 射影几何经典定理
date: 2026-01-13-星期二 10:30
update:
tags:
  - wiki/month01
  - wiki/year2023
  - 几何学/射影几何
id: wiki20260113103001
banner: "![[astrowalk.gif]]"
---


# 定理陈述

**帕普斯定理 (Pappus's Hexagon Theorem)**：
设点 $A, B, C$ 共线于直线 $l$，点 $a, b, c$ 共线于直线 $l'$ ($l \neq l'$).
则以下三个交点是共线的：
$$
P = Ab \cap aB, \quad Q = Ac \cap aC, \quad R = Bc \cap bC
$$
即六边形 $AbCaBc$ 的三组对边的交点共线。这条直线通常被称为 **帕普斯线 (Pappus Line)**。

# 意义

1.  **公理地位**: 在希尔伯特公理体系 [[Wiki - 希尔伯特公理]]中，帕普斯定理通常作为一条公理（或由其他公理推出）。它等价于底层坐标域的**乘法交换律**。
2.  **特殊情况**: 它是 **[[Wiki - 帕斯卡定理|帕斯卡定理]]** 在二次曲线退化为两条直线时的特例。

# 对偶性

帕普斯定理 [[Wiki - 射影对偶原理]]的对偶命题是：
设直线 $l_1, l_2, l_3$ 共点于 $O$，直线 $l'_1, l'_2, l'_3$ 共点于 $O'$。
则三条直线 $(l_1 \cap l'_2) \vee (l'_1 \cap l_2)$, $(l_1 \cap l'_3) \vee (l'_1 \cap l_3)$, $(l_2 \cap l'_3) \vee (l'_2 \cap l_3)$ 共点。
可以证明，帕普斯定理的对偶命题等价于其自身。
