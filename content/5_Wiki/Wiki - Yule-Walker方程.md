---
aliases: 
info: 
date: 2024-12-28-星期六 20:50
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 时间序列分析
id: wiki20241228205044
banner: "![[astrowalk.gif]]"
---
---


## Pro 1 等价定义

对平稳序列 [[Wiki - 平稳序列]] $\{X_{t}\}$，$a_{1},\dots, a_{p}\in \mathbb{R}$，$WN (0,\sigma^{2})\{\epsilon_{t}\}$，[[Wiki - 白噪声]]满足
$$
X_{t}= \sum_{j=1}^{\infty}a_{j}X_{t-j}+ \epsilon_{t}
$$
且 $\epsilon_{t+k}, k\geq 1$ 与 $\{X_{s}, s\leq t\}$ 互不相关 [[Wiki - 变量的不相关]]，则称 $\{X_{t}\}$ 为 AR (p) 序列。

即不相关与最小相位条件等价 [[Wiki - AR模型#Def 1 自回归模型]]

### Proof

 $L(X_t|X_{t - 1}, \ldots, X_{t - p})$ 即 $X_t$ 到 $\text{sp}(X_{t - 1}, \ldots, X_{t - p})$ 的投影，由投影 [[Wiki - 正交投影]]的线性性质及 $\epsilon_t$ 与 $X_{t - 1}, \ldots, X_{t - p}$ 正交[[Wiki - 欧几里得空间的距离和夹角|正交]]可得 
 
 $$ L(X_t|X_{t - 1}, \ldots, X_{t - p}) = a_1 X_{t - 1} + \cdots + a_p X_{t - p} + 0 $$
 
  可知用 $X_{t - 1}, \ldots, X_{t - p}$ 预测 $X_t$ 的 Yule - Walker 系数 [[Wiki - 最优线性预测|Yule-Walker系数]]  为 $(a_1, \ldots, a_p)$，又
   $$ E(X_t - L(X_t|X_{t - 1}, \ldots, X_{t - p}))^2 = E\epsilon_t^2 = \sigma^2 > 0 $$ 
   所以 $X_t, X_{t - 1}, \ldots, X_{t - p}$ 线性无关，有 $\Gamma_{p + 1} > 0$。由定理 [[Wiki - 自协方差矩阵的性质#Pro 3]] 可知 $A(z)$ 满足最小相位性，因此 $\{X_t\}$ 是 $AR(p)$ 序列。

## The 1 yule-walker 方程

由 [[Wiki - AR模型#Pro 2 谱密度与自协方差]]，自协方差满足

$$
 \begin{pmatrix} \gamma_1 \\ \gamma_2 \\ \gamma_3 \\ \vdots \\ \gamma_p \end{pmatrix} = \begin{pmatrix} \gamma_0 & \gamma_1 & \cdots & \gamma_{p - 1} \\ \gamma_1 & \gamma_0 & \cdots & \gamma_{p - 2} \\ \gamma_2 & \gamma_1 & \cdots & \gamma_{p - 3} \\ \vdots & \vdots & \ddots & \vdots \\ \gamma_{p - 1} & \gamma_{p - 2} & \cdots & \gamma_0 \end{pmatrix} \begin{pmatrix} a_1 \\ a_2 \\ a_3 \\ \vdots \\ a_p \end{pmatrix} 
 $$
 
  记 
  $$
  \gamma_p = \begin{pmatrix} \gamma_1 \\ \gamma_2 \\ \gamma_3 \\ \vdots \\ \gamma_p \end{pmatrix}, \quad \Gamma_p = \begin{pmatrix} \gamma_0 & \gamma_1 & \cdots & \gamma_{p - 1} \\ \gamma_1 & \gamma_0 & \cdots & \gamma_{p - 2} \\ \gamma_2 & \gamma_1 & \cdots & \gamma_{p - 3} \\ \vdots & \vdots & \ddots & \vdots \\ \gamma_{p - 1} & \gamma_{p - 2} & \cdots & \gamma_0 \end{pmatrix}, \quad a_p = \begin{pmatrix} a_1 \\ a_2 \\ a_3 \\ \vdots \\ a_p \end{pmatrix} $$
  
   有 $\Gamma_{p} \boldsymbol{a}_{p} = \boldsymbol{\gamma}_{p}$

对 $n\geq p$，也有 $\Gamma_{n}\boldsymbol{a}_{n}= \boldsymbol{\gamma}_{n}$，其中
$$
\boldsymbol{a}_{n}= \begin{pmatrix}
a_{1} \\
\vdots \\
a_{p} \\
0 \\
\vdots \\
0
\end{pmatrix}_{n}
$$

对 $\gamma_{0}$，有 $\gamma_{0}= a_{1}\gamma_{1}+\dots +a_{p}\gamma_{p}+ \sigma^{2}$

总结下来就有 **Yule-Walker 方程**：
$$
\begin{align}
\gamma_{k} &= a_{1}\gamma_{k-1}+\dots+ a_{p}\gamma_{k-p}, k\geq 1 \\
\gamma_{0} &= a_{1}\gamma_{1}+\dots+a_{p}\gamma_{p}+\sigma^{2}
\end{align}
$$
也就是 $A (\mathcal{B}) \gamma_{k}=0, k\geq 1; A(\mathcal{B})\gamma_{0}=\sigma^{2}$


### Proof

对 AR (p) 模型两边同乘 $X_{t-k}$，取期望

就有
$$
\gamma_{k}= a_{1}\gamma_{k-1}+\dots+a_{p}\gamma_{k-p},k\geq 1
$$
对 $k=0$ 同理


## Cal 1

将 $k<0$ 的情况也总结起来，有 
$$
A(\mathcal{B})\gamma_{k}= \gamma_{k}- a_{1}\gamma_{k-1}-\dots-a_{p}\gamma_{k-p}= \sigma^{2}\psi_{-k}
$$
其中 $A^{-1}(z)= \sum_{j=0}^{\infty}\psi_{j}z^{j};\psi_{j}=0,j<0$

### Proof

 $$
 \begin{align*} 
&\gamma_k - (a_1 \gamma_{k - 1} + a_2 \gamma_{k - 2} + \cdots + a_p \gamma_{k - p}) \\
&= E\left[X_{t - k} \left(X_t - \sum_{j = 1}^{p} a_j X_{t - j}\right)\right] \\ &= E(X_{t - k} \epsilon_t) \\ &= E\left[\sum_{j = 0}^{\infty} \psi_j \epsilon_{t - k - j} \epsilon_t\right] = \sigma^2 \psi_{-k} \end{align*} 
 $$

