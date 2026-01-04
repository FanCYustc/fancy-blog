---
aliases: 
info: 循环子空间的定义
date: 2023-11-29-星期三 11:41
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/线性变换
  - 线性代数/线性空间
  - 线性代数/相似标准型
id: wiki20231129114104
banner: "![[astrowalk.gif]]"
---
---

## Def 1 循环子空间

```ad-definition
title: Definition 1

对 V 上的线性变换 $\mathscr{A}$，取 $\alpha\in V$，$C= <\alpha,\mathscr{A}(a),\mathscr{A}^{2}(\alpha),\dots >$
称为 $\alpha$ 生成的 $\mathscr{A}$ 的循环子空间

```


## Pro 1 是不变子空间

```ad-proposition
title: Propositon 1

循环子空间是 $\mathscr{A}$ 的不变子空间 

```

[[Wiki - 不变子空间]]
## Pro 2 循环子空间的维数

C 是 $\alpha$ 关于线性变换 [[Wiki - 线性映射]] $\mathscr{A}$ 的循环子空间，且 $d_{\alpha,\mathscr{A}}(\lambda)=\lambda^{k}+a_{k-1}\lambda^{k-1}+\dots+a_{0}$ [[Wiki - 向量关于线性变换的最小多项式]]。则

1、$\alpha,\mathscr{A}(\alpha),\dots,\mathscr{A}^{k-1}(\alpha)$ 为 C 的一组基 [[Wiki - 基和维数]]，且 $dim C=k$

2、 $\mathscr{A}|_{C}$ 在这组基 $\mathscr{A}^{k-1}(\alpha),\dots,\mathscr{A}(\alpha),\alpha$ 下的矩阵为 
$$
\begin{pmatrix}
-a_{k-1} & 1  \\
\vdots&  \ddots& \\
\vdots & & 1 \\
-a_{0}& \dots& 0
\end{pmatrix}
$$

3、$\mathscr{A}|_{C}$ 的特征多项式等于对最小多项式 $d_{\alpha,\mathscr{A}}(\lambda)$ [[Wiki - 限制变换和商变换]]




