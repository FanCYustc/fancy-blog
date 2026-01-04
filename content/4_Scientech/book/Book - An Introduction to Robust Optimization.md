---
aliases: 
year: "2023"
category: 运筹学
rate: "1"
info: 鲁棒优化入门
date: 2024-05-01-星期三 10:17:29
update: 
tags:
  - book/year2024
  - book/month05
  - 鲁棒优化
id: book20240501101729
banner: "![[astrogate.gif]]"
---
---

![[Robustbook.pdf]]


# 鲁棒优化入门
## CH2- 准备知识

### 2.1 线性规划

在转化为线性规划时，要注意是否等价

#### 对偶理论：

$$
\begin{align}
\min \space c^{T}x \\
s.t. Ax = b \\
x\geq 0
\end{align}
$$

使用拉格朗日乘子法 [[Wiki - 拉格朗日乘数法]]改成 
$$
\begin{align}
g(p) = \min \space c^{T}x+ p^{T}(b-Ax) \\
s.t. x\geq 0
\end{align}
$$

容易知道有 $g (p)\leq c^{T}x^{*}$，其中 $x^{*}$ 是最优解，所以想去求 g (p) 的最大值去逼近 $c^{T}x^{*}$

由于
$$
g(p) = p^{T} b + \min_{x\geq 0}(c-A^{T}p)x 
$$

只有 $c-A^{T}p\geq 0$ 时才能讨论 g (p) 的最大值

所以对偶问题就是
$$
\begin{align}
\max \space b^{T}p \\
s.t. A^{T} p \leq c
\end{align}
$$

弱对偶定理：min 的目标函数值比 max 的目标函数值都大，如果有两个目标值相等，那么就是最优值

强对偶定理：一个线性规划有最优解时，对偶问题也有最优解，且最优解目标值相同

### 2.2 凸优化

对非线性规划问题
$$
\begin{align}
\min \space f(x) \\
s.t. g_{i}(x)\leq 0 \quad \forall i\in I_{1} \\
h_{i}(x) = 0 \quad \forall i\in I_{2} \\
x\in \mathcal{X}
\end{align}
$$

如果这些函数都是凸函数，就称为凸优化问题。

好的性质就是就是如果 $x^{*}$ 是局部最小，那么也是 f 是可行域中的全局最小。

### 2.3 锥优化

在凸优化的可行域 $\mathcal{X}$ 的基础上，增加一个 y，就可以把不等式的约束改成一个区域的约束，即 $(x,y)$ 落在“锥” $\mathcal{K}$ 中

$$
Ax \geq b\leftrightarrow  Ax-b\in \mathcal{K}= R_{+}^{m}
$$

$\mathcal{K}$ 是一个闭包，且满足若 $(x, y)\in \mathcal{K}\to \lambda (x, y)\in \mathcal{K},\forall \lambda\geq 0$，就称 $\mathcal{K}$ 为一个锥

### 2.4 风险偏好的度量

风险度量 $\mu$ 需要满足的条件：

1、单调性：如果一个事各种可能收益都大于另一件事，则前者的风险一定较小

2、平移不变性：$\mu[\hat{r}+c]\leq \mu[\hat{r}]-c$ 如果事件每个可能的收益都增加相同的值，那么风险至少减少相同的值

其中 r 表示受益的随机变量，主要考虑赔钱的时候

#### 在险价值

一种常用的度量，
$$
VaR_{\alpha}[r] = \inf\{ m\in \mathbb{R}: P[r+m\geq 0]\geq 1-\alpha\}  
$$

表示收益 $\alpha$ 分位数的负值

#### 条件风险价值

相同在险价值的投资也可能有不同条件风险价值，类似假设检验和 p 值[[Wiki - 检验的p值]]的关系：

$$
CVaR_{\alpha}[r] = E[-r: -r\geq VaR_{\alpha}(r)]
$$

即表示赔的最多的 $\alpha$ 概率的收益的均值

由对偶理论可以推出等价表述

$$
CVaR_{\alpha}[r] = \inf_{v} \left\{ v+ \frac{1}{\alpha} E[(-r-v)^{+}] \right\}
$$

#### 优化确定等价受益

为了适用于凸优化框架，取 $U: \mathbb{R}\to \mathbb{R}$ 为非递减的凸效用函数，满足 $U (0) = 0$，记确定等价受益 OCE 为

$$
OCE[r] = \inf\{v+ E[U(-r-v)]\}
$$

CVaR 是一个特殊的 OCE

## Ch3-经典鲁棒优化

[[Scientech - 鲁棒优化-鲁棒优化]]

在优化问题中，有一些可变的变量是不能决策的，完全是随机的，要考虑在有随机参数的情况下的最优化

相比与随机规划和灵敏度分析，鲁棒优化在处理不确定参数优化中有优点：

1、用集合描述变量，不需要确定参数的分布模型和模糊隶属函数

2、约束条件都是严格成立的

### 3.3 鲁棒对等问题

从一般优化问题演化出经典鲁棒优化标准模型：
$$
\begin{aligned}
\min & \space t  \\
s.t. & f(x,z)\leq t ,\forall z\in \mathcal{U} \\
& h(x,z) \leq 0 ,\forall z\in \mathcal{U} \\
& x\in \mathcal{X}
\end{aligned}
$$
称为鲁棒对等问题 (robust counterpart)

对于 $\forall z\in \mathcal{U}$ 的处理，可以写成 $\sup_{z\in \mathcal{U}} h (x, z)\leq 0$

### 3.4 经典鲁棒模型

### Soyster 模型

$$
\begin{aligned}
\max & \space c^{T}x\\
s.t. & \sum_{j\in [N]} A_{j}x_{j}\leq b,\forall A_{j}\in \mathcal{U}_{j}\\
& \boldsymbol{x}\geq 0
\end{aligned}
$$

$\mathcal{U}_{j}$ 为矩阵 A 每个列向量的参数变化范围，其鲁棒对等问题为

$$
\begin{aligned}
\max & \space c^{T}x\\
s.t. & \sum_{j\in [N]} \overline{A}_{j}x_{j}\leq b\\
& \boldsymbol{x}\geq 0
\end{aligned}
$$

其中 $\overline{A}_{j} = (\sup_{A_{j}\in \mathcal{U_{j}}} a_{ij})_{i\in [N]}$

#### Ben-Tal and Nemirovski 模型

A 只有一部分参数波动，且有波动范围，表示为 $a_{ij} + z_{ij}\hat{a}_{ij}$，其中 $\hat{a}_{ij}$ 为波动范围，$z_{ij}\in [-1,1]$ 为对称分布的随机变量。

优化问题表示为

$$
\begin{aligned}
\max &\space c^{T}x\\
s.t. & \sum_{j\in [N]} (a_{ij}+z_{ij}\hat{a}_{ij})x_{j} \leq b_{i},\forall \boldsymbol{z_{i}}\in \mathcal{U}\\
&\boldsymbol{x}\geq 0\\
&\mathcal{U} = \{\boldsymbol{z} : \mid\mid z\mid\mid_{2} \leq \Omega\}
\end{aligned}
$$

对应的鲁棒对等问题为

$$
\begin{aligned}
\max &\space c^{T}x\\
s.t. & \sum_{j\in [N]} a_{ij}x_{j} + \Omega \sqrt{ \sum_{j} \hat{a}_{ij}^{2}x_{j}^{2} } \leq b_{i},\forall i\\
&\boldsymbol{x}\geq 0\\
\end{aligned}
$$

求解时需要用二阶锥规划问题

#### Bertsimas amd Sim 模型



## CH4-分布式鲁棒优化

[[Wiki - Wasserstein距离]]

[[Scientech - 鲁棒优化-分布鲁棒优化]]

## CH 5 多阶段问题与线性决策规则

[[Wiki - 线性决策规则]]

## CH6 目标性鲁棒优化



## CH7 鲁棒预测与优化

[[Scientech - 鲁棒优化-前沿应用]]

## CH8 机器学习与鲁棒优化

## CH 9 风险度量与鲁棒性

## CH10 鲁棒优化的求解

