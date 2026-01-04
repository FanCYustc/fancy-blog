---
aliases:
  - 自回归模型
info: 
date: 2024-12-28-星期六 19:45
update: 2024-12-28-Saturday 20:54:01
tags:
  - wiki/year2024
  - wiki/month09
  - 时间序列分析
id: wiki20241228194524
banner: "![[astrowalk.gif]]"
---
---

## Def 1 自回归模型

如果 $\{\epsilon_t\}$ 是白噪声 [[Wiki - 白噪声]] $WN(0, \sigma^2)$，实数 $a_1, a_2, \cdots, a_p$ ($a_p \neq 0$) 使得多项式 $A(z)$ 的零点都在单位圆外： 
$$ A(z) = 1 - \sum_{j = 1}^{p} a_j z^j \neq 0, \quad |z| \leq 1, \quad (8.4) $$
则称 $p$ 阶差分方程 
$$ X_t = \sum_{j = 1}^{p} a_j X_{t - j} + \epsilon_t, \quad t \in \mathbb{Z}, \quad (8.5) $$
是一个 $p$ 阶自回归模型，简称为 $AR(p)$ 模型。满足 $AR(p)$ 模型 (8.5) 的平稳时间序列 [[Wiki - 平稳序列]] $\{X_t\}$ 称为 (8.5) 的平稳解，也称作 $AR(p)$ 序列。称 $\boldsymbol{a}=(a_1, a_2, \cdots, a_p)^T$ 是 $AR(p)$ 模型的自回归系数。条件 (8.4) 是稳定性条件或**最小相位条件**。$A(z)$ 称为模型 (8.5) 的特征多项式。模型可用推移算子写成 

$$ A(\mathcal{B}) X_t = \epsilon_t, \quad t \in \mathbb{Z} \quad (8.6) $$

[[Wiki - 推移算子]]

## The 1 

[[Wiki - 全纯函数的Taylor展开]]

设 $A^{-1}(z)= \sum_{j=0}^{\infty}\psi_{j}z^{j}$ 为特征多项式的逆 [[Wiki - 全纯函数]]，则 $X_{t}= \sum_{j=0}^{\infty}\psi_{j}\epsilon_{t-j}$ 是 AR (p) 模型的唯一平稳解（a.s.意义下 [[Wiki - 几乎处处收敛]]）

设 $z_{1},\dots,z_{k}$ 是 $A(z)$ 的所有根，且重数为 $r(i),i=1,\dots,k$，则 $AR(p)$ 的通解为
$$
Y_{t}= \sum_{j=0}^{\infty}\psi_{j}\epsilon_{t-j}+\sum_{j=1}^{k}\sum_{l=0}^{r(j)-1}U_{l,j}t^{l}z_{j}^{-t}
$$
其中 $U_{l,j}$ 是随机变量

### Proof

需要用到微分方程的知识：

对方程 $A (\mathcal{B}) X= X_{t}- (a_{1}X_{t-1}+\dots+a_{p}X_{t-p})=0$，常系数齐次线性差分方程的基解为 $\{z^{-t}t^{l}\}, j=1,\dots,k;l=0,1,\dots,r(j)-1$，则他们的线性组合是方程的通解

[[Wiki - 常系数高阶线性微分方程解的结构]]

[[Wiki - 常系数齐次线性微分方程组的基解]]


## Pro 1 

通解 $Y_{t}$ 与平稳解 $X_{t}$ 有关系

$$
|Y_{t}-X_{t}|= |\sum_{j=1}^{k}\sum_{l=0}^{r(j)-1}U_{l,j}t^{l}z_{j}^{-t}|= o(\rho^{-t}),a.s. (t\to \infty)
$$
其中 $\rho$ 为 $A^{-1}(z)$的收敛半径，有 $1< \rho< \min\{|z_{j}|\}$

## Pro 2 谱密度与自协方差



由 [[Wiki - 平稳序列的谱]]，由于 $AR(p)$ 过程是线性过程 [[Wiki - 线性过程]]，所以谱密度有
$$
f( \lambda) = \frac{\sigma^{2}}{2\pi} |\sum_{j=0}^{\infty}\psi_{j}e^{ij\lambda}|^{2}= \frac{\sigma^{2}}{2\pi} \frac{1}{|A(e^{i\lambda})|^{2}}
$$

且谱密度的定义是满足 
$$ \gamma_k = \int_{-\pi}^{\pi} e^{ik\lambda} f(\lambda) d\lambda $$

的非负可积函数。上式是一个 Fourier 级数 [[Wiki - Fourier级数]] 系数的公式 (差一个常数)。在 $\{ \gamma_k \}$ 满足一定条件下 $f(\lambda)$ 必存在，且可表成 $\{ \gamma_k \}$ 的 Fourier 级数。如果平稳序列 $\{ X_t \}$ 的自协方差函数[[Wiki - 平稳序列|自协方差函数矩阵]] $\{ \gamma_k \}$ 绝对可和，则 $\{ X_t \}$ 有谱密度 

$$ f(\lambda) = \frac{1}{2\pi} \sum_{k = -\infty}^{\infty} \gamma_k e^{-ik\lambda} \tag{9.4} 
$$

由于谱密度是实值函数，所以 (9.4) 还可以写成 

$$ f(\lambda) =\frac{1}{2\pi} \sum_{k = -\infty}^{\infty} \gamma_{k } \cos(k\lambda) = \frac{1}{2\pi} \left[ \gamma_0 + 2 \sum_{k = 1}^{\infty} \gamma_k \cos(k\lambda) \right] $$

