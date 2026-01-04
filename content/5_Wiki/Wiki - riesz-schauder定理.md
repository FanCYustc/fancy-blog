---
aliases: 
info: 
date: 2024-12-11-星期三 10:17
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 泛函分析/谱理论
id: wiki20241211101705
banner: "![[astrowalk.gif]]"
---
---

## The 1 riesz-schauder 定理

设 $A \in \mathcal{C}(X)$，[[Wiki - 紧算子]]则 

(1) 如果 $\dim(X) = \infty$，则 $0 \in \sigma(A)$. [[Wiki - 有界线性算子的谱]]

(2) $\sigma(A)\backslash\{0\} = \sigma_p(A)\backslash\{0\}$. [[Wiki - 点谱，连续谱和剩余谱]]

(3) 非零特征值的特征子空间 [[Wiki - 特征子空间]]一定是有限维的。 

(4) 不同特征值的特征向量 [[Wiki - 特征值和特征向量]]线性无关 [[Wiki - 线性相关和线性无关]]。 

(5) $0$ 是 $\sigma(A)$ 的唯一可能的极限点 [[Wiki - 极限点]]。

### Proof

（1）反证，否则 $A^{-1}\in \mathcal{L}(X)$，$I= A^{-1}\circ A$ 是有界线性算子和紧算子的复合，是紧算子，于是 $dim(X)<\infty$ 矛盾

（2）只需证明： $\forall \lambda \notin \sigma_p(A), \lambda \neq 0 \Rightarrow \lambda \in \rho(A)$ 

实际上，$\lambda \notin \sigma_p(A) \Rightarrow \lambda I - A$ 单射，由 F.A. $\Rightarrow \lambda I - A$ 是双射，

由 IMT $\Rightarrow (\lambda I - A)^{-1} \in \mathcal{L}(X)$. [[Wiki - 逆算子定理]]

（3）对于 $\forall 0 \neq \lambda \in \sigma_p(A)$， $\text{Ker}(\lambda I - A)=\text{Ker}(I - \frac{1}{\lambda}A) \stackrel{\text{Riesz - Fredholm}}{\Longrightarrow} \dim(\lambda I - A)<\infty$ [[Wiki - riesz-fredholm定理]]

（5）假设 $\sigma(A)$ 有极限点 $\lambda_0 \neq 0$，则存在 $\lambda_n \in \sigma(A)$ 使得 $\lambda_n \to \lambda_0$. 不妨设 $\{\lambda_n\}$ 互不相同，n 充分大时 $\lambda_n \neq 0$. 不妨设所有 $\lambda_{n}\neq 0$

$$\frac{1}{\lambda_n} \to \frac{1}{\lambda_0} \Rightarrow \sup_n \left|\frac{1}{\lambda_n}\right|<\infty$$ 

取 $x_n \in \text{Ker}(\lambda_n I - A)$ [[Wiki - 线性映射的像空间和核]]，由 (4) 可得 $\{x_n\}_{n = 1}^{\infty}$ 线性无关，令 $X_n \stackrel{\text{def}}{=} \text{span}\{x_1, \ldots, x_n\}$，则 $X_n$ 是 $X_{n + 1}$ 的真闭子空间。

由 Riesz 引理 [[Wiki - hahn-banach定理的推论]] $\Rightarrow \exists y_n \in X_n, \left\|y_n\right\| = 1$ 使得 $\text{dist}(y_n, X_{n - 1})>\frac{1}{2}$ 

而 $y_n=\sum_{k = 1}^{n} \alpha_{k} x_{k} \Rightarrow (\lambda_n I - A)y_n=\sum_{k = 1}^{n} \alpha_{k}(\lambda_n - \lambda_k)x_k$ 。对于 $\forall n, m$，不妨 $n > m$， 
$$\left\|A\left(\frac{y_n}{\lambda_n}\right)-A\left(\frac{y_m}{\lambda_m}\right)\right\|=\left\|y_n - \left[y_n - A\left(\frac{y_n}{\lambda_n}\right)\right] - \left[A\left(\frac{y_m}{\lambda_m}\right)\right]\right\| \geq \text{dist}(y_n, X_{n - 1})>\frac{1}{2}$$

另一方面，$\left\{\frac{y_n}{\lambda_n}\right\}$ 是有界集，从而 $\left\{A\left(\frac{y_n}{\lambda_n}\right)\right\}$ 有收敛子列，矛盾。

## Pro 1 

若 $A\in \mathcal{C}(X)$，则 $\sigma(A)$ 至多可数 [[Wiki - 有界线性算子的谱]]

### Proof

$\sigma (A) / \{0\}= \sigma_{p}(A) / \{0\} =\bigcup_{k=1}^{\infty}E_{k}$，其中 $E_{k}=\sigma_{p}(A)\cap \left\{ \lambda\in \mathbb{C}: |\lambda|> \frac{1}{k} \right\}$

只需证 $E_{k}$ 元素个数有限，否则由 [[Wiki - 算子的谱的性质#Pro 3]]，$E_{k}$ 有界存在收敛子列 $\to \lambda_{0}$，且 $dist (0, E_{k})> \frac{1}{k}$，所以 $\lambda_{0}\neq 0$，与极限点只能是 0 矛盾

## Cal 1

如果 X 是无穷维 banach 空间 [[Wiki - banach空间]]，$A\in \mathcal{C}(X)$，则 $\sigma(A)$ 只能说以下几种：

1、$\sigma (A)=\{0\}$

2、$\sigma (A)=\{0,\lambda_{1},\dots,\lambda_{n}\}$

3、$\sigma (A)=\{0,\lambda_{1},\lambda_{2},\dots\}$，且 $\lambda_{n}\to 0$，这里 $\lambda_{i}\in \sigma_{p}(A)$



