---
aliases: 
info: 
date: 2025-02-28-星期五 23:42
update: 
tags:
  - wiki/year2025
  - wiki/month02
  - 数学分析/集合
  - 凸优化
id: wiki20250228234212
banner: "![[astrowalk.gif]]"
---
---
##  def 1 锥

(i) 如果对于任意 $x\in C$ 和 $\theta\geqslant0$ 都有 $\theta x\in C$ (即 0 为起点且过 $x$ 的射线在 C 里面), 我们称集合 $C$ 是锥或者非负齐次。  

(ii) 如果集合 $C$ 是锥, 并且是凸的, 则称 $C$ 为凸锥, 即对任意 $x_{1},x_{2}\in C$ 和 $\theta_{1},\theta_{2}\geqslant0,$ 都有  

$$
\theta_{1}x_{1}+\theta_{2}x_{2}\in C.
$$  
## def 2 锥包

集合C的锥包是C中元素的所有**锥组合**的集合，即  

$$
\begin{array}{r}{\{\theta_{1}x_{1}+\cdot\cdot\cdot+\theta_{k}x_{k}|x_{i}\in C,\theta_{i}\geq0,i=1,\ldots,k}\end{array}
$$  

它是包含C的最小的凸锥.  

与凸包[[Wiki - 凸集|凸包]]类似

## PRO 1

任意子空间是仿射的凸锥

[[Wiki - 仿射集合]]

[[Wiki - 凸集]]

三类锥:  

$$
\mathbf{S}^{n}=\left\{X\in\mathbf{R}^{n\times n}|X=X^{\top}\right\}
$$  [[Wiki - 对称矩阵]]

$$
\mathbf{S}_{+}^{n}=\{X\in\mathbf{S}^{n}|X\succeq0\}
$$  
[[Wiki - 正定矩阵]]
$$
\mathbf{S}_{++}^{n}=\{X\in\mathbf{S}^{n}|X\succ0\}
$$  

