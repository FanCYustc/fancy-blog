---
aliases:
  - 有限秩算子
info: 
date: 2024-12-11-星期三 10:10
update: 
tags:
  - wiki/year2024
  - wiki/month12
  - 泛函分析/谱理论
id: wiki20241211101046
banner: "![[astrowalk.gif]]"
---
---

## Def 1 紧算子

X, Y 是 banach 空间 [[Wiki - banach空间]]，$A\in \mathcal{L}(X,Y)$ [[Wiki - 有界线性算子]]

如果 A 把每个有界集映射为列紧集 [[Wiki - 列紧空间]]，就称 A 是紧算子，记作 $A\in \mathcal{C}(X,Y)$

## Def 2 有限秩算子

如果 $dim (range (A))<\infty$ [[Wiki - Hamel基]]，称 A 是有限秩算子，记作 $A\in \mathcal{F}(X,Y)$

[[Wiki - 线性映射的像空间和核]]

## Pro 1 

$\mathcal{F}(X,Y)$ 是 $\mathcal{C}(X,Y)$ 的子空间，$\mathcal{C}(X,Y)$ 是 $\mathcal{L}(X,Y)$ 的闭子空间 [[Wiki - 度量空间的开集闭集]]

### Proof

1、对 X 的有界集 M，$A\in \mathcal{F}(X,Y)$，则 $A(M)$ 是 $range(A)$ 中的有界集，由有限维，所以 $A(M)$ 列紧。

2、取 $\{A_{n}\}\subset \mathcal{C}(X, Y), \|A_{n}-A\|\to 0$，取 M 为 X 的有界集，证 $A(M)$ 列紧

对于 $\forall\varepsilon$，取 N 充分大使得 $\|A_N-A\|<\frac{\varepsilon}{3C}$

$A_{N} (M)$ 列紧，$\exists x_1,\cdots, x_m\in M\mathrm{~s.t.~}A_N (M)\subset\bigcup_{k=1}^mB (A_Nx_k,\frac{\varepsilon}{3})$ （即 $\frac{\epsilon}{3}-$ 网）。所以 $\forall x\in M,\exists k\in\{1, 2,\cdots, m\}\mathrm{~s.t.}||A_Nx-A_Nx_k||<\frac{\varepsilon}{3}$ ，从而 $\|Ax-Ax_{k}\|\leqslant\|Ax-A_Nx\|+\|A_{N}x-A_{N}x_{k}\|+\|A_{N}x_{k}-Ax_{k}\|<\varepsilon$ 

于是 $\{Ax_1,\cdots, Ax_m\}$ 是 $A (M)$ 的有穷 $\varepsilon-$ 网。

## Pro 2

紧算子的值域 $range(A)$ 可分, $A\in \mathcal{C}(X,Y)$ [[Wiki - 度量空间的稠密性|度量空间的可分性]]

### Proof

$range (A)= \bigcup_{n=1}^{\infty}A(B(0,n))$

利用 [[Wiki - 列紧空间#Pro4 列紧一定可分]]，每个 $A(B(0,n))$ 是列紧集可分，所以值域可分

## Pro 3

紧算子与有界算子的复合还是紧算子（**两种复合都是**）



