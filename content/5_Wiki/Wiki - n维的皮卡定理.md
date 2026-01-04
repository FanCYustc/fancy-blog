---
aliases: 
info: n维函数的解的存在唯一性定理
date: 2023-10-31-星期二 15:25
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 微分方程/ODE
id: wiki20231031152515
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - cauchy初值定理]]

## Def 1 n 维利普希茨条件

[[Wiki - 利普希茨条件]]在 n 维的表述为
$$
\mid \mathbf{f}(x,\mathbf{y})-\mathbf{f}(x,\mathbf{z})\mid \leq L\mid \mathbf{y-z}\mid
$$
其中 $\mid \space \mid$ 为向量的模 [[Wiki - 欧式空间向量的模]]

## The 1 n 维的皮卡存在唯一性定理

```ad-theorem
title: Theorem 1


设初值问题

$$(E):\quad\frac{d\mathbf{y}}{dx}=\mathbf{f}(x,\mathbf{y}),\quad \mathbf{y}(x_{0})=\mathbf{y}_{0},$$

$\mathbf{f}(x, \mathbf{y})$ 在区域
$$R:\quad|x-x_0|\leqslant a,\quad|\mathbf{y}-\mathbf{y}_0|\leqslant b$$
连续，而且对 $\mathbf{y}$ 满足利普希茨条件. 则 (E）在区间 $I=\begin{bmatrix}x_0-h\text{,}x_0+h\end{bmatrix}$ 上有并且只有一个解, 其中常数

$$
\left.h=\min\left(\begin{matrix}{a},{\frac{b}{M}}\\\end{matrix}\right.\right),M>\max_{(x,\mathbf{y})\in R}\lvert f(x,\mathbf{y})\rvert.
$$


```

[[Wiki - 标准微分方程组]]

 [[Wiki - 欧式空间向量的模]] 
 
 [[Wiki - 函数的连续性]]

### Proof (证明概要)

$n$ 维情况下的证明方法与一维情形（[[Wiki - cauchy初值定理]]）完全平行，只需将绝对值替换为 $n$ 维向量空间 $V^n$ 中的模（范数）。

**1. 向量模的引入**
在 $n$ 维线性空间 $V^n$ 中任取向量 $\mathbf{y} = (y_1, \dots, y_n)$，引入模 $|\mathbf{y}|$（如欧氏模 $\sqrt{\sum y_i^2}$ 或极大值模 $\max |y_i|$）。这些模是等价的，且满足三角不等式 $|\mathbf{y}+\mathbf{z}| \le |\mathbf{y}| + |\mathbf{z}|$。
在此度量下，$V^n$ 成为完备的赋范空间（Banach 空间），微积分性质（如积分、极限）可以照常进行。

**2. 转化为积分方程**
初值问题 $(E)$ 等价于积分方程：
$$ \mathbf{y}(x) = \mathbf{y}_0 + \int_{x_0}^x \mathbf{f}(t, \mathbf{y}(t)) dt $$

**3. 构造皮卡序列 (Picard Iteration)**
令 $\mathbf{y}_0(x) = \mathbf{y}_0$，定义序列：
$$ \mathbf{y}_{k+1}(x) = \mathbf{y}_0 + \int_{x_0}^x \mathbf{f}(t, \mathbf{y}_k(t)) dt, \quad k=0,1,2,\dots $$
在区间 $I_h = [x_0-h, x_0+h]$ 上，利用 $M$ 的定义可归纳证明所有 $\mathbf{y}_k(x)$ 均不超出区域 $R$（即 $|\mathbf{y}_k(x) - \mathbf{y}_0| \le b$）。

**4. 证明一致收敛性**
利用 [[Wiki - 利普希茨条件]]，估计相邻项的差：
$$
\begin{aligned}
|\mathbf{y}_{k+1}(x) - \mathbf{y}_k(x)| &= \left| \int_{x_0}^x [\mathbf{f}(t, \mathbf{y}_k(t)) - \mathbf{f}(t, \mathbf{y}_{k-1}(t))] dt \right| \\
&\le \left| \int_{x_0}^x L |\mathbf{y}_k(t) - \mathbf{y}_{k-1}(t)| dt \right|
\end{aligned}
$$
通过归纳法可得：
$$ |\mathbf{y}_{k+1}(x) - \mathbf{y}_k(x)| \le \frac{M}{L} \frac{(L|x-x_0|)^{k+1}}{(k+1)!} $$
由级数 $\sum \frac{(Lh)^k}{k!}$ 的收敛性及 [[Wiki - Weierstrass一致逼近定理]]，可知序列 $\{\mathbf{y}_k(x)\}$ 在 $I_h$ 上一致收敛于某个连续函数 $\mathbf{\varphi}(x)$。

**5. 存在性与唯一性**
- **存在性**：对迭代公式取极限，由 $\mathbf{f}$ 的连续性及一致收敛性 [[Wiki - 一致收敛]]，极限函数 $\mathbf{\varphi}(x)$ 满足积分方程，从而为解。
- **唯一性**：利用 Gronwall 不等式或类似一维情形的反证法（利用 Lipschitz 条件及积分估计），可证两个解的差恒为零。

