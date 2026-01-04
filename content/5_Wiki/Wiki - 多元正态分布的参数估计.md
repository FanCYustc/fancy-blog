---
aliases: 
info: 
date: 2025-03-31-星期一 11:29
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 数理统计/点估计
  - 多元统计分析
id: wiki20250331112903
banner: "![[astrowalk.gif]]"
---
---

## The 1 矩估计

The unbias estimation [[Wiki - 无偏估计]] of $N_{p}(\boldsymbol{\mu},\Sigma)$ using samples $\mathbf{x}_{1},\dots,\mathbf{x}_{n}i.i.d\sim N_{p}(\boldsymbol{\mu},\sigma)$ is $\bar{x}$ and $S$ ，where $S= \frac{1}{n-1}\sum_{i=1}^{n} (\mathbf{x}_{i}-\bar{\mathbf{x}})(\mathbf{x}_{i}-\bar{\mathbf{x}})^{T}$, satisfying
$$
E[\bar{\boldsymbol{x}}]=\boldsymbol{\mu},Var[\bar{\mathbf{x}}]=\frac{\Sigma}{n}; E[S]= \Sigma
$$
[[Wiki - 矩估计]]
## The 2 MLE 估计

假设 $\mathbf{x}_{1},\dots,\mathbf{x}_{n}i.i.d\sim N_{p}(\boldsymbol{\mu},\Sigma)$，[[Wiki - 多元正态分布]] the MLE estimation of $\boldsymbol{\mu},\Sigma$ is $\hat{\boldsymbol{\mu}}= \bar{x}, \hat{\Sigma}= \frac{(n-1)S}{n}$ representatively, 

[[Wiki - 极大似然估计]]

与一元正态的极为类似 

### Proof

列出似然函数，易得 $\boldsymbol{\mu}$ 的极大点为 $\bar{\mathbf{x}}$，为极大化 $\Sigma$，下面只需极大化

$$ 
\begin{align}
& \frac{1}{{\left| \sum \right| }^{n/2}}\exp \left( {-\frac{1}{2}\mathop{\sum }\limits_{{i = 1}}^{n}{\left( {\mathbf{x}}_{i} - \overline{\mathbf{x}}\right) }^{\top }{\sum }^{-1}\left( {{\mathbf{x}}_{i} - \overline{\mathbf{x}}}\right) }\right) \\
= &{\left| \Omega \right| }^{n/2}\exp \left( {-\frac{1}{2}\operatorname{tr}\left( {\Omega \mathop{\sum }\limits_{{i = 1}}^{n}\left( {{\mathbf{x}}_{i} - \overline{\mathbf{x}}}\right) {\left( {\mathbf{x}}_{i} - \overline{\mathbf{x}}\right) }^{\top }}\right) }\right) \\
= &{\left| \Omega \right| }^{n/2}\exp \left( {-\frac{n}{2}\operatorname{tr}\left( {\Omega {S}^{ * }}\right) }\right)
\end{align}$$

故求 $\sum$ 的极大似然估计等价于

$$
\mathop{\max }\limits_{{\Omega  > 0}}f\left( \Omega \right) ,f\left( \Omega \right)  = \log \left( \left| \Omega \right| \right)  - \operatorname{tr}\left( {\Omega {S}^{ * }}\right)
$$

记 $A = \Omega {S}^{ * }$ , 其所有特征根 ${\lambda }_{1},\ldots ,{\lambda }_{p}$，

$$
\begin{align}
f\left( \Omega \right)  &= \log \left( \left| \Omega \right| \right)  - \operatorname{tr}\left( {\Omega {S}^{ * }}\right)  = \log \left( \left| {\Omega {S}^{ * }}\right| \right)  - \operatorname{tr}\left( {\Omega {S}^{ * }}\right)  - \log \left( \left| {S}^{ * }\right| \right) \\
&= \mathop{\sum }\limits_{{i = 1}}^{p}\left( {\log \left( {\lambda }_{i}\right)  - {\lambda }_{i}}\right)  - \log \left( \left| {S}^{ * }\right| \right)
\end{align}
$$

令 $\frac{\partial f}{\partial {\lambda }_{i}} = \frac{1}{{\lambda }_{i}} - 1 = 0 \Rightarrow  {\lambda }_{i} = 1,i = 1,\ldots ,p$

$\Rightarrow  A = {I}_{p} \Rightarrow$ 最优解 $\widehat{\Omega } = {S}^{* - 1},\widehat{\sum } = {S}^{ * }$

