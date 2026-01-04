---
aliases: 
info: 
date: 2025-03-11-星期二 20:07
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 多元统计分析
  - 相关
id: wiki20250311200737
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Galton 相关系数


$n\times1$ 随机向量𝐱, 𝐲的 Galton 相关系数 
$$
R = \frac{\mathbf{x}^{T}\mathbf{y}}{\|x\|\|y\|}= \mathbf{u}^{T}\mathbf{v}
$$

$\mathbf{u}=\mathbf{x}/\lVert\mathbf{x}\rVert,\mathbf{v}=\mathbf{y}/\lVert\mathbf{y}\rVert$  

[[Wiki - Pearson相关系数]]多了去中心化

## Cal

假设 $\mathbf{x}$ 是独立的球对称 $n\times1$ 随机向量,  则 $R=\mathbf{x}^{\top}\mathbf{y}/\|\mathbf{x}\|\|\mathbf{y}\|$ 具有概率密度  

$$
\begin{array}{r}{f_{n}(r)=\frac{1}{B\left(\frac{n-1}{2},\frac{1}{2}\right)}(1-r^{2})^{(n-3)/2},|r|\leq1}\end{array}
$$  

$$
\begin{array}{r}{{\cal R}^{2}\sim b e t a\left(\frac{1}{2},\frac{n-1}{2}\right),\sqrt{n-1}\frac{R}{\sqrt{1-R^{2}}}\sim t_{n-1}}\end{array}
$$ 
[[Wiki - beta分布]]

[[Wiki - t分布]]
### proof

证明： $\mathbf{u}{\sim}U(S^{n-1})$ , 𝐯 = 𝐲/ 𝐲 $\in S^{n-1}.$ , 由[[Wiki - 多元球面均匀分布#Pro 3]] ， $R=\mathbf{u}^{\top}\mathbf{v}$ 与 $u_{1}$ 同分布，应用定理2即得。  


## cal 2

如果是pearson相关系数，xy其中有一个是球对称分布，$R= \frac{{(\mathbf{x}- \mathbf{1}\bar{x})^{T}(\mathbf{y}-\mathbf{1}\bar{y})}}{\|(\mathbf{x}- \mathbf{1}\bar{x})^{T}(\mathbf{y}-\mathbf{1}\bar{y})\|}$

那么类似的有

$$
\sqrt{ n-2 } \frac{R}{\sqrt{ 1-R^{2} }}\sim t_{n-2}
$$

