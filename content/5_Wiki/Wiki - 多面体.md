---
aliases: 
info: 
date: 2025-03-04-星期二 14:21
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 凸优化
id: wiki20250304142148
banner: "![[astrowalk.gif]]"
---
---

## Def 1 多面体

多面体是有限个半空间 [[Wiki - 半空间]]和超平面 [[Wiki - 超平面]]的交集。  

·仿射集合 (例如子空间、超平面、直线)、射线、线段和半空间都是多面体。  

多面体是凸集。  

多面体可以表示为 $\mathcal{P}=\{x|A x\preceq b,C x=d\}$ ，其中  

$$
A=\left[\begin{array}{c}{a_{1}^{\top}}\\ {\vdots}\\ {a_{m}^{\top}}\end{array}\right],\quad C=\left[\begin{array}{c}{c_{1}^{\top}}\\ {\vdots}\\ {c_{p}^{\top}}\end{array}\right].
$$  
## 单纯形

设 $k+1$ 个点 $v_{0},\cdots,v_{k}\in\mathbb{R}^{n}$ 仿射独立[[Wiki - 仿射集合]],即 $v_{1}-$ $v_{0},\cdots,v_{k}-v_{0}$ 线性无关[[Wiki - 线性相关和线性无关]]（因为仿射集合是一个k维子空间加上一个平移），如下集合称为单纯形  

$$
\big\langle v_{0},\cdot\cdot\cdot\,,v_{k}\big\rangle=\big\{\theta_{0}v_{0}+\cdot\cdot\cdot+\theta_{k}v_{k}\mid\theta\succeq0,\mathbf{1}^{T}\theta=1\}
$$  
这个单纯形的仿射维数为 $k,$ 因此也称为 ${\mathbf{R}}^{n}$ 空间的 $k$ 维单纯形。  

1维单纯形是一条线段;2维单纯形是一个三角形(包含其内部);3维单纯形是一个四面体。  

单纯形是多面体。  

$$
\{x|A_{2}x=A_{2}v_{0},\;A_{1}x\succeq A_{1}v_{0},\;\mathbf{1}^{\top}A_{1}x\leqslant1+\mathbf{1}^{\top}A_{1}v_{0}\}
$$  

其中 $A\in\mathbf{R}^{n\times n}$ 满足  

$$
A B=\left[\begin{array}{l}{A_{1}}\\ {A_{2}}\end{array}\right]B=\left[\begin{array}{l}{I}\\ {0}\end{array}\right],
$$  

$$
B=(v_{1}-v_{0},\ldots,v_{k}-v_{0})\in\mathbf{R}^{n\times k}.
$$  
