---
aliases: 
info: 可积函数度量空间
date: 2024-04-08-星期一 09:56
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 实分析/lebesgue积分
  - 几何学/度量空间
  - 泛函分析
id: wiki20240408095641
banner: "![[astrowalk.gif]]"
---
 ---

## Def 1 $L^{p}$ 度量空间

```ad-definition
title: Definition 1

```
$L(E)$ 为 E 上可积函数集合，加上度量 [[Wiki - 范数]]
定义为

$$
\mid\mid f\mid\mid_{p} =\left( \int _{E}|f|^{p} \, dm  \right)^{\frac{1}{p} },1\leq p<+\infty
$$

构成度量空间记为 $L^{p}(E)=\{f:\mid\mid f\mid\mid_{p}<+\infty\}$ [[Wiki - 度量空间]]

定义的范数 $\mid\mid f\mid\mid_{p}$ 满足范数的性质 [[Wiki - 范数]]，且 $d (f, g)=\mid\mid f-g\mid\mid_{p}$ 定义了 $L^{p}(E)$ 上的一个度量 [[Wiki - 欧几里得空间的距离和夹角]]


```ad-attention

**这里范数的正定性与之前度量空间不同，$\mid\mid f\mid\mid_{p}=0$ 当且仅当 f 几乎处处为 0，作为对它的修正。也就是说，两个可积空间的函数相等指的是 f 与 g 几乎处处相等即可**

如果p落在0到1之间，则这个范数会不满足三角不等式

```

验证范数的性质：齐次性与正定性好说

对三角不等式，由 [[Wiki - Minkowski不等式]]可证：

对 p=1，利用绝对值三角不等式即可

$p=+\infty$ 时，对 f, g 的上确界也有三角不等式

$1<p<+\infty$ 时，取 p 的共轭指标 $q= \frac{p}{p-1}$ 使得 $\frac{1}{p}+ \frac{1}{q}=1$，利用 [[Wiki - Holder不等式]]和 Minkowski 不等式 [[Wiki - Minkowski不等式]]

$$
\begin{align*}
& \mid\mid f-g\mid\mid_{p}\leq \int_{E} |f| \mid f-g\mid^{p-1} \, dm+\int _{E}|g| \mid f-g\mid^{p-1} \, dm  
\end{align*}
$$

其中考虑第一项

$$
\begin{align}
\leq \left( \int _{E}|f|^{p} \, dx \right)^{\frac{1}{p}} \left( \int _{E}|f-g|^{(p-1)q} \, dx  \right)^{\frac{1}{q}}\\
=\mid\mid f\mid\mid_{p}\mid\mid f-g\mid\mid_{p}^{p-1} 
\end{align}
$$

由 holder 不等式，同样考虑第二项即证

## Pro 1 度量空间 

```ad-proposition
title: Propositon 1

补充说明，$L^{p}(E)$ 是一个线性空间

当p>=1时，$L^{p}(E)$是一个**度量空间**，当0<p<1时不是

```

[[Wiki - 度量空间]]
### Proof

逐一验证 [[Wiki - 一般线性空间]]的 8 条性质

对度量空间，在 0<p<1 时可以举反例不满足三角不等式 [[Wiki - 欧几里得空间的距离和夹角#Pro1 距离的性质]]


## Pro 2 完备性

![[Wiki - Lp空间的完备性#The 1 完备性定理]]

之前在 [[Scientech - 数学分析-Riemann积分]]时 $R([a,b])$ 不是完备的度量空间，但是对于 lebesgue 可积函数集是完备度量

### Proof

见于树澄实分析讲义[[实分析讲义-于树澄.pdf]] 第 13, 14 节证明



