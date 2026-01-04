---
aliases: 
info: 
date: 2024-09-14-星期六 11:42
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析
  - 相关
id: wiki20240914114209
banner: "![[astrowalk.gif]]"
---
---

## Def 1 典则相关系数

对于随机向量 $\boldsymbol{x,y}$，我们用与 x 有关部分 $\hat {{y}} = \Sigma_{\boldsymbol{yx}}\Sigma_{ \boldsymbol{ x x}}^{-1}\boldsymbol{x}$ 的方差占 y 方差的比例来度量 $\boldsymbol{x}$ 与 $\boldsymbol{y}$ 的相关性，
$$
\Phi_{\mathbf{y}\sim \mathbf{x}}= Var[\boldsymbol{y}]^{-\frac{1}{2}}Var[\hat{\boldsymbol{y}}]Var[\boldsymbol{y}]^{-\frac{1}{2}}=  \Sigma_{\boldsymbol{yy}}^{-\frac{1}{2}} (\Sigma_{\boldsymbol{yx}}\Sigma_{\boldsymbol{x x}}^{-1}\Sigma_{\boldsymbol{xy}}) \Sigma_{\boldsymbol{yy}}^{-\frac{1}{2}}
$$

取 $\Phi_{\mathbf{y}\sim \mathbf{x}}$ 的最大特征根的平方根 $\sqrt{ \lambda_{max}(\Phi_{\mathbf{y\sim \mathbf{x}}}) }$ 为第一典则相关系数

其实就是 [[Wiki - 矩阵范数]]的平方根


## Pro 1

典则相关系数关于 $\mathbf{x,y}$ 对称，且位于 0 到 1 之间

### Proof

因为 $\Sigma_{yy \bullet x}$ 正定，所以 $\Sigma_{yx} \Sigma_{x x }^{-1}\Sigma_{xy}\leq \Sigma_{yy}$，也就是 $\Phi_{y\sim x}\leq I$，即每个特征根都小于等于 1

## Pro  2

$$
\max_{\boldsymbol{a,b}}(\rho^{2}(\boldsymbol{a}^{T}\boldsymbol{x},\boldsymbol{b}^{T}\boldsymbol{y}))= \lambda_{max}(\Phi_{\mathbf{y\sim \mathbf{x}}})
$$

### Proof

$$
\begin{align}
|ρ(a^T x, b^T y)| &= \frac{cov(a^T x, b^T y)}{\sqrt{var(a^T x) var(b^T y)}}  \\
&= \frac{|a^T \Sigma_{xy} b|}{\sqrt{a^T \Sigma_{xx} a} \sqrt{b^T \Sigma_{yy} b}}  \\
&= \frac{|u^T (\Sigma_{yy}^{-1/2} \Sigma_{xy} \Sigma_{xx}^{-1/2}) v|}{\sqrt{u^T u} \sqrt{v^T v}}  \\
& \leq \frac{\sqrt{u^T u} \sqrt{v^T \Sigma_{yy}^{-1/2} \Sigma_{xy} \Sigma_{xx}^{-1/2} \Sigma_{xy}^T \Sigma_{yy}^{-1/2} v}}{\sqrt{u^T u} \sqrt{v^T v}} (Cauchy不等式)  \\
& = \sqrt{\frac{v^T \Sigma_{yy}^{-1/2} \Sigma_{xy} \Sigma_{xx}^{-1} \Sigma_{xy}^T \Sigma_{yy}^{-1/2} v}{v^T v}}  \\
& \leq \lambda_{max}^{1/2} (\Sigma_{yy}^{-1/2} \Sigma_{xy} \Sigma_{xx}^{-1} \Sigma_{xy}^T \Sigma_{yy}^{-1/2}) 
\end{align}
$$

[[Wiki - Cauchy-Schwarz不等式]]

