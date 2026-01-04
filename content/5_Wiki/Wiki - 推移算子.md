---
aliases: 
info: 
date: 2024-12-28-星期六 16:24
update: 
tags:
  - wiki/year2024
  - wiki/month09
id: wiki20241228162411
banner: "![[astrowalk.gif]]"
---
---
## Def 1 推移算子

$\mathcal{B}$ 称为推移算子，$\mathcal{B}X_t = X_{t - 1}$。如果 $\{X_t\}$ 是平稳列 [[Wiki - 平稳序列]]，$\mathcal{B}$ 确实是 Hilbert 空间 $L^2(X)$ 上的一个算子，也可以扩充到 $L^2$ 空间上。[[Wiki - 平方可积]]

这里 $L^{2}(X)$ 指二阶矩有限的随机变量组成的 hilbert 空间 [[Wiki - Hilbert空间]]，内积 [[Wiki - 内积]]定义为 $\langle X, Y \rangle=E[XY]$

## Pro 1

- (1) 对和 $t$ 无关的随机变量或者常数 $Y$，有 $\mathcal{B}Y = Y$。 
- (2) 对常数 $a$，$\mathcal{B}^n(aX_t) = a\mathcal{B}^n X_t = aX_{t - n}$。 
- (3) $\mathcal{B}^{n + m}X_t = \mathcal{B}^n(\mathcal{B}^m X_t) = X_{t - n - m}$。 
- (4) 对多项式 $\psi(z) = \sum_{j = 0}^p c_j z^j$，有 $\psi(\mathcal{B})X_t = \sum_{j = 0}^p c_j X_{t - j}$。 
- (5) (交换律) 对于多项式 $\psi(z) = \sum_{j = 0}^p c_j z^j$ 和 $\phi(z) = \sum_{j = 0}^q d_j z^j$ 的乘积 $A(z) = \psi(z)\phi(z)$，有 $A(\mathcal{B})X_t = \psi(\mathcal{B})[\phi(\mathcal{B})X_t] = \phi(\mathcal{B})[\psi(\mathcal{B})X_t]$。 
- (6) 对于时间序列 $\{X_t\}$，$\{Y_t\}$，多项式 $\psi(z) = \sum_{j = 0}^p c_j z^j$，和随机变量 $U$，$V$，$W$，有 $\psi(\mathcal{B})(UX_t + VY_t + W) = U\psi(\mathcal{B})X_t + V\psi(\mathcal{B})Y_t + W\psi(1)$。 

## The 1 线性滤波交换律

[[Wiki - 时间序列的线性滤波]]将性质 5 推广的无穷求和

 设 $\{a_k\}$，$\{b_j\}$ 为两个绝对可和的实数列，则实数列  $d_m=\sum_{j = -\infty}^{\infty} a_j b_{m - j}$ 绝对可和（$\{d_m\}$ 称为 $\{a_k\}$ 和 $\{b_j\}$ 的离散卷积 [[Wiki - 卷积]]），记 $A (z)=\sum_{k} a_k z^k, \quad B (z)=\sum_{j} b_j z^j, \quad D (z)=\sum_{m} d_m z^m$.  
 
 (1) 若 $\{y_t\}$ 为有界的数列：$|y_t|\leq M$，$t\in\mathbb{Z}$，则 
  $$
  A (\mathcal{B})[B (\mathcal{B}) y_t]=B (\mathcal{B})[A (\mathcal{B}) y_t]=D (\mathcal{B}) y_t 
  $$
  
(2) 若 $\{X_t\}$ 为平稳列，则 
$$
A (\mathcal{B})[B (\mathcal{B}) X_t]=B (\mathcal{B})[A (\mathcal{B}) X_t]=D (\mathcal{B}) X_t, \text{ a.s. 和 } L^2. $$

[[Wiki - 几乎处处收敛]]



## The 2 逆算子定理

设实系数多项式 $A (z)=\sum_{j = 0}^{p} \phi_{j}z^{j}$ 满足最小相位条件： $A (z) \neq 0$，$\forall |z| \leq 1$ 则存在 $\delta > 0$ 使 $A^{-1}(z) \triangleq \frac{1}{A (z)}=\sum_{j = 0}^{\infty} \psi_{j}z^{j}$，$|z| \leq 1 + \delta$ 其中 $\psi_{j}=o ((1 + \delta)^{-j})$，$(j \rightarrow \infty)$，从而 $\sum_{j = 0}^{\infty}|\psi_{j}| < \infty$，且有： 

(1) 若 $\{y_{t}\}$ 为有界数列，则 
$$
y_{t}=A^{-1}(\mathcal{B}) A (\mathcal{B}) y_{t}=A (\mathcal{B}) A^{-1}(\mathcal{B}) y_{t}
$$
(2) 若 $\{X_{t}\}$ 为平稳列，则 
$$
X_{t}=A^{-1}(\mathcal{B}) A (\mathcal{B}) X_{t}=A (\mathcal{B}) A^{-1}(\mathcal{B}) X_{t}，a.s.$$

[[Wiki - 逆算子定理]]

