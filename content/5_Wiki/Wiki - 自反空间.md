---
aliases: 
info: 
date: 2024-11-25-星期一 15:17
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 泛函分析/线性算子
id: wiki20241125151709
banner: "![[astrowalk.gif]]"
---
---

## Def 1 自然映射

[[Wiki - 对偶空间]]

```ad-theorem
title: Theorem 1

对于对偶空间的对偶空间 $V^{* *}=L(V^{*},F)$，定义 $\alpha^{* *}\in V^{* *}:f\to f(\alpha)$，则有映射 $\tau:V\to V^{**},\alpha\mapsto\alpha^{**}$ 是线性空间的等距映射. 

且这种同构不依赖于基的选取，对应关系唯一，就可以记为 $V=V^{* *}$，这种同构称为**典范同构**

```

[[Wiki - 等距映射与等距同构]]

## Def  2 自反

对赋范空间 X [[Wiki - 一般线性空间]]，如果有自然映射 $X\to X^{* *}$ 是满射（即存在**线性等距同构**），则称 X 是自反的

## Pro 1

对于有限维赋范空间是自反空间


### Proof 

首先证明 $\tau$ 是线性映射. 设 $\alpha,\beta\in V,\lambda,\mu\in F$, 对于任意 $f\in V^*$, 我们有

$$
(\lambda\alpha^{**}+\mu\beta^{**})(f)=\lambda f(\alpha)+\mu f(\beta)=\lambda\alpha^{**}(f)+\mu\beta^{**}(f),
$$

因此 $\tau(\lambda\alpha+\mu\beta)=\lambda\tau(\alpha)+\mu\tau(\beta)$, 即 $\tau$ 是线性映射.
其次证明 $\tau$ 是单射. 若 $\tau(\alpha)=\tau(\beta)$, 则对于任意 $f$ 均有 $f(\alpha)=f(\beta)$ 即 $f(\alpha-\beta)=0$. 但若 $\gamma\neq0$, 总存在 $f\in V^*$ 使得 $f(\gamma)\neq0$. 这就说明 $\alpha-\beta=0$ 即 $\alpha=\beta.$

最后证明 $\tau$ 是满射. 设 $(\alpha_1,\cdots,\alpha_n)$ 是 $V$ 的基. 则 $\alpha_i^{**}(\alpha_j^*)=\delta_{ij}.$ 得到 $(\alpha_1^{**},\cdots,\alpha_n^{**})$ 线性无关，它是 $V^{**}$ 的一组基.

## Pro 2 hilbert 空间

Hilbert 空间 [[Wiki - Hilbert空间]] 是自反空间

## Pro 3 Lp 空间

$1<p<\infty$ 时 $L^{p}$ 空间自反 [[Wiki - Lp线性空间]]

### Proof

即证明 $\forall \Lambda\in (L^{p})^{* *},\exists u\in L^{p}s.t. \Lambda (f)= f (u)\forall f\in (L^{p})^{*}$

由 [[Wiki - Lp对偶空间]]的结论，存在等距同构 $J: L^{q}\to (L^{p})^{*}, v\to f_{v}$，其中 $f_{v}(u)= \int uv,\forall u\in L^{p}$。现在取 $\varphi= \Lambda\circ J: L^{q}\to \mathbb{K}$，于是有 $\varphi\in (L^{q} )^{* }$。

因为 $(L^{q})^{*}$ 与 $L^{p}$ 同构，所以存在唯一的 $u\in L^{p},s.t. \varphi (v)= \int vu,\forall v\in L^{q}$

定义 $v_{f}= J^{-1}(f)\in L^{q}$，则有 $\Lambda (f)=\Lambda (J (v_{f}))= \varphi (v_{f})=\int v_{f}u= f(u)$

## Pro 4 连续函数空间

$C[a,b]$ 不是自反空间

### Proof

假设是自反的，即 $\forall \Lambda\in C[a, b]^{* *},\exists u\in C[a, b], \Lambda (f)= f (u)\forall f\in C[a,b]^{*}$

## Pro 5 pettis 定理

自反空间的闭子空间是自反的 [[Wiki - 度量空间的开集闭集]]

### proof

设 $X$ 自反，$Y$ 是其闭子空间，只需证明：
$$\forall a\in Y^{**},\exists y\in Y\text{ s.t. }a(f)=f(y),\forall f\in Y^*$$

定义映射

$$T:X^*\to Y^*,f\mapsto f|_Y$$

则 $T$ 是有界线性映射，于是取 $T^*\in\mathcal{L}(Y^{**},X^{**})$ 满足
$$(T^*a)(f)=a(Tf),\forall f\in X^*$$
$X$ 自反，所以自然映射 $i_X$ 是满射，$T^*a\in X^{**}\Rightarrow\exists y\in X$ s.t. $T^*a=y^{**}$, 所以
$$(T^*a)(f)=y^{**}(f)=f(y),\forall f\in X^*$$
下面证明 $y\in Y$, 假设不然，则存在 $\tilde{f}\in X^*$ 使得 $\tilde{f}(Y)=0$,
$$T(\tilde{f})=\tilde{f}|_Y=0\Rightarrow\tilde{f}(y)=(T^*a)(\tilde{f})=a(T(\tilde{f}))=0$$

这与 $\tilde{f}(y)=$ dist $(y,Y)>0$ 矛盾。[[Wiki - 凸集分离定理#Cal 2]]


最后说明：$a(f)=f(y),\forall f\in Y^*$. 对于 $\forall f\in Y^*$, 由 HBT [[Wiki - hahn-banach定理]], 存在 $F\in X^*$ 使得 $f=TF$, 所以
$$a(f)=a(TF)=(T^*a)(F)=F(y)=f(y)$$
