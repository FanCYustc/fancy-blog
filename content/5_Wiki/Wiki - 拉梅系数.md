---
aliases:
  - Lame Coefficients
info: 正交曲线坐标系中的基矢量模长。
date: 2026-01-09-星期五 10:07
update:
tags:
  - wiki/year2023
  - wiki/month04
  - 数学分析/曲线积分和曲面积分
id: wiki20260109100708
banner: "![[astrowalk.gif]]"
---

# 定义

在曲线坐标系 $u^1, u^2, u^3$ 中，位置矢量 $\vec{r} = \vec{r}(u^1, u^2, u^3)$。自然基底矢量定义为切向量：
$$ \frac{\partial \vec{r}}{\partial u^i} $$
这些基底通常不是单位矢量。**拉梅系数 (Lamé Coefficients)** $h_i$ 定义为这些基底的模长：
$$ h_i = \left| \frac{\partial \vec{r}}{\partial u^i} \right| = \sqrt{\left(\frac{\partial x}{\partial u^i}\right)^2 + \left(\frac{\partial y}{\partial u^i}\right)^2 + \left(\frac{\partial z}{\partial u^i}\right)^2} $$


# 几何意义
*   **归一化基底**：$\vec{e}_i = \frac{1}{h_i} \frac{\partial \vec{r}}{\partial u^i}$ 是单位切向量。
*   **线元**：$ds^2 = h_1^2 (du^1)^2 + h_2^2 (du^2)^2 + h_3^2 (du^3)^2$ (仅限正交坐标系)。
*   **度规分量**：在正交坐标系中，度规张量是对角的，$g_{ii} = h_i^2$ (无求和)。

# 常用坐标系

## 球坐标系 $(r, \theta, \phi)$
$$ 
\begin{cases}
h_r = 1 \\
h_\theta = r \\
h_\phi = r \sin\theta
\end{cases} 
$$

## 柱坐标系 $(\rho, \phi, z)$
$$ 
\begin{cases}
h_\rho = 1 \\
h_\phi = \rho \\
h_z = 1
\end{cases} 
$$
[[Wiki - 球坐标]]

[[Wiki - 柱坐标]]
# 微分算子
利用拉梅系数，可以方便地写出正交曲线坐标系下的梯度、散度、旋度公式。例如梯度：
$$ \nabla f = \frac{1}{h_1} \frac{\partial f}{\partial u^1} \vec{e}_1 + \frac{1}{h_2} \frac{\partial f}{\partial u^2} \vec{e}_2 + \frac{1}{h_3} \frac{\partial f}{\partial u^3} \vec{e}_3 
$$

[[Wiki - 梯度]]

[[Wiki - 散度，旋度，laplace算子]]