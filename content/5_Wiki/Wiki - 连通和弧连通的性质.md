---
aliases: 
info: 连通和弧连通的性质
date: 2023-11-21-星期二 11:01
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 几何学/度量空间
  - 拓扑
id: wiki20231121110158
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 与连续函数

$f:M\to N$ 连续[[Wiki - 度量空间的连续映射]]，若 M 连通，则 $f(M)$ 连通，M 弧连通，则 f (M) 弧连通

## Pro 2 弧连通推连通

```ad-proposition
title: Propositon 2

弧连通度量空间一定连通


```

### Proof

## Pro 3 特殊情况连通推弧连通

一般连通是推不到弧连通的：

```ad-example



```



```ad-proposition
title: Propositon 3

但 $\mathbb{R}^{n}$ 上的连通区域是可以推到弧连通的


```

 [[Wiki - 连通区域]]
### Proof

首先先证明一个前提，**开球里面是弧连通的**

下面固定 $x_0\in A$, 定义
$A_{1}=\{ x\in A\mid 存在 A 中曲线连接 x_0 和 x\}$
1、$A_{1}$ 非空，因为 A 是开集，存在 $r>0,\:B_r(x_0)\subset A$, 所以 $B_r(x_0)\subset A_1$. 

2、$A_{1}$ 是开集。如果 $x_1\in A_1$, 有 $r_1>0$ 使得 $B_{r_1}(x_1)\subset A$. 对任意 $x\in B_{r_1}(x_1)$, 有曲线连接 $x$ 与 $x_1$, 又有曲线连接 $x_1 与 x_0$ , 将这两条曲线首尾相接，就得到连接 x 与 $x_0$ 的 A 中曲线. 所以 $B_{r_1}(x_1)\subset A_1$ , 这说明 $A_1$ 是开集.

3、反证：若 $B_{1}=A / A_{1}\neq \phi$
则由 A 是开集，$\forall y\in B_{1}$，$\exists B_{\delta}(y)\subset A$
则必须有 $B_{\delta}(y) \cap A_{1}=\phi$，否则同 2，可以找到 y 到 $x_{0}$ 的连接曲线。

所以 $B_{\delta}(y)\subset B$，由 y 任取，所以 B 是开集，$A=A_{1}\cup B$ 为两个开集的并，与连通 [[Wiki - 度量空间的连通性#Def 2 等价表述]] 定义矛盾

