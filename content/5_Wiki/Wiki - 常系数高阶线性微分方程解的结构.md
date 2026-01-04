---
aliases: 
info: 常系数高阶线性微分方程解的结构
date: 2023-11-28-星期二 15:27
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
  - 微分方程/微分方程组
id: wiki20231128152721
banner: "![[astrowalk.gif]]"
---
---

## The 1 齐次线性微分方程

考虑 $n$ 阶常系数齐次线性微分方程：
$$ y^{(n)} + a_1 y^{(n-1)} + \dots + a_{n-1} y' + a_n y = 0 $$
其中 $a_1, \dots, a_n$ 为实常数。

### 特征方程

方程的特征方程为：
$$ \lambda^n + a_1 \lambda^{n-1} + \dots + a_{n-1} \lambda + a_n = 0 $$
这是一个关于 $\lambda$ 的 $n$ 次代数方程。

### 基本解组的结构

根据特征方程根的性质，可以确定微分方程的一个基本解组。设特征方程在复数域中有 $s$ 个互不相同的根 $\lambda_1, \dots, \lambda_s$，且相应的重数分别为 $n_1, \dots, n_s$ （满足 $n_1 + \dots + n_s = n$）。

1.  **单实根**：若 $\lambda_i$ 是单实根（$n_i=1$），则对应的解为 $e^{\lambda_i x}$。
2.  **重实根**：若 $\lambda_i$ 是 $n_i$ 重实根，则对应的 $n_i$ 个线性无关解为：
    $$ e^{\lambda_i x}, x e^{\lambda_i x}, \dots, x^{n_i - 1} e^{\lambda_i x} $$
3.  **复根**：若 $\lambda = \alpha \pm i\beta$ 是一对 $k$ 重共轭复根，则对应的 $2k$ 个实值线性无关解为：
    $$ \begin{aligned} & e^{\alpha x} \cos \beta x, x e^{\alpha x} \cos \beta x, \dots, x^{k-1} e^{\alpha x} \cos \beta x \\ & e^{\alpha x} \sin \beta x, x e^{\alpha x} \sin \beta x, \dots, x^{k-1} e^{\alpha x} \sin \beta x \end{aligned} $$

### 通解

微分方程的通解是上述所有基本解的线性组合：
$$ y = \sum_{i=1}^s \left( \sum_{j=0}^{n_i-1} C_{ij} x^j e^{\lambda_i x} \right) $$
（注：复根情形通常转换为实函数形式表示）

[[Wiki - 齐次线性微分方程组解的结构]]

[[Wiki - 常系数齐次线性微分方程组的基解]]
## The 2 非齐次线性微分方程

考虑 $n$ 阶常系数非齐次线性微分方程：
$$ y^{(n)} + a_1 y^{(n-1)} + \dots + a_{n-1} y' + a_n y = f(x) $$

### 通解结构

非齐次方程的通解结构为：
$$ y = Y(x) + \varphi^*(x) $$
其中 $Y(x)$ 是对应齐次方程的通解，$\varphi^*(x)$ 是非齐次方程的一个特解。

### 特解求法

1.  **常数变易法**：适用于一般连续函数 $f(x)$。
2.  **待定系数法**：适用于 $f(x)$ 为多项式、指数函数、正弦/余弦函数及其乘积的形式。
3.  **算子法**：利用逆算子符号 $\frac{1}{L(D)}$ 求解，简捷高效。
4.  **拉普拉斯变换法**：将微分方程转化为代数方程求解，特别适合初值问题。

[[Wiki - 非齐次线性微分方程组的解的结构]]

[[Wiki - 常系数非齐次线性微分方程]]