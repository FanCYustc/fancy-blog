---
aliases:
  - 仿射包
info: 
date: 2025-02-28-星期五 22:07
update: 
tags:
  - wiki/year2025
  - wiki/month02
  - 凸优化
  - 泛函分析
  - 线性代数/线性空间
id: wiki20250228220715
banner: "![[astrowalk.gif]]"
---
---

## Def 1 仿射集合

一集合 $C\subseteq\mathbf{R}^{n}$ 是仿射的 (affine)，若对任意 $x_{1},x_{2}\in C,\,\theta\in\mathbf{R}$ 有  

$$
\theta x_{1}+(1-\theta)x_{2}\in C.
$$  
与[[Wiki - 凸集]]对比，没有$\theta\in [0,1]$的限制

e.g.线性方程组的解集$\{Ax=b\}$就是仿射集合

## Pro 1

如果 $C$ 是仿射的，则 $x_{1},\ldots,x_{k}\in C,\,\theta_{1}+\cdot\cdot\cdot+\theta_{k}=1,$ 有$\theta_{1}x_{1}+\cdots+\theta_{k}x_{k}\in C.$  

## Pro 2

如果 $C$ 是仿射的, $x_{0}\in C_{:}$ 则  

$$
V=C-x_{0}=\{x-x_{0}|x\in C\}
$$  

是一个子空间[[Wiki - 一般线性空间]]，即关于加法和数乘是封闭的.  

### 证明：

假设 $v_{1},v_{2}\in V,\alpha,\beta\in\mathbf{R}.$ 因为 $v_{1}+x_{0}\in C$ $v_{2}+x_{0}\in C.$ 所以$\alpha v_{1}+ \beta v_{2}+x_{0}=\alpha\left(v_{1}+x_{0}\right)+\beta\left(v_{2}+x_{0}\right)+\left(1-\right. \beta)x_{0}$ 

这是由于C是仿射的, $\alpha+\beta+(1-\alpha-\beta)=1$ 

由于 $\alpha v_{1}+\beta v_{2}+x_{0}\in C$ 因此 $\alpha\boldsymbol{v}_{1}+\beta\boldsymbol{v}_{2}\in V,$ 即 $V$ 是一个子空间.  

### cal 1

仿射空间可以表示成向量空间的一个子空间加上一个偏移；子空间的维数就是仿射空间的维数[[Wiki - Hamel基]]

## def 2 仿射包

称由集合 $C\subseteq\mathbf{R}^{n}$ （C不一定为放射集）中的点的所有仿射组合组成的集合为 $C$ 的仿射包，记为aff $C$  

$$
\theta_{1}x_{1}+\cdot\cdot\cdot+\theta_{k}x_{k}|x_{1},\ldots,x_{k}\in C,\theta_{1}+\cdot\cdot\cdot+\theta_{k}=1
$$  

仿射包是包含 $C$ 的最小的仿射集合,即如果 $S$ 是满足 $C\subseteq S$ 的仿射集合， 那么aff $C\subseteq S$  

集合 $C$ 的仿射维数为其仿射包的维数.  与凸包[[Wiki - 凸集|凸包]]一致

