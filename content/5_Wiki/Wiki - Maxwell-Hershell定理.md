---
aliases: 
info: 
date: 2025-03-02-星期日 11:29
update: 
tags: [wiki/year2025,wiki/month03]
id: wiki20250302112937
banner: "![[astrowalk.gif]]"
---
---
## The 1 Maxwell-hershell 定理

多元正态分布 [[Wiki - 多元正态分布]]是唯一能满足分量独立性的球对称分布 [[Wiki - 球对称分布]] ：假设 $z_{1},\dots,z_{m}$ 独立 [[Wiki - 随机变量的独立性]]，且 $(z_{1},\dots, z_{m})^{T}$ 满足球对称分布，则 $z_{1},\dots, z_{m} i.i.d\sim N(0,\sigma^{2})$

### Proof

Mukherjee (2017) 证明大概:

取 $\xi  \sim  {N}_{m}\left( {\mathbf{0},{I}_{m}}\right)$ 是球对称的。 $\mathbf{z}$ 服从球对称分布 $\Rightarrow$

$$\frac{\mathbf{z}}{\parallel \mathbf{z}\parallel }\overset{d}{ = }\frac{\xi }{\parallel \xi \parallel } \sim  U\left( {S}^{m - 1}\right)  \Rightarrow  \frac{{z}_{1}}{\parallel \mathbf{z}\parallel /\sqrt{m}}\overset{d}{ = }\frac{{\xi }_{1}}{\parallel \xi \parallel /\sqrt{m}}$$

由大数定律, $m \rightarrow  \infty$ 时, $\frac{\parallel \xi \parallel }{\sqrt{m}} = \sqrt{\left( {{\xi }_{1}^{2} + \cdots  + {\xi }_{m}^{2}}\right) /m} \rightarrow  E\left( {\xi }_{1}^{2}\right)  = 1$ , $\parallel \mathbf{z}\parallel /\sqrt{m} \rightarrow  \sqrt{E\left( {z}_{1}^{2}\right) } \triangleq  \sigma  \Rightarrow  {z}_{1}/\sigma \overset{d}{ = }{\xi }_{1} \sim  N\left( {0,1}\right) .$

[[Wiki - 弱大数律]]

[[Wiki - Slutsky引理]]

## The 2 多元 Maxwell-Hershell 定理

 假设 ${\mathbf{z}}_{1},\ldots ,{\mathbf{z}}_{m} \in  {R}^{p}$ 独立, $Z = {\left( {\mathbf{z}}_{1},\ldots ,{\mathbf{z}}_{m}\right) }^{\top }$ , 若
$m \times  p$ 矩阵 $Z$ 服从球对称分布,[[Wiki - 球对称随机矩阵]] 则 ${\mathbf{z}}_{1},\ldots ,{\mathbf{z}}_{m}$ iid $\sim  {N}_{p}\left( {\mathbf{0},\sum }\right)$ 。[[Wiki - 多元正态分布]]

### Proof

对任何常向量 $\mathbf{t} \in  {R}^{p},Z\mathbf{t} \in  {R}^{m}$ 球对称分布且分量独立, 由
$\mathrm{{MH}}$ 定理, ${\mathbf{z}}_{i}^{\mathrm{T}}\mathbf{t}$ 服从一元正态分布, 则 ${\mathbf{z}}_{m}$ 服从多元正态 ${N}_{p}\left( {\mathbf{0},\sum }\right)$ 。