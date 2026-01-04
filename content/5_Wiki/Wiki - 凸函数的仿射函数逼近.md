---
aliases: 
info: 
date: 2025-03-31-星期一 11:51
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 凸优化
  - 数学分析/极限
id: wiki20250331115130
banner: "![[astrowalk.gif]]"
---
---

## the 1 

如果函数 $f : {\mathbf{R}}^{n} \rightarrow  \mathbf{R}$ 是凸函数 [[Wiki - 凸函数]], 其定义域为 $\operatorname{dom}f = {\mathbf{R}}^{n}$ , 我们有

$$
f\left( x\right)  = \sup \{ g\left( x\right)  \mid  g 仿射, g\left( z\right)  \leq  f\left( z\right) \forall z\}$$

换言之, 函数 $f$ 是它所有的仿射全局下估计的**逐点上确界**.

[[Wiki - 仿射函数]]

### Proof

由于 f 的上境图是凸集 [[Wiki - 上境图]] [[Wiki - 凸集]]，所以由支撑超平面定理[[Wiki - 承托超平面|支撑超平面]]

存在 (x, f (x)) 点关于 epif 的支撑超平面，$a^{T}x+b f (x)\leq a^{T}z +bt,\forall (z, t)\in epi f$

讨论后可得 $b>0$，令 $g (z)= f (x)+ \frac{a^{T}}{b}(x-z)$，有 $g (z)\leq f(z),g(x)=f(x)$

