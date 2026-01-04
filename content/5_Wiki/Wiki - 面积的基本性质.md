---
aliases: 
info: 面积的基本性质
date: 2023-12-14-星期四 09:21
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 实分析
  - 数学分析/积分
id: wiki20231214092108
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 平面区域的面积]]

## Pro 1 

```ad-proposition
title: Propositon 1

1、 $D_{i}$ 为有界集合，则
$$
\sigma^{+}(\cup D_{i})\leq \sum_{i}\sigma^{+}(D_{i})
$$

2、若 $D_{1}\subset D_{2}$，则 $\sigma^{+}(D_{1})\leq \sigma^{+}(D_{2})$

3、若$D_{1},D_{2}$可测，则$D_{1}\cup D_{2}$可测


```

[[Wiki - lebesgue可测]]

## Pro2 可加性

```ad-proposition
title: Propositon 2

面积的可加性：

设 $D_{1},D_{2}$ 可测，且$D_{1}^{\circ}\cap D_{2}^{\circ}=\phi$，则
$$
\begin{aligned}

D=D_{1}\cup D_{2} \\

\sigma \left( D \right) =  \sigma \left( {{D_1}} \right)+\sigma(D_{2})
\end{aligned}
$$


**内点交为空**，则面积和为其并的面积

```

[[Wiki - 度量空间的内部外部]]

### Proof

正推由条件，分类讨论分割，可以有 $\sigma_{\pi}^{-}(D_{1} \cup D_{2})\geq \sigma_{\pi}^{-}(D_{1})+\sigma_{\pi}^{-}(D_{2})$，再由 Pro 1 -1 和 $D_{1},D_{2}$ 可测即证。

## Cal 1 

边界区域是分段光滑的可推出 D 可测

对二维连续曲线它的像不一定可测，  
只有 x (t），y (t）都一阶连续可导 [[Wiki - 偏导]]时才像是零测集


