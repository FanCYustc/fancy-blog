---
aliases: 
info: 振幅的定义和性质
date: 2023-12-26-星期二 11:01
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数学分析/积分
  - 连续
id: wiki20231226110134
banner: "![[astrowalk.gif]]"
---
---


## Def 1 振幅
```ad-definition
title: Definition 2


$$
\omega_{f}(x_{0},\delta)=\sup \{\mid f(x)- f(y)\mid\mid x,y\in D, \mid x-x_{0}\mid < \delta,\mid y-x_{0}\mid <\delta \}
$$

**称为振幅**

对于函数f是定义在可测集D上的，f在点$P\in D$的振幅指
$$
\omega_{f}(P)=\lim_{r\to o^{+}} \omega_{f}(P,r)
$$

```

## Pro 1 

[[Wiki - 函数连续的等价条件#Pro 3 振幅与连续]]

## Pro 2 

```ad-proposition
title: Propositon 2

对于可测集，定义

$$
D_{\delta}(f)=\{P\in D|\omega_{f}(P)\geq \delta\}
$$

则可知，对 $\delta_{1}>\delta_{2}>0$，有 $D_{\delta_{1}}(f)\subset D_{\delta_{2}}(f)$

函数 f 的不连续点的集合等于 $\cup_{n=1}^{\infty}D_{1 / n}(f)$


```

## Pro 3 

```ad-proposition
title: Propositon 3

当可测集 D 是闭集时，$\forall \delta>0,D_{\delta}(f)$ 是闭集

```


[[Wiki - 度量空间的开集闭集#Definition 3 闭集]]