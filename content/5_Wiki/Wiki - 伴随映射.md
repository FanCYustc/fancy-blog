---
aliases:
  - 矩阵转置共轭
info: 伴随映射的定义
date: 2023-08-04-星期五 20:30
update: 
tags:
  - wiki/year2023
  - wiki/month08
id: wiki20230804203047
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

## Def 1 adjoint

[[Wiki - 线性映射]]
$T\in\mathcal{L}(V,W)$ , the adjoint of T is $T^*:W\to V$ s.t. 
$$
<Tv,w> = <v,T^*w>
$$

For $v\in V$ and $w\in W$

对应**转置+共轭**矩阵的概念 [[Wiki - 矩阵的转置和共轭]]

可验证 $T^*$ 也是线性映射，是对对称变换的推广[[Wiki - 对称变换]]

## Pro1

```ad-proposition
title: Propositon 1

Suppose $T\in\mathcal{L}(V,W).$ Then
$$
\begin{aligned}\text{(a)}\quad&\text{null}\:T^*=\text{(range}\:T)^\perp;\\\text{(b)}\quad&\text{range}\:T^*=\text{(null}\:T)^\perp;\\\\\text{(c)}\quad&\text{null}\:T=\text{(range}\:T^*)^\perp;\\\\\text{(d)}\quad&\text{range}\:T=\text{(null}\:T^*)^\perp.\end{aligned}
$$



```

[[Wiki - 欧式空间的子空间]]

[[Wiki - 线性映射的像空间和核]]

## Pro 2

在实欧式空间上，伴随映射对应的矩阵就是原映射矩阵的**转置**

在酉空间上就是转置共轭

**来源：[[Book - 线性代数应该这样学]]**

### Proof

设 $\mathscr{A}(e_{i})=\sum a_{ki}e_{k},\mathscr{A}^{*}(e_{i})=\sum b_{ki}e_{k}$

由伴随变换，有 $(\mathscr{A}(e_{i}),e_{j})=(e_{i},\mathscr{A}(e_{j})),i,j=1,\dots,n$

所以得到 $a_{ji}=b_{ij},\forall i,j=1,\dots,n$，所以 $B=A^{T}$


