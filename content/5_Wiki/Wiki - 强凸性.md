---
aliases: 
info: 
date: 2025-06-11-星期三 21:03
update: 
tags:
  - wiki/year2025
  - wiki/month05
  - 凸优化
id: wiki20250611210333
banner: "![[astrowalk.gif]]"
---
---


## Def 1 强凸性

```ad-definition
title: 强凸性 (Strong Convexity)

设 $f: \mathbb{R}^n \to \mathbb{R}$ 是可微函数，若存在常数 $\mu > 0$ 使得 $\forall \mathbf{x}, \mathbf{y} \in \text{dom}(f)$ 满足：
$$
f(\mathbf{y}) \geq f(\mathbf{x}) + \nabla f(\mathbf{x})^\top (\mathbf{y} - \mathbf{x}) + \frac{\mu}{2} \|\mathbf{y} - \mathbf{x}\|^2
$$
则称 $f$ 是 $\mu$-强凸函数。等价条件：
1. $g(\mathbf{x}) = f(\mathbf{x}) - \frac{\mu}{2}\|\mathbf{x}\|^2$ 是凸函数
2. $\nabla^2 f(\mathbf{x}) \succeq \mu I$（若二阶可导）
```

与 [[Wiki - 凸函数]]对比，当 $\mu=0$ 时就是凸函数定义

其他等价定义：

1. $\exists m, \forall x, y\in S,\theta\in(0,1)$，有 
$$
f(\theta x+(1-\theta)y)\leq \theta f(x)+ (1-\theta)f(y) -\frac{m}{2}\theta(1-\theta)\|y-x\|_{2}^{2}
$$

2. $\forall x, y \in S$，有
$$
(\nabla f(x)-\nabla f(y))^{T}(x-y) \geq m\|x-y\|_{2}^{2}
$$

## Pro 1 

对 $\forall x, y \in S$，有

$$
f(y) = f(x) + \nabla f(x)^{T}(y-x) + \frac{1}{2} (y-x)^{T}\nabla f(z)^{2}(y-x); z\in [x,y]
$$
[[Wiki - 梯度]]
## Pro 2 性质

- 强凸函数有唯一全局最小值 $\mathbf{x}^*$
- 梯度下降收敛速度 $O(e^{-\mu t})$
- 对偶间隙有上界：$f(\mathbf{x}) - f(\mathbf{x}^{*}) \leq \frac{1}{2\mu}\|\nabla f(x)\|_{2}^2$
- 此外有 $\|x-x^{*}\|\leq \frac{2}{\mu} \|\nabla f (x)\|_{2}$

由连续性，若 S 中所有下水平集都有界，则存在 M 使得 $\nabla^{2}f (x)\leq MI,\forall x\in S$

那么对偶间隙也有下界 $f (x)- f (x^{*})\geq \frac{1}{2M}\|\nabla f (x)\|_{2}^{2}$

**示例**：
$f(x) = x^2$ 是 $2$ -强凸函数（$\nabla^2 f = 2 \geq 2$），而 $f(x) = |x|$ 非强凸。






