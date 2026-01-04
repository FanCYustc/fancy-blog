---
aliases: 
info: 
date: 2024-12-28-星期六 20:19
update: 
tags:
  - wiki/year2024
  - 时间序列分析
  - wiki/month09
id: wiki20241228201941
banner: "![[astrowalk.gif]]"
---
---

## Def 1 wold 系数

对于 $AR(p)$ 模型 $A (\mathcal{B}) X_{t}= X_{t}-a_{1}X_{t-1}-\dots-a_{p}X_{t-p}=0$ [[Wiki - AR模型]]，

 $$ A^{-1}(z) = \sum_{j = 0}^{\infty} \psi_{j} z^{j}
 $$

展开序列在 $|z| \leq \rho$ 收敛，其中 $\rho > 1$ 小于特征多项式的每一个根的模 [[Wiki - 推移算子]]，$\psi_{j} = o (\rho^{-j})$。于是 
  $$ Y_{t} = A^{-1}(\mathcal{B}) \epsilon_{t} = \sum_{j = 0}^{\infty} \psi_{j} \epsilon_{t - j} $$
是线性平稳列，有 
   $$ A(\mathcal{B}) Y_{t} = A(\mathcal{B}) A^{-1}(\mathcal{B}) \epsilon_{t} = \epsilon_{t} $$
从而 $\{Y_{t}\}$ 是 $AR (p)$ 模型的平稳解 [[Wiki - 平稳序列]]。反之，如果 $\{X_{t}\}$ 是平稳解，
    $$ A^{-1}(\mathcal{B}) [A(\mathcal{B}) X_{t}] = A^{-1}(\mathcal{B}) \epsilon_{t} = Y_{t} $$
即有 $X_{t} = Y_{t}$。所以
$$ X_{t} = \sum_{j = 0}^{\infty} \psi_{j} \epsilon_{t - j} \tag{8.7} $$

这是 $AR (p)$ 模型 (8.5) 的**唯一的平稳解**。$\{\psi_{j}\}$ 称为平稳序列 $\{X_{t}\}$ 的 **Wold 系数**，以负指数速度衰减，且特征根离单位圆越远，衰减速度越快。

## The 1 递推公式

记 $a_0 = - 1$ 则 $A(z)=-\sum_{j = 0}^{p}a_jz^j$， 
$$1 = A(z)A^{-1}(z)=-\sum_{m = 0}^{\infty}\left(\sum_{j = 0}^{p}a_j\psi_{m - j}\right)z^m$$
故 $\psi_0 = 1$，$\sum_{j = 0}^{p}a_j\psi_{m - j}=0$，$m > 0$。于是 
$$\begin{cases} \psi_0 = 1,\\ \psi_m=\sum_{j = 1}^{p}a_j\psi_{m - j},&m = 1,2,\cdots\\ \psi_m = 0,&m < 0 \end{cases}$$
用推移算子表示为 $\psi_m = 0,m < 0$；$\psi_0 = 1$；$A(\mathcal{B})\psi_m = 0,m\geq1$。

