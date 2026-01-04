---
aliases: polar decomposition
info: 复矩阵的极性分解
date: 2023-08-07-星期一 19:07
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230807190707
banner: "![[astrowalk.gif]]"
---
---
#线性代数/矩阵 

类比复数
$$
z=\left( \frac{z}{\mid z\mid} \right)\mid z\mid= \left( \frac{z}{\mid z\mid} \right) \sqrt{ \hat{z} z}
$$

## Def 1 notation

```ad-definition
title: Definition 1

if T 是正定变换，那么$\sqrt{T}$表示T的唯一平方根

```

[[Wiki - 正定变换]]

### Proof

设 $A=B_{1}^{2}=B_{2}^{2}$，A 的特征值为 $\lambda_{1}\geq\lambda_{2}\geq\dots\geq\lambda_{n}$，则 $B_{1}=P_{1}^{T}diag(\sqrt{ \lambda_{1} },\dots,\sqrt{ \lambda_{n} })P_{1},B_{2}=P_{2}^{T}diag(\sqrt{ \lambda_{1}},\dots,\sqrt{ \lambda_{n}  })$，其中 $P_{1},P_{2}$ 正交

所以 $P_{2}P_{1}^{T}diag(\lambda_{1},\dots,\lambda_{n})=diag(\lambda_{1},\dots,\lambda_{n})P_{2}P_{1}^{T}$

设 $P_{2}P_{1}^{T}=P=(p_{ij})$，所以 $p_{ij}\lambda_{j}=\lambda_{i}p_{ij}$

分类讨论可以推出恒有 $p_{ij}\sqrt{ \lambda_{j} }=\sqrt{ \lambda_{i} }p_{ij}$

$\to P_{2}P_{1}^{T}diag (\sqrt{ \lambda_{1} },\dots,\sqrt{ \lambda_{n} })=diag (\sqrt{ \lambda_{1} },\dots,\sqrt{ \lambda_{n} }) P_{2}P_{1}^{T}$

所以 $B_{1}=B_{2}$

无论是对欧式空间还是酉空间证明都没什么区别

## Pro 1 极性分解

```ad-proposition
title: Propositon 1

任意线性变换T，存在保距变换$S\in \mathcal{L}(V,V)$,s.t.
$$
T=S \sqrt{T^*T} 
$$

```
[[Wiki - 正交变换]]

[[Wiki - 伴随映射]]

**来源：[[Book - 线性代数应该这样学]]**