---
aliases:
  - RBF
  - Radial Basis Function
info:
date: 2025-12-10-星期三 16:10
update:
tags:
  - wiki/year2025
  - wiki/month12
  - 机器学习/基展开
  - 神经网络
  - fourier分析
  - 数学分析/函数
id: wiki20251210161000
banner: "![[astrowalk.gif]]"
---
---

## Def 1 径向基函数 (Radial Basis Function, RBF)


```ad-definition
title: Definition 1 (Radial Function)

函数 $f: \mathbb{R}^d \to \mathbb{C}$ 称为**径向函数 (radial function)**，如果它的值仅依赖于自变量的模 $|x|$。即存在定义在 $[0, \infty)$ 上的函数 $f_0$，使得：
$$ f(x) = f_0(|x|) $$
```

这意味着 $f$ 在所有以原点为中心的球面上取常数值。等价地，$f$ 是径向的当且仅当对于任意旋转变换 $R$（即满足 $|Rx| = |x|$ 的线性变换），都有 $f(Rx) = f(x)$。

在机器学习中，常用于构建基展开模型：
$$
f(x) = \sum_{j=1}^M \beta_j K_{\lambda_j}(\xi_j, x)
$$
其中 $\xi_j$ 是中心（原型），$K$ 是径向核函数（如高斯核）。

### 常用 RBF
-   **高斯 RBF**：$\phi(r) = e^{-(\epsilon r)^2}$
-   **多二次 (Multiquadric)**：$\phi(r) = \sqrt{1 + (\epsilon r)^2}$
-   **薄板样条 (Thin Plate Spline)**：$\phi(r) = r^2 \ln(r)$



## Thm 1 径向函数的 Fourier 变换

```ad-theorem
title: Theorem 1

径向函数的 Fourier 变换也是径向函数。
即：如果 $f(x) = f_0(|x|)$，那么 $\hat{f}(\xi) = F_0(|\xi|)$。
```
[[Wiki - fourier变换]]
### 证明思路
利用 Fourier 变换的旋转性质：$\widehat{f(Rx)}(\xi) = \hat{f}(R\xi)$。若 $f$ 径向对称，则 $f(Rx) = f(x)$，故 $\hat{f}(R\xi) = \hat{f}(\xi)$，即 $\hat{f}$ 对旋转不变，因此是径向的。

## Prop 1 具体维数的变换公式

设 $\rho = |\xi|, r = |x|$。

*   **d=1**: $F_0(\rho) = 2 \int_0^\infty f_0(r) \cos(2\pi \rho r) dr$。
*   **d=3**: $F_0(\rho) = \frac{2}{\rho} \int_0^\infty f_0(r) \sin(2\pi \rho r) r dr$。
*   **一般 d**: 与 [[Wiki - Bessel函数]] 有关。
    $$ F_0(\rho) = 2\pi \rho^{-(d/2)+1} \int_0^\infty f_0(r) J_{d/2-1}(2\pi \rho r) r^{d/2} dr $$

[[Wiki - Fourier变换的基本性质]]

## 核方法
经过归一化的 RBF 展开可以看作是 [[Wiki - 核平滑器]] 的一种形式。
同时，RBF 核是 [[Wiki - 支持向量机]] 和 [[Wiki - 再生核希尔伯特空间]] 中最常用的核函数之一。它将数据映射到无限维特征空间。

参见： [[Wiki - 样条函数]]
