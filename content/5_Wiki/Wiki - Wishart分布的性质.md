---
aliases: 
info: 
date: 2025-03-28-星期五 19:48
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 概率论/概率分布
  - 多元统计分析
id: wiki20250328194828
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - Wishart分布]]
##  Pro 1

定理 1: 若 $W \sim  {W}_{p}\left( {m,\sum }\right) ,A$ 是 $q \times  p$ 矩阵, 则 ${AW}{A}^{\top } \sim  {W}_{q}\left( {m,{A\sum }{A}^{\top }}\right)$

### Proof

 $W = \mathop{\sum }\limits_{{i = 1}}^{m}{\mathbf{z}}_{i}{\mathbf{z}}_{i}^{\top }$ , 其中 ${\mathbf{z}}_{1},\ldots ,{\mathbf{z}}_{m}$ iid $\sim  {N}_{p}\left( {\mathbf{0},\sum }\right)$ [[Wiki - 多元正态分布]], 因为 $A{\mathbf{z}}_{i} \sim  {N}_{q}\left( {\mathbf{0},{A\sum }{A}^{\top }}\right)$ ,

按照定义, ${AW}{A}^{\top } = \mathop{\sum }\limits_{{i = 1}}^{m}A{\mathbf{z}}_{i}{\left( A{\mathbf{z}}_{i}\right) }^{\top } \sim  {W}_{q}\left( {m,{A\sum }{A}^{\top }}\right)$ .
### Cal 1

(1) $W$ 的标准化: ${\sum }^{-1/2}W{\sum }^{-1/2} \sim  {W}_{p}\left( {m,{I}_{p}}\right)  = {W}_{p}\left( m\right)$ ;
反之, 若 $U \sim  {W}_{p}\left( {m,{I}_{p}}\right)$ , 则 ${\sum }^{1/2}U{\sum }^{1/2} \sim  {W}_{p}\left( {m,\sum }\right)$ .

(2) 对任何 $\mathbf{t} \in  {R}^{p},{\mathbf{t}}^{\mathrm{T}}W\mathbf{t} \sim  {W}_{1}\left( {m,{\mathbf{t}}^{\mathrm{T}}\sum \mathbf{t}}\right) \overset{d}{ = }\left( {{\mathbf{t}}^{\mathrm{T}}\sum \mathbf{t}}\right) {\chi }_{m}^{2}$ , 即 $\frac{{\mathbf{t}}^{\mathrm{T}}W\mathbf{t}}{{\mathbf{t}}^{\mathrm{T}}\sum \mathbf{t}} \sim  {\chi }_{m}^{2}$ 。[[Wiki - 卡方分布]]

## Pro 2

假设 $W \sim W_{p}(m,\Sigma)$，若 $m \geq p$，则 $P(W > 0) = 1$。

### Proof

W 一定是半正定矩阵 [[Wiki - 正定矩阵]]

假设 $W = Z^{\mathsf{T}}Z = \sum_{i=1}^{m}\mathbf{z}_{i}\mathbf{z}_{i}^{\mathsf{T}} \sim W_{p}(m,\Sigma)$，其中 $\mathbf{z}_{1},...,\mathbf{z}_{m}$ iid $\sim N_{p}(\mathbf{0},\Sigma)$，则 $P(W \text{不可逆}) = P(\text{rank}(W) < p) = P(\text{rank}(Z) < p) = 0$。

## Lemma 1

$\mathbf{z}_{1},...,\mathbf{z}_{m}$ iid $\sim N_{p}(\mathbf{0},\Sigma)$，$Z = (\mathbf{z}_{1},...,\mathbf{z}_{m})^{\mathsf{T}}$，常数矩阵 $A, B$ 都是 $m$ 列，若 $A B^{\mathsf{T}} = 0$，则 $A Z \bot B Z$。

[[Wiki - 多元正态分布的性质]]

## The 1

[[Wiki - Cochran定理]]

## Pro 3

假设 $W \sim  {W}_{p}\left( m\right) ,m \geq  p$ , 则对 $\forall$ 常数向量 $\mathbf{t} \in  {S}^{p - 1}$ , 有

(1) ${\mathbf{t}}^{\top }W\mathbf{t} \sim  {\chi }_{m}^{2}$ ;

(2) $\frac{1}{{\mathbf{t}}^{\top }{W}^{-1}\mathbf{t}} \sim  {\chi }_{m - p + 1}^{2}$ .

### Proof

首先, 因为 $m \geq  p,W$ 可逆。

(1) $W \sim  {W}_{p}\left( {m,{I}_{p}}\right)  \Rightarrow  {\mathbf{t}}^{\top }W\mathbf{t} \sim  {W}_{1}\left( {m,{\mathbf{t}}^{\top }{I}_{p}\mathbf{t}}\right)  = {W}_{1}\left( {m,{I}_{p}}\right)  = {\chi }_{m}^{2}$ 。

(2) 注意到对任何正交矩阵 [[Wiki - 正交矩阵]] $H$ ,
$V = {HW}{H}^{\top } \sim  {W}_{p}\left( {m,H{H}^{\top }}\right)  = {W}_{p}\left( m\right) ,{\mathbf{t}}^{\top }{W}^{-1}\mathbf{t} = {\mathbf{t}}^{\top }{H}^{\top }{\left( HW{H}^{\top }\right) }^{-1}H\mathbf{t},$

取正交矩阵 $H$ 的第一行为 ${\mathbf{t}}^{\mathrm{T}}$ , 即 $H = \left( \begin{matrix} {\mathbf{t}}^{\mathrm{T}} \\   *  \end{matrix}\right)$ , 则 $\mathbf{u} = H\mathbf{t} = \left( \begin{matrix} {\mathbf{t}}^{\mathrm{T}}\mathbf{t} \\   *  \end{matrix}\right)  = \left( \begin{array}{l} 1 \\  \mathbf{0} \end{array}\right)$

故 ${\mathbf{t}}^{\top }{W}^{-1}\mathbf{t} = {\mathbf{t}}^{\top }{H}^{\top }{\left( HW{H}^{\top }\right) }^{-1}H\mathbf{t} = {\mathbf{u}}^{\top }{\left( HW{H}^{\top }\right) }^{-1}\mathbf{u} = {\mathbf{u}}^{\top }{V}^{-1}\mathbf{u}$ . 再由 [[Wiki - Wishart分布分块运算#The 1 分块运算]]说明此为 $W_{1}(m-p+1,1)$

### Cal 2

$W\sim W_{p}(m), \mathbf{z}\sim N_{p}(0, I_{p}), Z\perp W$，则 
$$
\frac{\mathbf{z}^{T}\mathbf{z}}{\mathbf{z}^{T}W\mathbf{z}}\sim \chi_{m-p+1}^{2}
$$

进一步，$W\sim W_{p}(m, \Sigma), \mathbf{z} \sim N_{p}(0, \Sigma)$ 且相互独立，则也有
$$
\frac{{\mathbf{z}^{T}\Sigma^{-1}\mathbf{z}}}{\mathbf{z}^{T}W\mathbf{z}}\sim \chi_{m-p+1}^{2}
$$
且 $\frac{{\mathbf{z}^{T}\Sigma^{-1}\mathbf{z}}}{\mathbf{z}^{T}W\mathbf{z}}$ 与 $\mathbf{z}$ 独立

[[Wiki - 随机变量的独立性]]
## Pro 4 Wishart 矩阵的特征根分布

假设 $W \sim W_{p}(m)$，$m \geq p$，则 $W$ 的特征根 $\lambda_{1},...,\lambda_{p} > 0$ 的联合概率密度为：

$$
p(\lambda_{1},...,\lambda_{p}) = C |\Lambda|^{(m-p-1)/2} \exp\left(-\frac{\text{tr}(\Lambda)}{2}\right) \prod_{1 \leq i < j \leq p} (\lambda_{i} - \lambda_{j}),
$$

其中 $C$ 是归一化常数。

[[Wiki - 特征值和特征向量]]