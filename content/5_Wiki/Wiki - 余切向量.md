---
aliases:
  - Cotangent Vector
  - 1-form
  - One-form
  - 余切空间
info: 切向量的对偶矢量，即线性泛函。
date: 2026-01-09-星期五 10:04
update:
tags:
  - wiki/year2023
  - wiki/month04
  - 数学分析/多变量微积分
id: wiki20260109100405
banner: "![[astrowalk.gif]]"
---
---

# 定义

**余切向量 (Cotangent Vector)**，也称为 **1-形式 (1-form)**，是切向量空间 [[Wiki - 曲面的切空间]] $T_pM$ 的对偶空间 $T_p^*M$ 中的元素。它是一个将切向量映射为实数的线性泛函。[[Wiki - 线性算子|线性泛函]]

# 微分作为余切向量

函数的全微分 $df$ 是余切向量最典型的例子。[[Wiki - 映射的微分]]

定义函数 $f$ 的微分 $df$ 作用在切向量 $X_p$ 上为：
$$ df(X_p) = X_p(f) $$
在局部坐标系 $\{x^i\}$ 下，坐标基向量为 $\partial_i = \frac{\partial}{\partial x^i}$。
$df$ 的展开式为：
$$ df = \frac{\partial f}{\partial x^i} dx^i $$
这里 $dx^i$ 构成了余切空间的一组基底，称为**对偶基 (Dual Basis)**。[[Wiki - 对偶空间|对偶基]]

# 对偶关系
余切基底 $\{dx^i\}$ 与切基底 $\{\partial_j\}$ 满足对偶关系：
$$ dx^i (\partial_j) = \frac{\partial x^i}{\partial x^j} = \delta^i_j $$

# 变换规则
余切向量是**协变**矢量。设 $\alpha = \alpha_i dx^i$，其分量变换规则为：
$$ \alpha'_j = \alpha_i \frac{\partial x^i}{\partial x'^j} $$
这与梯度 [[Wiki - 梯度]]的变换规律一致。
