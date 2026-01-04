---
aliases: 
info: 矩阵相似与多项式矩阵相抵
date: 2023-12-11-星期一 08:53
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 线性代数/矩阵
id: wiki20231211085333
banner: "![[astrowalk.gif]]"
---
---

## Pro 1

```ad-proposition
title: Propositon 1

```
$A, B\in \mathbb{F}^{n\times n}$，则 A 与 B 相似 [[Wiki - 矩阵的相似]] $\leftrightarrow \lambda I-A$ 与 $\lambda I-B$ 相抵 [[Wiki - 矩阵相抵]]

[[Wiki - 多项式矩阵相抵]]


### Proof

$\to:,B=P^{-1}AP$，则
$$
\lambda I-B=P^{-1}(\lambda I-A)P
$$

$\leftarrow:$ 存在可逆多项式矩阵 [[Wiki - 多项式矩阵可逆]]，$\lambda I-B=P(\lambda)(\lambda I-A)Q(\lambda)$

$$
P(\lambda)^{-1}(\lambda I-B)=Q(\lambda)
$$

设
$$\begin{gathered}
Q(\lambda)=Q_{k}\lambda^{k}+Q_{k-1}\lambda^{k-1}+\cdots+\boldsymbol{Q}_{1}\lambda+\boldsymbol{Q}_{\mathrm{0}} \\
Q(\lambda)^{-1}=R_{m}\lambda^{m}+R_{m-1}\lambda^{m-1}+\cdots+R_{1}\lambda+R_{0} 
\end{gathered}$$

$$\begin{gathered}
\mathbf{W}=Q(\mathbf{B})=Q_{k}\mathbf{B}^{k}+Q_{k-1}\mathbf{B}^{k-1}+\cdots+\mathbf{Q}_{1}\mathbf{B}+\mathbf{Q}_{0}. \\
\text{因为 }\mathcal{Q}(\lambda)^{-1}\cdot\mathcal{Q}(\lambda)=\boldsymbol{I}_{(n)},\text{所以} \\
R_{m}Q(\lambda)\lambda^{m}+\cdots+R_{1}Q(\lambda)\lambda+R_{0}Q(\lambda)=I_{(n)}. \\
\text{因此} \\
\boldsymbol{R}_m\boldsymbol{W}\boldsymbol{B}^m+\cdots+\boldsymbol{R}_1\boldsymbol{W}\boldsymbol{B}+\boldsymbol{R}_0\boldsymbol{W}=\boldsymbol{I}_{(n)}. 
\end{gathered}$$

 但是，由于 $\lambda I_{(n)}-B=P(\lambda)(\lambda I_{(n)}-A)Q(\lambda)$, 所以 $P(\lambda)^{-1}(\lambda I_{(n)}-B)=(\lambda I_{(n)}-$ $A)Q(\lambda)=Q(\lambda)\lambda-AQ(\lambda)$. **用方阵 $B$ 代换 $\lambda$**(这步的合理性如何得到？）, 得到 $Q(B)B=AQ(B)$ , 即 $WB=$ $AW$. 由此得到，$WB^2=A^2W,...,WB^l=A^lW$. 于是式化为

$$
(R_{m}A^{m}+\cdots+R_{1}A+R_{0})W=I_{(n)}\:.
$$
所以 W 可逆 [[Wiki - 逆矩阵]]，则 $B=W^{-1}AW$




