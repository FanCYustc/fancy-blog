---
aliases:
  - dual map
info: 对偶映射的定义及性质
date: 2023-08-02-星期三 15:10
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 泛函分析/线性算子
  - 对偶
id: wiki20230802151035
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性空间 #线性代数/线性变换 

## Def1 dual map 对偶算子

X, Y 是赋范空间 [[Wiki - 赋范空间]]，$T\in \mathcal{L}(X,Y)$，则存在 $T^{*}\in \mathcal{L}(Y^{*},X^{*})$，满足 $(T^{*}f)(x)= f (Tx), \forall f\in Y^{*}, x\in X$，称 $T^{*}$ 为 T 的共轭算子或者对偶算子

进而映射 $*: \mathcal{L}(X, Y)\to \mathcal{L}(Y^{*},X^{*})$ 是**等距**线性嵌入 [[Wiki - 等距映射与等距同构]]

[[Wiki - 对偶空间]]

由空间维数的变化也能联想到转置 [[Wiki - 矩阵的转置和共轭]]

### Proof

设 $f\in Y^*$, 定义映射：

$$\Lambda_f:X\to\mathbb{K},x\mapsto f(Tx)$$

则

$$|\Lambda_f(x)|=|f(Tx)|\leqslant||f||\cdot||Tx||\leqslant||f||\cdot||T||\cdot||x||,\forall x\in X$$
于是 $\Lambda_f\in X^*$, 且 $||\Lambda_f||\leqslant||f||\cdot||T||$, 定义映射

$$T^*:Y^*\to X^*,f\mapsto\Lambda_f$$

于是 $T^*$ 线性而且 $||T^*f||=||\Lambda_f||\leqslant||T||\cdot||f||$, 从而 $T^*$ 有界且 $||T^*||\leqslant||T||.$

对于 $\forall x\in X$, 不妨 $x\neq0$, 由 HBT [[Wiki - hahn-banach定理的推论]],

$$\exists f\in Y^*,||f||=1,f(Tx)=||Tx||$$

于是

$$||Tx||=|f(Tx)|=|(T^*f)(x)|\leqslant||T^*f||\cdot||x||\leqslant||T^*||\cdot||f||\cdot||x||=||T^*||\cdot||x||$$

所以 $||T||\leqslant||T^*||.$
### e.g.

```ad-example
title: Example 1

对线性变换 $\vec{x}\to A\vec{x}, x\in F^{n }, A\in L(F^{n},F^{n})$,

$A' (\varphi)=\varphi \space \circ A=\vec{\varphi}^{T} A \vec{x}$

```


## Pro 1 Algebraic properties of dual maps


-  $(S+T)^{\prime}=S^{\prime}+T^{\prime}$ for all $S , T\in\mathcal{L}(V, W)$. 
- $(\lambda T)^{\prime}=\lambda T^{\prime}$ for all $\lambda\in\mathbf{F}$ and all $T\in\mathcal{L}(V,W)$ 
- $(ST)^{\prime}=T^{\prime}S^{\prime}$ for all $T\in\mathcal{L}(U,V)$ and all $S\in\mathcal{L}(V,W)$

有点类似矩阵的转置 [[Wiki - 矩阵的转置和共轭]]

**来源：[[Book - 线性代数应该这样学]]**
