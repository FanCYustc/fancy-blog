---
aliases: 
info: 
date: 2024-09-23-星期一 11:07
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 线性代数/矩阵
  - 概率论/特征
  - 相关
id: wiki20240923110749
banner: "![[astrowalk.gif]]"
---
---

## Def 1 精度矩阵

协方差矩阵的逆 $\Sigma^{-1}=(\omega_{ij})$ 称为精度矩阵

[[Wiki - 协方差矩阵]]


## Pro 1 

设 $\Sigma= Var[x,y,\boldsymbol{z}]$ 为方差协方差矩阵，设精度矩阵
$$
\Omega= \Sigma^{-1}= \begin{pmatrix}
\omega_{x x} & \omega_{xy} &*  \\
\omega_{yx} & \omega_{yy} &*  \\
* & * & *
\end{pmatrix}
$$
则 
$$
\rho_{xy\bullet\boldsymbol{z}}= -\frac{\omega_{xy}}{\sqrt{  \omega_{x x} \omega_{yy} }}
$$
[[Wiki - 偏相关系数]]

### Proof

需要引理：

```ad-lemma

分块矩阵 
$$
\Sigma= \begin{pmatrix}
\Sigma_{11} & \Sigma_{12} \\
\Sigma_{21} & \Sigma_{22}
\end{pmatrix}>0 
$$
则
$$
\Omega= \Sigma^{-1}= \begin{pmatrix}
\Sigma_{11\bullet 2}^{-1} & -\Sigma_{11\bullet 2}^{-1}\Sigma_{12}\Sigma_{22}^{-1} \\
-\Sigma_{22\bullet 1}^{-1}\Sigma_{21}\Sigma_{11}^{-1} & \Sigma_{22\bullet 1}^{-1}
\end{pmatrix}
$$


```

[[Wiki - 分块矩阵的逆矩阵]]

[[Wiki - 去相关化]]

## Cal 1 

记 $\Omega= \Sigma^{-1} = (\omega_{ij})$，$\mathbf{x}_{-(i, j)}= (x_{k}, k\neq i,j)$，则
$$
\rho_{ij\bullet -(i,j)}= \frac{- \omega_{ij}}{\sqrt{ \omega_{ii}\omega_{jj} }}
$$

偏相关系数矩阵为 
$$
R_{pc}= (\rho_{ij\bullet -(i,j)})= - C^{-\frac{1}{2}}\Omega C^{-\frac{1}{2}} + 2I_{p}
$$
其中 $C= diag(\Omega)$

与 [[Wiki - Pearson相关系数#Pro 2 相关系数矩阵]]类似

