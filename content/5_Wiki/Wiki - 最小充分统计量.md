---
aliases: 
info: 
date: 2024-03-15-星期五 10:15
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 数理统计/统计量
id: wiki20240315101549
banner: "![[astrowalk.gif]]"
---
---

## Def 1 最小充分统计量

```ad-definition
title: Definition 1

T 是最小充分统计量，如果任意充分统计量 T'，$T(x)=T(y)\to T'(x)=T'(y)$。

换句话说，任意充分统计量 T'可表示为 $T'(x)=f(T(x))$

```

[[Wiki - 充分统计量]]

```ad-note

1、**最小充分统计量也未必是唯一的**

2、如果随机变量取值范围与参数有关，则将 x, y 取在同一个 $\theta$ 的支撑集中

```

2 的举例：

$$f(x,\boldsymbol{\theta})=\lambda\exp\{-\lambda(x-\mu)\}I_{[x_i\geq\mu]}.$$

$$\left.\frac{f(\boldsymbol{x},\boldsymbol{\theta})}{f(\boldsymbol{y},\boldsymbol{\theta})}=\exp\left\{\left.-\lambda\right[\sum_{i=1}^nx_i-\sum_{i=1}^ny_i\right]\right\}\cdot\frac{I_{[x_{(1)}\geq\mu]}}{I_{[y_{(1)}\geq\mu]}}.$$

此时最小充分统计量为 $\left( \sum_{i=1}^{n}x_{i},x_{(1)} \right)$

## The 1 

```ad-theorem
title: Theorem 1

如果对任意的 x, y，$\frac{p(x;\theta)}{p(y;\theta)}$ 与 $\theta$ 无关当且仅当 $T(x)=T(y)$，则 T 是最小充分统计量


```

### Proof

在 [[Wiki - 因子分解定理]]的基础上，先说明 T 是充分统计量

## The2

```ad-theorem
title: Theorem 2

最小充分统计量存在，且任何完全充分统计量是最小充分的 

```

[[Wiki - 完全统计量]]

**但最小充分统计量未必是完全的**

### Proof


