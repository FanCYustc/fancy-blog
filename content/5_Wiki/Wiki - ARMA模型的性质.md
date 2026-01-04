---
aliases: 
info: 
date: 2024-12-30-星期一 23:08
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 时间序列分析
id: wiki20241230230857
banner: "![[astrowalk.gif]]"
---
---
[[Wiki - 平稳序列|自协方差函数矩阵]]
## The 1 自协方差函数

对 ARMA (p, q) 模型 [[Wiki - ARMA模型]] 自协方差函数有关系
$$
\gamma_{k}= \sigma^{2}\sum_{j=0}^{\infty}\psi_{j}\psi_{j+k}, \quad k=0,1,2,\dots
$$

跟 [[Wiki - MA模型]]形式一样


## The 2 wold 系数

对 ARMA (p, q) 模型，记 $b_j = 0(j < 0 或 j > q)$， $b_0 = 1$； $\psi_{j} = 0(j < 0)$。由参数 $\mathbf{a}_p=(a_{1}, \ldots, a_{p})^T, \mathbf{b}_p=(b_{1}, \ldots, b_{q})^T$ 计算 $\{\psi_{j}\}$ 时可以递推 

$$ \psi_{j} = \begin{cases} 1, & j = 0, \\ b_j + \sum_{k = 1}^{p} a_{k} \psi_{j - k}, & j = 1, 2, \ldots \end{cases}  $$ 
与 [[Wiki - AR模型的Wold系数]]类似

### Proof

记 $A(z)=1-\sum_{j = 1}^{p} a_{j} z^{j}=\sum_{j = 0}^{\infty} \phi_{j} z^{j}$。注意 

$$ A(z) \Psi(z)=\sum_{k = 0}^{p} \phi_{k} z^{k} \sum_{j = 0}^{\infty} \psi_{j} z^{j}=\sum_{j = 0}^{\infty} \sum_{k = 0}^{p} \phi_{k} \psi_{j - k} z^{j}=B(z) $$
**比较系数得** 

$$ \begin{align*} \sum_{k = 0}^{p} \phi_{k} \psi_{j - k}&=b_{j}, \quad j \geq 1 \\ \psi_{j}&=\sum_{k = 1}^{p} a_{k} \psi_{j - k}+b_{j}, \quad j \geq 1 \end{align*} $$


[[Wiki - 自协方差矩阵的性质]]

## The 3 yule-walker 方程

同 [[Wiki - Yule-Walker方程]]中的证明，可以得到

$$
 \gamma_{k}-\sum_{j = 1}^{p} a_{j} \gamma_{k - j}= \begin{cases} \sigma^{2} \sum_{j=\max(0, k)}^{q} b_{j} \psi_{j - k}, & k < q \\ \sigma^{2} b_{q}, & k = q \\ 0, & k > q \end{cases} 
 $$
  对 $k > q$ 的 Y - W 方程可以写成矩阵形式： 
  $$
   \begin{bmatrix} \gamma_{q + 1} \\ \gamma_{q + 2} \\ \vdots \\ \gamma_{q + p} \end{bmatrix} = \begin{bmatrix} \gamma_{q} & \gamma_{q - 1} & \cdots & \gamma_{q - p + 1} \\ \gamma_{q + 1} & \gamma_{q} & \cdots & \gamma_{q - p + 2} \\ \vdots & \vdots & \ddots & \vdots \\ \gamma_{q + p - 1} & \gamma_{q + p - 2} & \cdots & \gamma_{q} \end{bmatrix} \begin{bmatrix} a_{1} \\ a_{2} \\ \vdots \\ a_{p} \end{bmatrix} 
$$
对比 $AR (p)$ 的 Y - W 方程，相当于 $\Gamma_{p}$ 的 $(i, j)$ 元素写成 $\gamma_{i - j}$ 后，给所有 $\gamma$ 的下标都加上q。

如果记 $\Gamma_{p, q}= \{\gamma_{|q+i-j|}\}_{i,j=1,\dots,p}$，则如果 $\Gamma_{p,q}$ 可逆，可以求出 $(a_{1},\dots,a_{p})$，再利用

$$
Y_{t}= A(\mathcal{B})X_{t}= B(\mathcal{B})\epsilon_{t}
$$
中 $Y_{t}$ 也是平稳列，利用 [[Wiki - MA模型]]中的方法求出 $b_{1},\dots,b_{q}$

此时有定理：当 $m\geq p$ 时，ARMA 模型的自协方差矩阵 $\Gamma_{m,q}$ 可逆

## The 4 充要条件

设零均值平稳列 $\{X_{t}\}$，且存在实数 $a_{1},\dots,a_{p}$ 满足最小相位条件，[[Wiki - AR模型]]

满足
$$
\gamma_{k}- \sum_{j=1}^{p}a_{j}\gamma_{k-p}= \begin{cases}
c\neq 0, \quad k=q \\
0, \quad k>q
\end{cases}
$$
则 $X_{t}$ 是一个 ARMA (p', q') 模型，其中 $p'\leq p, q'\leq q$



