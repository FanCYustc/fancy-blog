---
aliases:
info:
date: 2023-11-21-星期二 15:04
update:
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数
  - 微分方程/ODE
  - 微分方程/微分方程组
id: wiki20231121150417
banner: "![[astrowalk.gif]]"
---
---

## The 1 非齐次线性微分方程组的通解结构

```ad-lemma
title: Lemma 1 (通解结构)

如果 $\Phi(x)$ 是相应齐次线性微分方程组 $\frac{d\mathbf{y}}{dx} = A(x)\mathbf{y}$ 的一个基解矩阵，$\boldsymbol{\varphi}^*(x)$ 是非齐次线性微分方程组 $\frac{d\mathbf{y}}{dx} = A(x)\mathbf{y} + \mathbf{f}(x)$ 的一个特解，则非齐次方程组的任一解 $\mathbf{y} = \boldsymbol{\varphi}(x)$ 可以表示为：
$$
\boldsymbol{\varphi}(x) = \Phi(x)\mathbf{C} + \boldsymbol{\varphi}^*(x)
$$
其中 $\mathbf{C}$ 是一个常数列向量。
```

## The 2 常数变易法

为了求出特解 $\boldsymbol{\varphi}^*(x)$，可以使用**常数变易法**。

```ad-lemma
title: Lemma 2 (特解形式)

设 $\Phi(x)$ 是齐次方程组的一个基解矩阵，则非齐次方程组有一个特解形式为：
$$
\boldsymbol{\varphi}^*(x) = \Phi(x) \int_{x_0}^x \Phi^{-1}(s) \mathbf{f}(s) ds
$$
```

## The 3 非齐次线性微分方程组的通解公式

```ad-theorem
title: Theorem 1 (常数变易公式)

设 $\Phi(x)$ 是齐次线性微分方程组 $\frac{d\mathbf{y}}{dx}=A(x)\mathbf{y}$ 的一个基解矩阵，则非齐次线性微分方程组 $\frac{d\mathbf{y}}{dx}=A(x)\mathbf{y}+\mathbf{f}(x)$ 在区间 $a<x<b$ 上的通解可以表示为：

$$
\mathbf{y} = \Phi(x) \left( \mathbf{C} + \int_{x_0}^x \Phi^{-1}(s) \mathbf{f}(s) ds \right)
$$

其中 $\mathbf{C}$ 是 $n$ 维任意常数列向量。
```

[[Wiki - 齐次线性微分方程组解的结构]]

### 初值问题的解

满足初值条件 $\mathbf{y}(x_0) = \mathbf{y}_0$ 的解为：

$$
\mathbf{y} = \Phi(x)\Phi^{-1}(x_0)\mathbf{y}_0 + \Phi(x) \int_{x_0}^x \Phi^{-1}(s) \mathbf{f}(s) ds
$$