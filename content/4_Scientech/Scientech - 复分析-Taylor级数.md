---
aliases: 
info: 24春复分析第4章
date: 2024-04-11-星期四 10:54
update: 
tags:
  - scientech/year2024
  - scientech/month04
  - 复分析/级数
id: scientech20240411105430
banner: "![[astrofishing.gif]]"
---
---

# 第 4 章-全纯函数 Taylor 展开

## 4.1 weierstrass 定理

### 收敛与一致收敛

对于复变函数 $f (z), z\in \Omega$，同样有 weierstrass 级数理论

若 $\sum_{k}^{+\infty}f_{k}(z)=f(z)$，逐点收敛的定义同[[Wiki - 函数项级数|函数项级数逐点收敛]]

**一致收敛**采用 [[Wiki - 一致收敛#Def 1 一致收敛性]]的定义

对复变函数一致收敛，同样有 cauchy 收敛准则 [[Wiki - 一致收敛的判定#THE 1 Cauchy 收敛准则]]

若 $\sum_{k}f_{k}(z)$ 一致收敛，有 [[Wiki - 函数项级数一致收敛的性质#Pro1 连续]]，若每个函数连续，则和函数也连续。

对于可积 [[Wiki - 函数项级数一致收敛的性质#Pro 2 可积]]，则将条件弱化为连续：

```ad-proposition

设级数 $\sum_{n=1}f_n(z)$ 在可求长曲线 $\gamma$ 上一致收敛到 $f(z)$, 如果每个 $f_n(n=1,2,\cdotp\cdotp\cdotp)$ 都在 $\gamma$ 上连续，那么 f (z) 连续，且

$$
\int _{\gamma}f(z) \, dz =\sum_{k=1}^{+\infty}\int _{\gamma}f_{k}(z) \, dz 
$$


```

^8faba8

### 内闭一致收敛

但在复变函数中，一致收敛比较强，通常用的是 [[Wiki - 内闭一致收敛]]，即限制在紧致集合上讨论[[Wiki - 紧致集合]]

[[Wiki - 复变函数内闭一致收敛]]

### Weierstrass 定理

[[Wiki - weierstrass定理]]

## 4.2 幂级数

对比 [[Scientech - 数学分析-无穷级数#7.2 幂级数和 Taylor 展开式]]

[[Wiki - 全纯函数的幂级数表示]]

## 4.3 全纯函数 Taylor 展开

[[Wiki - 全纯函数的Taylor展开]]

通过 Taylor 展开，有了对 m 阶零点的定义：等价于 f 在 $z_{0}$ 的邻域内可以表示为
$$
f(z)=(z-z_{0})^{m}g(z)
$$
$g(z)$ 在 $z_{0}$ 全纯，且 $g(z_{0})\neq 0$。

推论：

[[Wiki - 唯一性定理|全纯函数零点的孤立性]]

[[Wiki - 唯一性定理]]

## 4.4 幅角原理和 rouche 定理

[[Wiki - 幅角原理]]

[[Wiki - Rouche定理]] ：常用于计算一些复杂多项式再某一固定区域内的零点个数，通过另一个简单的函数和在边界满足 rouche 定理条件来约束

### 应用：

[[Wiki - 全纯开映射定理]]

[[Wiki - 单叶性域]]

[[Wiki - 全纯反函数定理]]

[[Wiki - Hurwitz定理]]

## 4.5 最大模原理和 Schwartz 引理

[[Wiki - 最大模原理]]

[[Wiki - 全纯函数的Schwartz引理]]

[[Wiki - 全纯同构|全纯自同构]]

[[Wiki - Schwartz-pick定理]]

进一步的展开：

[[Scientech - 复分析-Laurent级数]]

