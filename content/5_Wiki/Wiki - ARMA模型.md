---
aliases:
  - 自回归滑动平均模型
info: 
date: 2024-12-30-星期一 22:04
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 时间序列分析
id: wiki20241230220428
banner: "![[astrowalk.gif]]"
---
---

## Def 1 ARMA 模型

设 $\{\epsilon_t\}$ 是 $WN(0, \sigma^2)$，实系数多项式 $A(z)$ 和 $B(z)$ **没有公共根**，满足 
$$ b_0 = 1, \quad a_p b_q \neq 0 $$
和 
$$ A(z) = 1 - \sum_{j = 1}^{p} a_j z^j \neq 0, \quad |z| \leq 1, $$

$$ B(z) = 1 + \sum_{j = 1}^{q} b_j z^j \neq 0, \quad |z| < 1,  $$
就称差分方程
$$ X_t = \sum_{j = 1}^{p} a_j X_{t - j} + \sum_{j = 0}^{q} b_j \epsilon_{t - j}, \quad t \in \mathbb{Z}, \tag{13.2} 
$$

是一个自回归滑动平均模型，简称为 ARMA (p, q) 模型。称满足 (13.2) 的平稳序列 $\{X_t\}$ 为平稳解或 ARMA (p, q) 序列。模型写成 
$$
A(\mathcal{B}) X_t = B(\mathcal{B}) \epsilon_t, \quad t \in \mathbb{Z} \tag{13.3} 
$$

## The 1 

$A^{-1}(z) B(z)$ 在 $|z| < \rho$ 解析 [[Wiki - 全纯函数]]（$1 < \rho < \min\{|z_j|\}$，$\{z_j\}$ 为 $A(z)$ 的所有根），可以 Taylor 展开 [[Wiki - 全纯函数的Taylor展开]]

$$ \Psi(z) \triangleq A^{-1}(z) B(z) = \sum_{j = 0}^{\infty} \psi_j z^j, \quad |z| \leq \rho \quad (13.4) $$

其中可得 $\psi_{j}= o(\rho^{-j})$，称为 ARMA 模型的 wold 系数 [[Wiki - AR模型的Wold系数]]。 

有 ARMA (p, q) 模型的唯一平稳解为
$$
X_{t}= \Psi(\mathcal{B})\epsilon_{t}= \sum_{j=0}^{\infty}\psi_{j}\epsilon_{t-j}
$$

通解可以写成  
$$
Y_t = X_t + \sum_{j = 1}^{k} \sum_{l = 0}^{r (j) - 1} V_{l, j} t^l \rho_j^{-t} \cos (\lambda_j t - \theta_{l, j}), \quad t \in \mathbb{Z}, \quad (13.6) 
$$
其中 $\{X_t\}$ 为平稳解，$z_1, z_2, \cdots, z_k$ 为 $A (z)$ 的全体互不相同的零点，$z_j = \rho_j e^{i \lambda_j}$ 有重数 $r (j)$。随机变量 $V_{l, j}, \theta_{l, j}$ 由 $Y_0 - X_0, Y_1 - X_1, \cdots, Y_{p - 1} - X_{p - 1}$ 惟一决定。

同 [[Wiki - AR模型]]



## Pro 1 谱密度

对于 ARMA (p, q) 模型，谱密度为
$$
f( \lambda)= \frac{\sigma^{2}}{2\pi}|\sum_{j=0}^{\infty}\psi_{j}e^{ij\lambda}|^{2}= \frac{\sigma^{2}}{2\pi}| \frac{{B(e^{i\lambda})}}{A(e^{i\lambda})}|^{2}
$$
[[Wiki - 平稳序列的谱]]

## Pro2 可逆 ARMA

在 ARMA (p, q) 模型的中，如果进一步要求 B (z) 在单位圆上无根： 
$$ B(z) = 1 + \sum_{j = 1}^{q} b_j z^j \neq 0, \quad |z| \leq 1 \tag{13.16} 
$$

则称 ARMA (p, q) 模型 (13.16) 为可逆的 ARMA 模型，称相应的平稳解为**可逆的**ARMA (p, q) 序列。 

可以知道可逆的 ARMA (p, q) 序列是最小序列。[[Wiki - 最小序列]]

对于可逆的 ARMA (p, q) 模型 (13.16)，由于 $B^{-1}(z)A(z)$ 在 $\{z:|z| \leq \rho\}$ ($\rho > 1$) 内解析 [[Wiki - 全纯函数]]，所以有 Taylor 展开： 

$$ B^{-1}(z)A(z) = \sum_{j = 0}^{\infty} \varphi_j z^j, \quad |z| \leq \rho, \quad (13.17) $$

其中 $|\varphi_j| = o(\rho^{-j})$，当 $j \to \infty$，从而可以定义 $B^{-1}(\mathcal{B})A(\mathcal{B})=\sum_{j = 0}^{\infty} \varphi_j \mathcal{B}^j$。在 (13.17) 两边乘以 $B^{-1}(\mathcal{B})$，得到： 

$$ \varepsilon_t = B^{-1}(\mathcal{B})A(\mathcal{B})X_t = \sum_{j = 0}^{\infty} \varphi_j X_{t - j}, \quad t \in \mathbb{Z}. \quad (13.18) $$

[[Wiki - MA模型]]

