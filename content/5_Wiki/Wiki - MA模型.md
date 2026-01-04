---
aliases:
  - 滑动平均模型
info: 
date: 2024-12-30-星期一 21:14
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 时间序列分析
id: wiki20241230211451
banner: "![[astrowalk.gif]]"
---
---

## Def 1 MA（q）

 设 $\{\epsilon_t\}$ 是 $WN(0, \sigma^2)$，[[Wiki - 白噪声]]如果实数 $b_1, b_2, \cdots, b_q$（$b_q \neq 0$）使得
  $$ B(z) = 1+\sum_{j = 1}^{q} b_j z^j \neq 0, \quad |z| < 1, $$ 
  则称 
  $$ X_t=\epsilon_t+\sum_{j = 1}^{q} b_j \epsilon_{t - j}, \quad t \in \mathbb{Z}, \tag{12.2} $$
  
   是 $q$ 阶滑动平均模型，简称为 $MA(q)$ 模型。
   
   模型 $(12.2)$ 中的 $\{X_t\}$ 显然是平稳列 [[Wiki - 平稳序列]]。称由 $(12.2)$ 决定的平稳序列 $\{X_t\}$ 是滑动平均序列，简称为 $MA(q)$ 序列。 
   
   如果进一步要求多项式 $B(z)$ 在单位圆上也没有零点：$B(z) \neq 0$ 当 $|z| \leq 1$，则称 $(12.2)$ 是可逆的 $MA(q)$ 模型，称相应的平稳序列是**可逆**的 $MA(q)$ 序列。

## Pro 1

对于可逆 MA [[Wiki - 全纯函数]]，存在 $B(z)$ 的逆 [[Wiki - 全纯函数的Taylor展开]]

$$
B^{-1}(z)= \sum_{j=0}^{\infty} \phi_{j}z^{j}, |z|\leq 1+\delta(\delta>0)
$$

[[Wiki - AR模型的Wold系数]]

则有 $B^{-1}(\mathcal{B}) X_{t}= \epsilon_{t}= \sum_{j=0}^{\infty}\phi_{j}X_{t-j}$

## The 1 充要条件

记 $1=b_{0}$，则 MA (q) 的自协方差函数[[Wiki - 平稳序列|自协方差函数矩阵]]满足
$$
\gamma_{k}= \begin{cases}
\sigma^{2}\sum_{j=0}^{q-k} b_{j}b_{j+k}, \quad 0\leq k\leq q \\
0, \quad k>q
\end{cases}
$$

其实有设平稳列 $\{X_{t}\}$ 有恒正的谱密度 [[Wiki - 平稳序列的谱]]，则 $\{X_{t}\}$ 是可逆 MA（q）序列当且仅当 $\{X_{t}\}$ 自协方差 q 后截尾，当且仅当 $\{X_{t}\}$ 谱密度可以写成
$$
f( \lambda)= \frac{\sigma^{2}}{2\pi} |B(e^{i\lambda})|^{2}
$$

截尾与 AR 偏自相关系数 p 后截尾对应 [[Wiki - 偏自相关函数]]

谱密度与自协方差与 [[Wiki - AR模型]]对比


## The 2 递推公式

MA (q) 序列的系数$(b_1, b_2, \ldots, b_q)$ 及$\sigma^2$ 可以被$\gamma_0, \gamma_1, \ldots, \gamma_q$ 唯一确定。

记 
$$ A = \begin{pmatrix} 0 & 1 & 0 & \cdots & 0 & 0 \\ 0 & 0 & 1 & \cdots & 0 & 0 \\ \vdots & \vdots & \vdots & \ddots & \vdots & \vdots \\ 0 & 0 & 0 & \cdots & 0 & 1 \\ 0 & 0 & 0 & \cdots & 0 & 0 \end{pmatrix}_{q \times q}, \quad C = \begin{pmatrix} 1 \\ 0 \\ \vdots \\ 0 \\ 0 \end{pmatrix}_{q \times 1} \quad (12.10) $$

$$ \Omega_{k} = \begin{pmatrix} \gamma_1 & \gamma_2 & \cdots & \gamma_{k + 1} \\ \gamma_2 & \gamma_3 & \cdots & \gamma_{k + 2} \\ \vdots & \vdots & \ddots & \vdots \\ \gamma_{q} & \gamma_{q  + 1} & \cdots & \gamma_{q+k - 1} \end{pmatrix}, \quad \gamma_q = \begin{pmatrix} \gamma_1 \\ \gamma_2 \\ \vdots \\ \gamma_q \end{pmatrix} $$

则有： 
$$ b_q = \frac{1}{\sigma^2} (\gamma_q - A \Pi C), \quad \sigma^2 = \gamma_0 - C^T \Pi C, \quad (12.11) $$
其中 
$$ \Pi = \lim_{k \to \infty} \Omega_{k} \Gamma_{k}^{-1} \Omega_{k}^{T} \tag{12.12} $$


