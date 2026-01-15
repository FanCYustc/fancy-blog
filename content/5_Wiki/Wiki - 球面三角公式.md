---
aliases:
info: 球面三角形边角关系的定量公式
date: 2026-01-13-星期二 10:20
update:
tags:
  - wiki/month01
  - 几何学/球面几何
  - wiki/year2023
id: wiki20260113102001
banner: "![[astrowalk.gif]]"
---

# 球面三角公式

利用向量代数（内积与混合积），可以推导出球面三角形边角关系的一系列公式。[[Wiki - 内积]]、[[Wiki - 混合积]]
设单位球面上三角形 $ABC$ 的三边（大圆弧长，即球心角）为 $a, b, c$，对角分别为 $A, B, C$。

[[Wiki - 球面几何基础]]
## 1. 球面余弦定理

$$ 
\cos a = \cos b \cos c + \sin b \sin c \cos A 
$$
$$ 
\cos b = \cos c \cos a + \sin c \sin a \cos B 
$$
$$ 
\cos c = \cos a \cos b + \sin a \sin b \cos C 
$$

*   **推导思路**：考察向量 $\overrightarrow{OA}, \overrightarrow{OB}, \overrightarrow{OC}$ 的混合积与内积关系。利用 $(\overrightarrow{OA} \times \overrightarrow{OB}) \cdot (\overrightarrow{OA} \times \overrightarrow{OC})$ 的展开即得。
*   **欧氏极限**：当边长 $a, b, c \to 0$ 时，利用近似 $\cos x \approx 1 - x^2/2, \sin x \approx x$，该公式退化为欧氏平面余弦定理 $a^2 = b^2 + c^2 - 2bc \cos A$。

## 2. 球面正弦定理

$$ 
\frac{\sin A}{\sin a} = \frac{\sin B}{\sin b} = \frac{\sin C}{\sin c} = \frac{|[\overrightarrow{OA}, \overrightarrow{OB}, \overrightarrow{OC}]|}{\sin a \sin b \sin c} 
$$

*   **推导思路**：利用 $(\overrightarrow{OA} \times \overrightarrow{OB}) \times (\overrightarrow{OA} \times \overrightarrow{OC})$ 的展开。
*   **几何意义**：混合积的绝对值对应由三个单位位置向量张成的平行六面体体积。

## 3. 对偶原理

对于球面三角形 $ABC$，其**对偶三角形** (Polar Triangle) $A'B'C'$ 的顶点分别是原三角形边的极点（例如 $A'$ 是大圆弧 $BC$ 的极点）。
对偶三角形的边角关系为：
$$ a' = \pi - A, \quad A' = \pi - a 
$$
（其余类似）

### 对偶余弦定理
对对偶三角形应用余弦定理，可得关于原三角形的**角余弦定理**：
$$ 
\cos A = -\cos B \cos C + \sin B \sin C \cos a 
$$
这一公式表明，在球面几何中，如果已知三个角，也能唯一确定三条边（即确定三角形全等），这称为 **AAA 全等判定**（在欧氏几何中 AAA 仅对应相似）。
