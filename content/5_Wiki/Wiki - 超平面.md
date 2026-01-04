---
aliases:
  - 极大子空间
info: 
date: 2024-12-19-星期四 10:50
update: 
tags:
  - wiki/year2024
  - 泛函分析/线性算子
  - wiki/month11
id: wiki20241219105039
banner: "![[astrowalk.gif]]"
---
---

## Def 1 极大子空间

X 是**实**向量空间[[Wiki - 一般线性空间|向量空间]]，称子空间 M 是 X 的极大子空间，当 $\forall X$ 的子空间 Y 满足若 M 真包含与 Y，则有 Y=X

## Pro 1 

M 是极大子空间 $\leftrightarrow\exists x_{0}\in Xs. t. X=M\oplus span\{x_{0}\}$$\leftrightarrow \dim(X / M)=1$

## Def 2 超平面

超平面定义为**极大子空间的平移**。若 M 是向量空间 X 的极大子空间，称 $x_{0}+M, x_{0}\in X$ 是 X 的超平面

是 [[Wiki - 仿射集合]]的特例
## Pro  2

L 是 X 的超平面 $\leftrightarrow L=H_{f}^{r}$ 对 $r\in \mathbb{R}$ 和 X 上的**线性泛函 f**[[Wiki - 线性算子]]（没说有界，也没说 X 是赋范空间）

其中 $H_{f}^{r}=f^{-1}(\{r\})= \{x\in X: f (x)=r\}$

### Proof 

$\leftarrow:$ 首先说明 $H_{f}^{0}=Ker(f)$ [[Wiki - 线性映射的像空间和核]]为极大子空间，因为对 $x_{0}\in X / H_{f}^{0}$，有 $f\left ( x- \frac{f (x)}{f (x_{0})}x_{0} \right)= 0,\forall x\in X$，所以 $x- \frac{f (x)}{f (x_{0})}x_{0}\in H_{f}^{0}$，所以有 $X=H_{f}^{0}\oplus span\{x_{0}\}$，所以 $H_{f}^{0}$ 是极大子空间

[[Wiki - 子空间的直和]]

令 $r=f(x_{0})$，则 $x\in H_{f}^{r}\leftrightarrow f (x-x_{0})=0\leftrightarrow x\in H_{f}^{0}+x_{0}$

所以 $L= H_{f}^{r}$ 是超平面

$\rightarrow:$ 设 $L=M+a, X=M \oplus span\{x_{0}\}$，定义 $f: x=y+\lambda x_{0}\to\lambda, y\in M$ 是线性泛函

满足 $f (M)=\{0\}$，也就是 $M\subset H_{f}^{0}$，由 M 的极大性和 $H_{f}^{0}\neq X$，有 $M=H_{f}^{0}$，所以结合 $f(x_{0})=1$ 有 $L=H_{f}^{1}$

## Pro 3

如果 X 是赋范空间 [[Wiki - 赋范空间]]，$f\in X^{*}$ [[Wiki - 有界线性算子]]，则有 $H_{f}^{r}$ 是闭 [[Wiki - 度量空间的开集闭集]]的超平面

