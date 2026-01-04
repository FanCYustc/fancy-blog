---
aliases:
info: 25春凸优化第9章第10章第11章
date: 2025-06-08-星期日 16:35
update:
tags:
  - scientech/year2025
  - scientech/month06
  - 凸优化
  - 算法
  - 运筹学
id: scientech20250608163549
banner: "![[astrofishing.gif]]"
---
---

# 9 无约束算法

## 强凸性

对于无约束优化 $\min f(x)$ ，f 为二次可微凸函数 [[Wiki - 凸函数]]，那么由 [[Scientech - 凸优化-凸集和凸函数]]中的性质，要求 $\nabla f(x^{*})=0$。求解的思路是取极小化点列 $f (x^{(k)})\to p^{*}$

对于初始点 $x^{(0)}$，要求下水平集 $\{x\in domf| f(x)\leq f(x^{(0)})\}$ 是闭集，如果 f 是闭函数则一定满足 [[Wiki - 上境图]]

[[Wiki - 强凸性]]

## 梯度下降法
在强凸函数的基础上，可以使用下降方法生成收敛到最优值的下降序列。使用 $x^{(k+1)}= x^{(k)}+t^{(k)}\Delta x^{(k)}$ 进行迭代，需要满足 $\nabla f(x^{(k)})^{T}\Delta x^{(k)}<0$

[[Wiki - 梯度下降法]]

除了精确搜索最优步长，也可以使用回溯搜索法 [[Wiki - 回溯搜索算法]]

## 最速下降法

[[Wiki - 最速下降法]]

## 牛顿法

[[Wiki - 牛顿算法]]

[[Wiki - 拟牛顿法]]

# 10 等式约束优化

## 等式约束优化问题

本章讨论下述等式约束凸优化问题的求解方法,

$$
\begin{align}
\min & f(x) \\
s.t.& Ax=b
\end{align}
$$

其中 $f \colon  { \mathbb { R } } ^ { n } \to  { \mathbb { R } }$ 是**二次连续可微凸**函数. $A \in \mathbb { R } ^ { p \times n }$ 且  $rank A = p < n$ .

等式约束数少于变量数, 并且等式约束互相独立. 假定存在一个最优解 $x ^ { \star }$ , 记 $p ^ { \star } = \operatorname* { i n f } \{ f ( x ) \mid A x = b \} = f ( x ^ { \star } ) .$ · $x ^ { \star } \in \operatorname { d o m } f$ 是优化问题的最优解的充要条件是，存在 $\boldsymbol { \nu } ^ { \star } \in \mathbb { R } ^ { p }$ 满足

$$
A x ^ { \star } = b , \quad \nabla f ( x ^ { \star } ) + A ^ { \top } \nu ^ { \star } = 0 .
$$

这是含有 $n + p$ 个变量 $x ^ { \star } , \nu ^ { \star }$ 的 $n + p$ 个方程的求解问题.

- $A x ^ { \star } = b _ { \sf \Phi }$ , 称为**原可行方程,** 是线性的。  
- $\nabla f ( x ^ { \star } ) + A ^ { \top } \nu ^ { \star } = 0$ , 称为**对偶可行方程,** 通常是非线性的.

要将等式约束优化转化成无约束优化进行求解。

[[Wiki - 等式约束凸二次规划]]

### 求解方法

基于二次规划的启发，给出消除等式约束的方法：

取 $F\in \mathbb{R}^{n\times (n-p)}$ 满足 $range (F)= \mathcal{N}(A)$，则
$$
\{x|Ax=b\}=\{Fz+ \hat{x}| z\in \mathbb{R}^{n-p}\}
$$
其中 $\hat{x}$ 满足 $A\hat{x}=b$ 的初解。则可以转  化为
$$
\min \tilde{f}(z)= f(Fz+\hat{x})
$$
无约束问题，可以确定约束问题的解为 $x^{*}= Fz^{*}+\hat{x}$

也可以利用对偶问题 [[Wiki - Lagrange对偶问题]]，求解
$$
\max g(v)= -b^{T}v-f^{*}(-A^{T}v)
$$

Slater 条件成立 [[Wiki - Slater定理]]，因此存在 $g (v^{*})=p^{*}$

## Newton 方法

[[Wiki - 等式约束的牛顿方法]]

## 不等式约束优化问题

[[Wiki - 障碍方法]]


# 11 内点法

[[Wiki - 原对偶内点法]]

