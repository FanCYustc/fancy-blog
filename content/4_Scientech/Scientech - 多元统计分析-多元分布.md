---
aliases: 
info: 25春多元统计分析第1章
date: 2025-02-24-星期一 11:45
update: 
tags:
  - scientech/year2025
  - scientech/month02
  - 多元统计分析
id: scientech20250224114504
banner: "![[astrofishing.gif]]"
---
---

## Lec 1 多元分布

[lec1课件](E:\课程资料\多元统计分析\2025春讲义\lecture01.pdf)

[[Wiki - n维图形体积的计算]]

[[Wiki - 多元球内均匀分布]]

[[Wiki - 多元球面均匀分布]]

## Lec 2 球对称分布

[lec2 课件](E:\课程资料\多元统计分析\2025春讲义\lecture02.pdf)

[[Wiki - 贝特朗悖论]]

[[Wiki - 球对称分布]]

[[Wiki - 球对称分布的极分解定理]]

常见的球对称分布：

| 分布               | $\mathbf{u}$   | $r$                       |                                                 |     |
| ---------------- | -------------- | ------------------------- | ----------------------------------------------- | --- |
| $U(S^{n - 1})$   | $U(S^{n - 1})$ | $\delta_{1} (r \equiv 1)$ | $U(S^{n - 1}) = U(S^{n - 1}) \times 1$          |     |
| $U(B^{n})$       | $U(S^{n - 1})$ | $U(0,1)^{1/n}$            | $U(B^{n}) = U(S^{n - 1}) \times [U(0,1)]^{1/n}$ |     |
| $N_{n}(0,I_{n})$ | $U(S^{n - 1})$ | $\chi_{n}$                | $N_{n}(0,I_{n}) = U(S^{n - 1}) \times \chi_{n}$ |     |

## Lec 3 球对称分布的应用

[lec3课件](E:\课程资料\多元统计分析\2025春讲义\lecture03.pdf)

1. 球对称分布的抽样相关

[[Artpatch - 统计算法-随机数生成]]

[[Wiki - Box-Muller抽样]]

[[Wiki - 球对称分布的抽样]]

2. 球对称分布的性质补充

先是补充球面对称分布的一些性质

[[Wiki - Cramer-Wold定理]]

[[Wiki - Galton相关系数]]

[[Wiki - Pearson相关系数]]

这里的结论将回归分析中 [[Scientech - 回归分析-相关分析]]多元正态假设下得到的结论推广到球对称分布了

## Lec 4 多元正态分布

[lec4课件](E:\课程资料\多元统计分析\2025春讲义\lecture04.pdf)

[[Wiki - 多元正态分布]]

[[Wiki - 多元正态分布的性质]]

## Lec 5 高斯图模型

[lec5课件](E:\课程资料\多元统计分析\2025春讲义\lecture05.pdf)

[[Wiki - Maxwell-Hershell定理]]说明了球对称和独立性都具备的情况下多元正态是唯一的分布

介绍了引理 
![[Wiki - 连续型随机变量的独立性#Pro 2]]


常用技巧：1 $v(\mathbf{x}_{s}\mid\mathbf{x}_{-s})=p(\mathbf{x}_{s},\mathbf{x}_{-s})/p(\mathbf{x}_{-s})\propto p(\mathbf{x}),~p(\mathbf{x})^{\mapsto}$ 中的 $\mathbf{X}_{-S}$ 视作常数将联合密度 $p(\mathbf{x})=p(\mathbf{x}_{s},\mathbf{x}_{-s})$ 看作是 $\mathbf{X}_{S}$ 的函数（ $(\mathbf{x}_{-S}$ 固定），即得到条件概率密度 $p(\mathbf{x}_{s}\mid\mathbf{x}_{-S})$ ，但相差一个仅与 $\mathbf{X}_{-S}$ 有关的常数倍数。  

[[Wiki - 精度矩阵]]是协方差矩阵的逆


### 高斯图模型

[[Wiki - 高斯图模型]]

[[Wiki - 马氏随机场]]

考虑高斯图是为了这样的一个问题：如果有多个随机变量，他们之间都有线性或其他关系，对每个关系做回归模型，这些模型的结果能否相容？统一成一个关系模型的表达

问题是，指定所有局部条件分布，比如假设上述条件分布是一元正态，所有这些一元条件分布是否构成了一个相容、自洽的马氏随机场或多元分布？  

[[Wiki - Hammersley-Clifford定理]]

[[Wiki - Ising模型]]

## Lec 6 Wishart 分布

目前看来，多元统计与回归分析的不同，在于多元统计对多个有相关性的变量联合分析，而不是研究一个被解释变量与多个解释变量之间的关系。

[lec6课件](E:\课程资料\多元统计分析\2025春讲义\lecture06.pdf)

假设 $\mathbf{x}_{1},\ldots,\mathbf{x}_{n}\in R^{p}$ 是一组 iid 随机样本，按行排列成 $n\times p$ 数据矩阵  

$$
X= \begin{pmatrix}
\mathbf{x_{1}}^{T} \\
\vdots \\
\mathbf{x_{n}}^{T}
\end{pmatrix}_{n\times p}
$$  

样本均值  

$$
\begin{array}{r}{\bar{\mathbf{x}}=\frac{1}{n}{\sum_{i=1}^{n}}\mathbf{x}_{i}=X^{\top}\mathbb{1}/n}\end{array}
$$  

样本方差 矩阵  

$$
\begin{array}{r}{S=\frac{1}{n-1}\sum_{i=1}^{n}({\bf x}_{i}-\bar{\bf x})({\bf x}_{i}-\bar{\bf x})^{\top}=\frac{1}{n-1}X^{\top}(I_{n}-P_{\mathbb{1}})X= \frac{1}{n-1}X_{c}^{T}X_{c}}\end{array}
$$

[[Wiki - 线性模型的中心化]]

假设 $\mathbf{x}_{1},\ldots,\mathbf{x}_{m}{\mathrm{~iid}}\sim N_{p}(\mathbf{\upmu},{\boldsymbol{\Sigma}})$ , 统计推断依赖于 $\overline{{\mathbf{X}}},S$ 的分布。我们首先考虑 $\upmu=0$ 时， $X^{\top}X$ 的分布（Wishart分布），进而推导出$\upmu\neq0$ 时𝑆的分布。  

[[Wiki - Wishart分布]]是推广的卡方分布[[Wiki - 卡方分布]]

主要的工作在于通过探索Wishart分布的性质来给出Wishart分布的概率密度

[[Wiki - 多元gamma函数]]

## lec 7 球对称随机矩阵

[lec7课件](E:\课程资料\多元统计分析\2025春讲义\lecture07.pdf)

[staff.ustc.edu.cn/\~ynyang/vector/lecture07.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture07.pdf)

[[Wiki - 球对称随机矩阵]]$Z^{T}Z$在里面扮演了模长的角色（$Z^{T}Z$正定）

[[Wiki - 随机变量的独立性]]

证明了p=2的wishart分布的概率密度

## lec 8 Wishart分布的性质

[staff.ustc.edu.cn/\~ynyang/vector/lecture08.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture08.pdf)

[lec8课件](E:\课程资料\多元统计分析\2025春讲义\lecture08.pdf)

[[Wiki - Wishart分布的性质]]

由于主要应用于抽样，一般都会是$m\geq p$的情形

[[Wiki - Cochran定理]]

[[Wiki - Wishart分布分块运算]]

[[Wiki - 样本协方差的分布]]

