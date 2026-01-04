---
aliases: 
info: 
date: 2025-03-18-星期二 09:56
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 多元统计分析
  - 概率论/概率分布
id: wiki20250318095609
banner: "![[astrowalk.gif]]"
---
---

## Def 1 Wishart 分布

Wishart 分布主要用于描述样本协方差矩阵的分布。假设 $\mathbf{z}_1, \ldots, \mathbf{z}_m$ 是独立同分布的 $p$ 维正态随机向量，满足 $\mathbf{z}_i \sim N_p(\mathbf{0}, \Sigma)$ [[Wiki - 多元正态分布]]，则 $p \times p$ 矩阵 $W = Z^\top Z = \sum_{i=1}^m \mathbf{z}_i \mathbf{z}_i^\top$ 的分布称为自由度为 $m$、参数为 $\Sigma$ 的 Wishart 分布，记作 $W \sim W_p(m, \Sigma)$。

- 当 $p=1$ 时，Wishart 分布退化为 $\sigma^2 \chi_m^2$ 分布。（是推广的 [[Wiki - 卡方分布]]）
- 当 $\Sigma = I_p$ 时，称为标准 Wishart 分布，记作 $W_p(m)$。


Wishart 分布描述的是 $p \times p$ 正定矩阵 $W$ 的所有 $p(p+1)/2$ 个不同元素（对角线+上三角）的联合分布。


## Pro 1

1. **球对称性**：
   - $Z$ 的**每一列**都服从球对称正态分布[[Wiki - 球对称分布]]，且 $W$ 的对角元服从 scaled 卡方分布。

即Z是每行都是独立同分布的多元正态分布，但按列看是球对称分布

$Z$ 的概率密度即 ${\mathbf{z}}_{1},\ldots ,{\mathbf{z}}_{m}$ 的联合概率密度

$$
p\left( Z\right)  = p\left( {{\mathbf{z}}_{1},\ldots ,{\mathbf{z}}_{m}}\right)  = \mathcal{C}\exp \left( {-\frac{1}{2}\operatorname{tr}\left( {{\sum }^{-1}{Z}^{\top }Z}\right) }\right)$$

其中 $C = \frac{1} {{\left( 2\pi \right) }^{{pm}/2}{\left| \sum \right| }^{m/2}}$

密度仅与 ${Z}^{\top }Z$ 有关, 对于 $\forall m \times  m$ 正交矩阵 $H,{HZ}\overset{d}{ = }Z$ .

### proof

验证: $p\left( Z\right)  = p\left( {{\mathbf{z}}_{1},\ldots ,{\mathbf{z}}_{m}}\right)  = \mathop{\prod }\limits_{{i = 1}}^{m}\frac{1}{{\left( 2\pi \right) }^{p/2}{\left| \sum \right| }^{1/2}}\exp \left( {-{\mathbf{z}}_{i}^{\top }{\sum }^{-1}{\mathbf{z}}_{i}/2}\right)$
$= C\exp \left( {-\frac{1}{2}\mathop{\sum }\limits_{{i = 1}}^{m}{\mathbf{z}}_{i}^{\top }{\sum }^{-1}{\mathbf{z}}_{i}}\right)  = C\exp \left( {-\frac{1}{2}\operatorname{tr}\left( {{\sum }^{-1}{Z}^{\top }Z}\right) }\right) ,$

且对 $\forall$ 正交矩阵 [[Wiki - 正交矩阵]] $H,p\left( {HZ}\right)  = p\left( Z\right)$ , 即 ${HZ}\overset{d}{ = }Z$ 。

[[Wiki - 矩阵的迹]]
## Pro 2

对比在向量球对称的分布的情况下，$W=Z^{T}Z$ 很像模长的平方 $\|z\|^{2}$，我们将极分解进行推广

2. **极分解**：
   - $Z$ 可以分解为 $Z = U W^{1/2}$，其中 $W$ 是正定矩阵 [[Wiki - 正定矩阵]]，$U$ 是单位化矩阵，且 $W$ 与 $U$ 独立。[[Wiki - 球对称分布的极分解定理]]

$U$ 满足 $U^{T}U=I_{p}$，$U\in V_{mp}= \{U\in R^{m\times p}: U^{T}U=I_{p}\}$


## the 1 概率密度

Wishart 分布的概率密度函数为：     $$
     p(W) = \frac{1}{2^{mp/2} \Gamma_p(\frac{m}{2}) |\Sigma|^{m/2}} |W|^{(m-p-1)/2} \exp\left(-\frac{1}{2} \text{tr}(\Sigma^{-1} W)\right)
     $$
其中 $\Gamma_p(a)$ 是多元 Gamma 函数[[Wiki - 多元gamma函数]]。


```ad-example

特别的，对于二元情形，

 $W = \left( \begin{array}{ll} {w}_{11} & {w}_{12} \\  {w}_{21} & {w}_{22} \end{array}\right)  \sim  {W}_{2}\left( {m,{I}_{2}}\right)$ 的概率密度为

$$p\left( W\right)  = p\left( {{w}_{12},{w}_{11},{w}_{22}}\right)  = {c}_{m}{e}^{-\left( {{w}_{11} + {w}_{22}}\right) /2}{\left( {w}_{11}{w}_{22} - {w}_{12}^{2}\right) }^{\left( {m - 3}\right) /2},$$

即 $p\left( W\right)  = {c}_{m}{\left| W\right| }^{\left( {m - 3}\right) /2}{e}^{-\operatorname{tr}\left( W\right) /2}$ ,其中 ${c}_{m} = {\left( {2}^{m}\sqrt{\pi }\Gamma \left( \frac{m}{2}\right) \Gamma \left( \frac{m - 1}{2}\right) \right) }^{-1}$
```

### proof

- 雅可比行列式计算：变换 $Z \to (W, U)$ 的雅可比行列式[[Wiki - 雅各比矩阵]]为：  
 $$J = 2^{-p} |W|^{(m-p-1)/2} \quad \Rightarrow \quad dZ = 2^{-p}|W|^{(m-p-1)/2} dW dU.$$

- **联合密度分解**    
$Z$ 的联合密度为：  
   $$p(Z) = \frac{1}{(2\pi)^{pm/2} |\Sigma|^{m/2}} \exp\left(-\frac{1}{2} \text{tr}(\Sigma^{-1} W)\right).$$  
代入雅可比行列式后，分离径向 ($W$) 和方向 ($U$) 部分：  
   $$p(Z)dZ = \underbrace{\frac{|\Sigma|^{-m/2}}{(2\pi)^{pm/2}} 2^{-p} \exp\left(-\frac{1}{2} \text{tr}(\Sigma^{-1} W)\right)|W|^{\frac{m-p-1}{2}}}_{g(W)} dW \cdot \underbrace{dU}_{\text{Stiefel体积元}}.$$

[[Wiki - n重积分的换元]]

- **Stiefel 流形体积积分**：  
Stiefel 流形 $V_{m,p}$ 的体积为：  
   $$|V_{m,p}| = \frac{2^p \pi^{mp/2}}{\Gamma_p(m/2)},$$  
   其中 $\Gamma_p(a)$ 是多元 Gamma 函数（归一化常数）。通过积分消除方向变量 $U$，得到 $W$ 的边际密度。

- **多元 Gamma 函数与归一化**  ：

利用多元 Gamma 函数的性质：  
   $$\Gamma_p(a) = \pi^{p(p-1)/4} \prod_{k=1}^p \Gamma\left(a - \frac{k-1}{2}\right),$$  
归一化后得到 $W$ 的密度函数：
$$
p(W) = \frac{1}{2^{mp/2} \Gamma_p\left(\frac{m}{2}\right) |\Sigma|^{m/2}} |W|^{\frac{m-p-1}{2}} \exp\left(-\frac{1}{2} \text{tr}(\Sigma^{-1} W)\right), \quad W > 0.
$$
