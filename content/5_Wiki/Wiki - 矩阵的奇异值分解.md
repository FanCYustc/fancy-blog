---
aliases: 
info: 一般矩阵奇异值分解
date: 2023-07-11-星期二 23:22
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230711232217
banner: "![[astrowalk.gif]]"
---
---
#线性代数/二次型 #线性代数/线性变换 

## 奇异值分解
[[Wiki - 矩阵的奇异值]]
## Pro 1

对于复方阵来说

```ad-proposition
title: Propositon 1

Suppose $T\:\in\:\mathcal{L}(V)$ has singular values $s_{1},\ldots,s_{n}$ . Then there exist prthonormal bases $e_{1},\ldots,e_{n}$ and $f_{1},\ldots,f_{n}$ of $\text{V}$ such that

$$
Tv=s_{1}\langle v,e_{1}\rangle f_{1}+\cdots+s_{n}\langle v,e_{n}\rangle f_{n}
$$

for every $v\in V$



```


## The 1 Existence of SVD

```ad-theorem
title: Theorem 1

Every matrix has a singular value decomposition. The singular values are uniquely determined, and if $A$ is square and the $\sigma_i$ are distinct, then $U$ and $V$ are unique up to sign.
```

## Pro 1 Properties of Singular Values

```ad-proposition
title: Proposition 1

1. The singular values $\sigma_i$ are the square roots of the eigenvalues of $AA^T$ (or $A^TA$)
2. $\text{rank}(A)$ equals the number of non-zero singular values
3. The Euclidean norm $||A||_2 = \sigma_1$ (largest singular value)
4. The Frobenius norm $||A||_F = \sqrt{\sigma_1^2 + ... + \sigma_r^2}$
```

[[Wiki - 特征值和特征向量]]

对特征方程 $A^{T}AV=VD^{2}, D=diag(\sigma_{1},\dots,\sigma_{r})$，这里 $V\in \mathbb{R}^{r\times n}, U\in \mathbb{R}^{m\times r}$

令 $Y=AV=UD$，由于 $A A^{T}AV=A A^{T}Y= YD^{2}$，且 $Y^{T}Y=D^{2}$，所以 U 满足 $U^{T}U=I_{r}, A A^{T}U=UD^{2}$

于是 $AVV^{T}=A= UDV^{T}$，也就是说 $A= \sigma_{1} \boldsymbol{u}_{1}\boldsymbol{v}_{1}^{T}+\dots +\sigma_{r}\boldsymbol{u}_{r}\boldsymbol{v}_{r}^{T}$

## Cal 1 Computing SVD

```ad-proposition
title: Proposition 1

To compute SVD:
1. Find eigenvalues $\lambda_i$ and eigenvectors of $A^TA$ ([[Wiki - 特征值和特征向量]])
2. The singular values $\sigma_i = \sqrt{\lambda_i}$
3. The right singular vectors $v_i$ are the eigenvectors of $A^TA$
4. The left singular vectors: $u_i = \frac{Av_i}{\sigma_i}$ for $\sigma_i \neq 0$
```

Source: [[Book - 线性代数应该这样学]]

Related links: [[Wiki - 特征值与矩阵]], [[Wiki - 正定变换]], [[Wiki - 特征值和特征向量的计算]] 

对于主成分分析 [[Wiki - 主成分分析]]，若样本 X 已经中心化，主成分矩阵为 $Y= XV,S=V\Lambda V^{T}$，令 $U= YD^{-1}, D= \Lambda^{\frac{1}{2}}$，则 $X=YV^{T}=UDV^{T}$，与奇异值分解一致。

