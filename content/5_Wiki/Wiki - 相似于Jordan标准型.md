---
aliases: 
info: 相似于Jordan标准型的存在唯一性
date: 2023-11-27-星期一 08:56
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 线性代数/相似标准型
id: wiki20231127085607
banner: "![[astrowalk.gif]]"
---
---

## The 1 相似于 Jordan 标准型的存在唯一性

对于一般的线性变换，可知 $\mathscr{A}-\lambda \mathscr{I}|_{G(\lambda,\mathscr{A})}$ 上[[Wiki - 限制变换和商变换]]是幂零变换 [[Wiki - 幂零变换]]，套用前面的结论

[[Wiki - 根子空间分解]]

[[Wiki - 循环子空间]]


## The 2 另一种证法

设 n 阶复方阵 A 的特征方阵 $\lambda I_{(n)}-A$ 的初等因子组[[Wiki - 多项式矩阵的初等因子组]]为 
$(\lambda-\lambda_{1})^{m_{11}},\:(\lambda-\lambda_{1})^{m_{12}},\:\cdots,\:(\lambda-\lambda_{1})^{m_{1k_{1}}}$, 

$(\lambda-\lambda_{2})^{m_{21}},(\lambda-\lambda_{2})^{m_{22}},\cdots,(\lambda-\lambda_{2})^{m_{2k_{2}}}$,

$(\lambda-\lambda_{t})^{m_{t1}},(\lambda-\lambda_{t})^{m_{t2}},...,(\lambda-\lambda_{t})^{m_{tk_{t}}}$

则 A 相似于 Jordan 标准型

其中 $m_{i}\geq m_{i}\geq\cdots\geq m_{ik_{j}}>0,j=1,2,\cdots,t$ , 且 $\lambda_1,\lambda_2,\cdots,\lambda_i$ 是两两不同的复数. 则复方阵 A 相似于如下的 Jordan 标准形：

$$
\boldsymbol{J}=\operatorname{diag}(\boldsymbol{J}_{m_{11}}\left(\boldsymbol{\lambda}_{1}\right),\cdots,\boldsymbol{J}_{\left(\boldsymbol{m}_{1\boldsymbol{k}_{1}}\right)}\left(\boldsymbol{\lambda}_{1}\right),\cdots,\boldsymbol{J}_{(\boldsymbol{m_{t}}1)}\boldsymbol{(\lambda_{1})},\dots,\boldsymbol{J}_{\left(\boldsymbol{m}_{t\boldsymbol{k}_{t}}\right)}\left(\boldsymbol{\lambda}_{t}\right)),
$$


[[Wiki - Jordan标准型]]


## Pro 1 

```ad-proposition
title: Propositon 1

```
若 $\lambda I-A$ 的不变因子 [[Wiki - 多项式矩阵的不变因子]]为 $d_{1}(\lambda),\dots,d_{n}(\lambda)$ 则

$$
P_{A}(\lambda)=d_{1}(\lambda)\dots d_{n}(\lambda),\quad d_{A}(\lambda)=d_{n}(\lambda)
$$

[[Wiki - 矩阵的最小多项式]]

[[Wiki - 特征值和特征向量]]



### Proof

见李尚志线性代数[[Book - 线性代数（数学专业用）|李尚志线性代数]]
