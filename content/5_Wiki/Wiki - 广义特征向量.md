---
aliases: []
info: 广义特征向量空间的定义
date: 2023-08-08-星期二 15:48
update: 
tags:
  - wiki/year2023
  - wiki/month08
id: wiki20230808154808
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

## Def 1 generalize eigenvectors

```ad-definition
title: Definition 1

对 v, If 存在 j s.t.
$$
(T-\lambda I)^{j}v=0
$$
$\lambda$ 为 T 的特征值，那么称 v 是 T 的广义特征向量

由广义特征向量构成的空间记作$G(\lambda,T)$

```

[[Wiki - 特征值和特征向量]]

[[Wiki - 特征子空间]]


## Pro 1

$$
G(\lambda,T)=null(T-\lambda I)^{\dim V}
$$

[[Wiki - 线性映射基本定理#Def 1 null space]]

## Pro 2

```ad-proposition
title: Propositon 2

广义特征向量也有不同特征值对应的特征向量线性无关的性质 

```

[[Wiki - 几何重数与代数重数]]

来源：[[Book - 线性代数应该这样学]]

## Cal 1 根子空间分解定理

1、[[Wiki - 子空间的直和]]
$$
V=G(\lambda_{1},T)\oplus\cdots\oplus G(\lambda_{m},T);
$$

2、
each $G(\lambda_{j},T)$ is invariant under T [[Wiki - 不变子空间]]

3、
each $(T-\lambda_{j}I)|_{G(\lambda_{j},T)}$ is nilpotent[[Wiki - 幂零变换]]


### Proof

简记 $W_{\lambda_i}$ 为 $W_i$. 首先证明 $V=W_1+\cdots+W_s$. 设 $f_i(x)=\frac{\varphi_\mathbf{\Lambda}(x)}{(x-\lambda_i)^{n_i}}$. 则 $f_1,\cdots,f_s$ 的最大公因子是 1, 故由 Bezout 等式[[Wiki - 多项式的裴蜀定理]]，存在 $F$ 上的多项式 $u_1(x),\cdots,u_s(x)$ 使得

$$
\begin{aligned}u_1(x)f_1(x)+\cdots+u_s(x)f_s(x)=1.\end{aligned}
$$

故对于任意 $\alpha\in V$, 我们有

$$
u_{1}(\mathbf{A})f_{1}(\mathbf{A})(\alpha)+\cdots+u_{s}(\mathbf{A})f_{s}(\mathbf{A})(\alpha)=\alpha.
$$

令 $u_i(\mathbf{A})f_i(\mathbf{A})(\alpha)=\alpha_i$. 因为 $\varphi_{\mathbf{A}}(\mathbf{A})=0$, [[Wiki - 特征值和特征向量]]故

$$
(\mathbf{A}-\lambda_i\mathbf{I}_n)^{n_i}(\alpha_i)=u_i(\mathbf{A})\varphi_\mathbf{A}(\mathbf{A})(\alpha)=0.
$$

这说明 $\alpha_i\in W_i$, 从而 $V=W_1+\cdots+W_s.$ [[Wiki - 子空间的和]]


下设 $\alpha\in W_{i} \cap(\cup _{j\neq i}W_{j})$，证明 $\alpha=0$

设 $d_{i}=dim W_{i}$ 由 $\alpha\in W_i$ 知 $(\mathbf{A}-\lambda_i\mathbf{I}_n)^{d_i}(\alpha)=0$, 由 $\alpha\in\sum W_j$ 知 $\prod_{j\neq i}(\mathbf{A}-\lambda_j\mathbf{I}_n)^{d_j}(\alpha)=0$. 由于 $(x-\lambda_i)^{d_i}$ 与 $\prod_{j\neq i}(x-\lambda_j)^{d_j}$ 互素，故存在 $F$ 上的多项式 $v_1(x)$ 与 $v_2(x)$, 使得

$$
v_1(x)(x-\lambda_i)^{d_i}+v_2(x)\prod_{j\neq i}(x-\lambda_j)^{d_j}=1.
$$
最后说明 $n_{i}=d_{i}$，即**根子空间的维数就是代数重数**[[Wiki - 几何重数与代数重数]]

## Cal 2

在复空间下任意变换 T 都可以找到一组以其广义特征向量构成的一组基[[Wiki - 矩阵可相似对角化的条件]]