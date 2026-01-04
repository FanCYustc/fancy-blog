---
aliases:
info: 微分方程算子法
date: 2025-12-30-星期二 16:30
update:
tags:
  - 微分方程/ODE
  - 微分方程/微分方程组
  - wiki/month11
  - wiki/year2023
id: wiki20251230163000
banner: "![[astrowalk.gif]]"
---


算子法是一种求解常系数线性微分方程（特别是求特解）的简捷方法。它利用微分算子及其逆算子的形式运算，将微分运算转化为代数运算。

## Def 1 微分算子与算子多项式

```ad-definition
title: Definition 1

引入微分算子 $D := \frac{d}{dx}$，则 $D^n = \frac{d^n}{dx^n}$。
对于 $n$ 阶常系数线性微分方程：
$$ y^{(n)} + a_1 y^{(n-1)} + \dots + a_n y = f(x) $$
可以简记为：
$$ L(D)y = f(x) $$
其中 $L(D) = D^n + a_1 D^{n-1} + \dots + a_n$ 称为**算子多项式**。
```

[[Wiki - 常系数齐次线性微分方程组的基解]]、[[Wiki - 多项式环]]
## Def 2 逆算子

```ad-definition
title: Definition 2

令 $\frac{1}{L(D)} f(x)$ 表示方程 $L(D)y = f(x)$ 的任一特解，即：
$$ L(D) \left[ \frac{1}{L(D)} f(x) \right] \equiv f(x) $$
称 $\frac{1}{L(D)}$ 为 $L(D)$ 的**逆算子**。
```

[[Wiki - 可逆线性映射]]
## Pro 1 逆算子的性质

```ad-proposition
title: Proposition 1

1. **线性性质**: $\frac{1}{L(D)} [\alpha u(x) + \beta v(x)] = \alpha \frac{1}{L(D)} u(x) + \beta \frac{1}{L(D)} v(x)$
2. **算子分解**: 若 $L(D) = L_1(D)L_2(D)$，则 $\frac{1}{L(D)} f(x) = \frac{1}{L_1(D)} \left[ \frac{1}{L_2(D)} f(x) \right]$
```

## The 1 常用运算公式

```ad-theorem
title: Theorem 1

1. **基本积分**: $\frac{1}{D} f(x) = \int f(x) dx$
2. **一阶逆算子**: $\frac{1}{D - a} f(x) = e^{ax} \int e^{-ax} f(x) dx$
3. **指数移位公式**: $\frac{1}{L(D)} [e^{\gamma x} f(x)] = e^{\gamma x} \frac{1}{L(D + \gamma)} f(x)$
4. **指数函数特解**: 
   - 若 $L(\gamma) \neq 0$，则 $\frac{1}{L(D)} e^{\gamma x} = \frac{e^{\gamma x}}{L(\gamma)}$
   - 若 $\gamma$ 是 $L(D)$ 的 $s$ 重特征根，则 $\frac{1}{L(D)} e^{\gamma x} = \frac{x^s}{s! L^{(s)}(\gamma)} e^{\gamma x}$ (或 $\frac{x^s}{s! L_1(\gamma)} e^{\gamma x}$，其中 $L(D)=(D-\gamma)^s L_1(D)$)
5. **三角函数特解**: 若 $L(D) = M(D^2)$ 且 $M(-\beta^2) \neq 0$，则：
   - $\frac{1}{M(D^2)} \cos \beta x = \frac{\cos \beta x}{M(-\beta^2)}$
   - $\frac{1}{M(D^2)} \sin \beta x = \frac{\sin \beta x}{M(-\beta^2)}$
6. **多项式特解**: $\frac{1}{L(D)} P_m(x) = Q_m(D) P_m(x)$，其中 $Q_m(D)$ 为 $1/L(D)$ 按 $D$ 的升幂排列进行多项式长除法得到的商式（截断至 $D^m$ 项）。
```

## 应用于微分方程组

对于常系数非齐次线性微分方程组，可以将其写成算子矩阵形式 $\mathbf{L}(D) \mathbf{y} = \mathbf{f}(x)$，利用克拉默法则（Cramer's Rule）[[Wiki - 克拉默法则]]结合逆算子求出各个分量的特解：
$$ y_j^* = \sum_{k=1}^n A_{kj}(D) \left[ \frac{1}{\Delta(D)} f_k(x) \right] $$
其中 $\Delta(D)$ 是算子矩阵的行列式，$A_{kj}(D)$ 是代数余子式。

[[Wiki - 行列式的定义|n阶行列式函数]]