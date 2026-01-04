---
aliases: 
info: 
date: 2024-05-28-星期二 14:51
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 数理统计/假设检验
id: wiki20240528145124
banner: "![[astrowalk.gif]]"
---
---

## The 1 smirnov 检验

样本 $X_{11},\dots,X_{1n_{1}}$ 来自连续型分布 $F_{1}(x)$；样本 $X_{21},\dots,X_{2n_{2}}$ 来自连续型分布 $F_{2}(x)$ [[Wiki - 分布函数]]

记 $F_{1n_{1}}(x),F_{2n_{2}}(x)$ 为经验分布函数 [[Wiki - 经验分布函数]]，记

$$\begin{aligned}
&D_{n_{1},n_{2}} =\sup\limits_{-\infty<x<\infty}|F_{1n_1}(x)-F_{2n_2}(x)|=\max\{D_{n_1,n_2}^+,D_{n_1,n_2}^-\}  \\
&D_{n_1,n_2}^+ =\sup_{-\infty<x<\infty}(F_{1n_1}(x)-F_{2n_2}(x))  \\
&D_{n_1,n_2}^{-} =\sup_{-\infty<x<\infty}(F_{2n_2}(x)-F_{1n_1}(x)) 
\end{aligned}$$

三个检验量分别对应原假设
$$
\begin{align}
H_{0}: F_{1}(x)=F_{2}(x)\leftrightarrow K:F_{1}(x)\neq F_{2}(x) \\
H_{0}: F_{1}(x)\leq F_{2}(x)\leftrightarrow K:F_{1}(x)> F_{2}(x) \\
H_{0}: F_{1}(x)\geq F_{2}(x)\leftrightarrow K:F_{1}(x)< F_{2}(x)
\end{align}
$$

则有

$$\left.\lim\limits_{n_{1},n_{2}\to\infty}P\left(\sqrt{\frac{n_{1}n_{2}}{n_{1}+n_{2}}}D_{n_{1},n_{2}}^{+}\leqslant x\right)=\left\{\begin{array}{ll}1-e^{-2x^{2}},&x>0,\\0,&x\leqslant0,\end{array}\right.\right.$$

$D_{n_{1},n_{2}}^{-}$ 同上；

$$\left.\lim\limits_{n_{1},n_{2}\to\infty}P\left(\sqrt{ \frac{{n_{1}n_{2}}}{n_{1}+n_{2}} } D_{n_{1},n_{2}}\leqslant x\right)=\left\{\begin{array}{cc}\sum\limits_{k=-\infty}^\infty(-1)^ke^{-2k^2x^2},&x>0,\\\\0,&x\leqslant0.\end{array}\right.\right.$$

同 [[Wiki - kolmogorov检验]]

取好临界值 $D_{n_{1}, n_{2},\alpha}= x \sqrt{ \frac{{n_{1}+n_{2}}}{n_{1}n_{2}} }$，当 $>D_{n_{1},n_{2},\alpha}$ 则拒绝原假设

