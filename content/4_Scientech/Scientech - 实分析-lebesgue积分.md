---
aliases: 
info: 24春实分析第2章
date: 2024-03-31-星期日 15:14
update: 
tags:
  - scientech/year2024
  - scientech/month03
  - 实分析/lebesgue积分
id: scientech20240331151455
banner: "![[astrofishing.gif]]"
---
---

# 第 2 章-lebesgue 积分

[[Book - Real Analysis#第 2 章-lebesgue 积分]]

在 [[Scientech - 实分析-lebesgue测度]]完善后，逐步定义 lebesgue 积分的定义，按**非负简单--非负可测--一般可测函数**的顺序定义积分。

## 2.1 lebesgue 积分

和 [[Scientech - 数学分析-Riemann积分]]对比

[[Wiki - lebesgue积分]]

### 非负简单函数

先定义简单函数的 lebesgue 积分

$\varphi(x)=\sum_{i=1}^{n}a_{i}\mathcal{X}_{E_{i}}$，$a_{i}\geq 0, a_{i}\neq a_{j}$，$\mathbb{R}^{d}=\cup_{i=1}^{n}E_{i}, E_{i} \cap E_{j} =O$

[[Wiki - 简单函数逼近定理#Def 2 简单函数标准形式]] 定义在 $\mathbb{R}^{d}$ 上的积分为 $\int _{\mathbb{R}^{d}} \varphi (x) \, dm (x)=\sum_{i=1}^{n}a_{i}m (E_{i})$

其中 m (x) 代表 lebesgue 测度 [[Wiki - lebesgue可测]]

同理可以把 $\mathbb{R}^{d}$ 改成**可测集 E**，简记为 $\int _{E}\varphi(x) \, dm(x)=\int _{E}\varphi(x) \, dx=\int _{E}\varphi \, dm=\int _{E}\varphi$

```ad-note

1、在这里，非负简单函数 lebesgue 积分可以是无穷大

2、此定义是良定的

```

非负简单函数积分的性质, 其中 $\varphi,\psi$ 为非负简单函数, E 可测

1、正线性性：$\int_{E} \alpha \varphi +\beta \psi \, dm (x) = \alpha\int _{E} \varphi + \beta \int _{E}\psi; \alpha,\beta\geq 0$

2、集可加性：E, F 可测不交，$\int _{E\cup F}\varphi \, dx=\int _{E}\varphi \, dx+\int _{F}\varphi \, dx$

3、单调性：$\varphi\leq \psi$，则 $\int _{\mathbf{E}}\varphi \, dx\leq \int _{E}\psi \, dx$

4、连续性：$\{E_{k}\}\to E$，$E_{k}$ 单调递增可测集，则 $\int _{E_{k}}\varphi \, dx\to \int _{E}\varphi \, dx(k\to \infty)$

#### Proof

对正线性性，可以等价到证明 $\int _{E}\varphi+\psi \, dx=\int _{E}\varphi \, dx+\int _{E}\psi \, dx$



由正线性性可以得到推论：

```ad-proposition
title: Propositon 1

若 $\varphi(x)=\sum_{i=1}^{n}a_{i}\mathcal{X}_{E_{i}},a_{i}\geq 0$，**未必是是标准形式**，同样有 $\int \varphi \, dx=\sum_{i=1}^{n}a_{i}m(E_{i})$

```

### 非负可测函数

对非负可测函数 [[Wiki - 可测函数]] f，定义 lebesgue 积分 $\int_{E} f (x) \, dm (x)= \sup\left\{ \int_{E} \varphi \, dx:0\leq \varphi\leq f,\varphi为简单函数 \right\}$

如果积分的值**存在有限**，称 f 在 E 上可积，积分值称为 f 在 **E 上的 lebesgue 积分**，并记可积为 $f\in L^{1}(E)$

性质：

```ad-proposition
title: Propositon 2

1、单调性

2、f 是非负可测函数，且不恒为 0，E 可测， $\int _{E}f \, dx=0\leftrightarrow f=0 a.e\space in \space E$


```

与非负可测函数可积有关的性质：

1、f, g is measurable in E, E is measurable, if $f\leq g$, and $g\in L^{1}(E)$, then $f\in L^{1}(E)$. Particularly, if f is boundary in E, $m(E)<+\infty$, then $f \in L^{1}(E)$

2、if $f \in L^{1}(E)$, then $f (x) < +\infty\space a.e.\forall x\in E$


[[Wiki - 单调收敛定理]]

利用单调收敛定理和 [[Wiki - 简单函数逼近定理]]，可以证明非负可测函数的**正线性性和可加性**

[[Wiki - fatou引理]]

[[Wiki - 逐项积分定理]]

```ad-proposition
title: Propositon 3


If f, g are measurable and not negative in E, f=g a.e. $x\in E$，thus $\int _{E}f \, dx=\int _{E}g \, dx$

换句话说，就是在一个**零测集上任意改变**非负可测函数的值，不改变函数积分的值

在 Riemann 积分上就不一定可行

```


### 一般可测函数

分为 $f=f^{+}-f^{-}$

```ad-definition
title: Definition 3

F 为可测函数，对可测集 E，若 $\int_{E} |f| \, dm<+\infty$，则称 f 在 E 上可积。定义 $\int _{E}f \, dm=\int _{E} f^{+} \, dm - \int _{E}f^{-} \, dm$ 为 E 上可测函数 f 的 lebesgue 积分。

```
前面非负可测函数有的性质一般可测函数也有。

[[Wiki - 有界收敛定理]]

[[Wiki - Lebesgue控制收敛定理]]

## 2.2 可积函数空间

### Lp 空间

基于[[Scientech - 数学分析-度量空间的连续函数]]

[[Wiki - Lp线性空间]]

[[Wiki - Holder不等式]]

[[Wiki - Minkowski不等式]]在 $L^{p}$ 空间上的拓展，有助于判断是否 $L^{p}$ 可积

证明在 $1<p<+\infty$ 时，$L^{p}$ 空间在度量下具有完备性 [[Wiki - Lp空间的完备性]]。完备性告诉我们，$L^{p}$ 空间是**足够大的**，在里面做加减乘除运算，或者取收敛列都还可以保证在空间里。

介绍了两种收敛：依测度收敛[[Wiki - 依测度收敛]]和 $L^{p}$ 收敛[[Wiki - Lp收敛]]


### Lp 空间的稠密性

完备性说明了 Lp 空间足够大；稠密性说明 Lp 空间不是很大，可以取到稠密集，可以通过特殊函数逼近所有的 $L^{p}$ 空间的函数。

[[Wiki - Lp空间的稠密性定理]]

利用稠密性，就可以先通过简单一点的函数证明 lebesgue 积分的一些性质，再利用稠密性推广到所有 lebesgue 可积函数

[[Wiki - lebesgue积分的性质]]

## 2.3 fubini 定理

主要研究 lebesgue 积分的交换性

将空间分解为  $\mathbb{R}^{d}=\mathbb{R}^{d_{1}}\times \mathbb{R}^{d_{2}}$，令 $E_{x}= \{x\in \mathbb{R}^{d_{1}}, (x, y)\in E\}, E_{y} = \{y \in \mathbb{R}^{d_{2 }},(x,y)\in E\}$

固定 y, $f^{y}(x)=f(x,y)$ 称为**切片函数**

关心两个问题：1、对固定的 y，$x\to f(x,y)$ 是不是 lebesgue 可积的？

2、如果问题 1 是可积的，那么 $y\to \int_{ \mathbb{R}^{d_{1}}}f(x,y) \, dx$ 是不是 lebesgue 可积的？

我们只需要得到对几乎处处的结果 [[Wiki - Fubini定理]]

常常伴随出现的两个定理 [[Wiki - Tonelli定理]]

### 应用

主要是乘积集合的讨论：[[Wiki - 乘积集合的可测性]]

还有 lebesgue 积分的几何意义：

[[Wiki - lebesgue积分的几何意义]]

