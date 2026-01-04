---
aliases:
  - 矩估计的无偏性
info: 矩估计的方法
date: 2024-03-22-星期五 09:57
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/点估计
id: wiki20240322095725
banner: "![[astrowalk.gif]]"
---
---

## Def 1 矩估计

```ad-definition
title: Definition 1

总体分布族为 $f (x;\theta),\theta\in \Theta$，$\theta$ 的函数可以用一些中心矩和原点矩表示

$$
g(\theta)=G(\alpha_{1},\dots,\alpha_{k},\mu_{2},\dots,\mu_{s})
$$

此时用抽样 $(X_{1},\dots,X_{n})$ 的各个样本矩来代替矩，得到
$$
\hat{g}(\theta)=G(\alpha_{n1},\dots,\alpha_{nk};m_{n2},\dots,m_{ns})
$$
来作为 $g(\theta)$ 的估计量，称为矩估计


```

[[Wiki - 中心矩]] 

[[Wiki - 随机变量的矩]]

## Pro 1 无偏性

```ad-proposition
title: Propositon 1

样本原点矩都是总体原点矩 [[Wiki - 随机变量的矩]]的无偏估计；当 $g(\theta)$ 可表示为总体原点矩的线性组合时，$\hat{g}(\boldsymbol{X})$ 是 $g(\theta)$ 的无偏估计。


但中心矩都不是总体中心矩的无偏估计 (k>=2) [[Wiki - 中心矩]]


```

 [[Wiki - 无偏估计]]


[[Wiki - 矩估计的极限性质]]