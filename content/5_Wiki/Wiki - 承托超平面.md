---
aliases:
  - Mazur定理
  - 支撑超平面
info: 
date: 2024-12-19-星期四 16:51
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 泛函分析/线性算子
  - 凸优化
id: wiki20241219165135
banner: "![[astrowalk.gif]]"
---
---

## Pro2 mazur 定理

X 是实赋范空间，C 是开凸子集，$F=M+x_{0}$，其中 M 是 X 的子空间，$x_{0}\in X$，$F\cap C=\emptyset$。则存在超平面 [[Wiki - 超平面]] $H_{f}^{r}$ 满足 $F\subset H_{f}^{r}$，且 $\sup_{x\in C}f (x)\leq r$

[[Wiki - 度量空间的开集闭集]]
### Proof

子空间 M 是凸集，所以由凸集分离定理 1 [[Wiki - 凸集分离定理#The 2 凸集分离定理]]，$\exists f\in X^{*}, s\in \mathbb{R}$ 满足 $\sup_{x\in C}f (x)\leq s\leq \inf_{x\in F}f (x)= \inf_{z\in M}f(z)+f(x_{0})$

所以 $\inf_{z\in M}f (z)\geq s-f(x_{0})$，所以只能有 $f|_{M}=0$，否则会有 $\inf_{z\in M}f(z)=-\infty$

所以 $M\subset H_{f}^{0}\to F\subset H_{f}^{r}$，其中 $r=f(x_{0})$，且满足 $\sup_{x\in C}f (x)\leq s\leq f(x_{0})=r$

## Def 1 承托超平面

在实赋范空间中称超平面 $H_{f}^{r}$ 是凸集 C 在 $x_{0}$ 处的承托超平面是指：

1、C 完全落在 $H_{f}^{r}$ 的一侧

2、$x_{0}\in \overline{C}\cap H_{f}^{r}$

即 $\sup_{x\in C}f (x)\leq r=f(x_{0})$ 或 $\inf_{x\in C}f (x)\geq r=f (x_{0}), x_{0}\in \overline{C}$

## Pro 2 

X 是实赋范空间，C 是有内点[[Wiki - 度量空间的内部外部|内点外点边界点]]的闭凸集，则 $\forall x_{0}\in \partial C$ 均有一个 C 的承托超平面

### Proof

令 $E= C / \partial C, F=\{x_{0}\}$，E 为开凸集。则由 mazur 定理，存在 $H_{f}^{r},f(x_{0})=r$，且 $\sup_{x\in E}f (x)\leq r$

由连续性有 $\sup_{x\in C}f (x)\leq r$

