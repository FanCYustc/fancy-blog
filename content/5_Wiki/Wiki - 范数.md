---
aliases: 
info: 范数的定义和性质
date: 2023-11-02-星期四 08:35
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 几何学/度量空间
id: wiki20231102083516
banner: "![[astrowalk.gif]]"
---
---

## Def 1 范数

```ad-definition
title: Definition 1

对实线性空间上的一个函数

$\mid\mid \cdot\mid\mid: \mathbb{V}\to [0,+\infty)$

满足：
1. 正定性： $\mid\mid x\mid\mid\geq 0$
2. 齐次性：$\mid\mid ax\mid\mid= |a| \|x\|$
3. 三角不等式：$\mid\mid x+y\mid\mid\leq\mid\mid x\mid\mid + \mid\mid y\mid\mid$

则称 $\mid\mid \cdot \mid\mid$ 是线性空间上的**一个范数**

```

 [[Wiki - 一般线性空间]]
## Example

```ad-example
title: Example 1


$\mathbb{R}^{n}$ 中定义
$$
\mid\mid x\mid\mid_{p} = \left[ \sum_{k=1}^{n} \mid x_{k}\mid^{p} \right]^{1/p}
$$
是一个范数

$$
\mid\mid x\mid\mid_{\infty}=max\{\mid x_{k}\mid\space\mid 1\leq k\leq n\}
$$

也是一个范数

```

```ad-example
title: Example 2

同理在 $C[a,b]$ 中，

$$
\mid\mid f\mid\mid_{p}=\left[ \int_{a}^{b}\mid f(x)\mid^{p} \, dx  \right]^{1/p}
$$

是一个范数

$$
\mid\mid f\mid\mid_{\infty} = \sup_{x\in [a,b]}|f(x)|
$$

也是一个范数，称为 sup 范数

```

---

## Def 1 Norm (Mathematical)

```ad-definition
title: Norm (Mathematics)

A **norm** on a vector space $V$ over field $F$ ($\mathbb{R}$ or $\mathbb{C}$) is a function $||\cdot||: V \rightarrow \mathbb{R}$ satisfying:
1. **Positive definiteness**: $||x|| \geq 0$ and $||x||=0 \iff x=0$
2. **Absolute homogeneity**: $||\alpha x|| = |\alpha| \cdot ||x||$ for all $\alpha \in F$
3. **Triangle inequality**: $||x+y|| \leq ||x|| + ||y||$

Common norms include:
- $L^p$ norm: $||x||_p = \left(\sum_{i=1}^n |x_i|^p\right)^{1/p}$
- Euclidean norm ($L^2$): $||x||_2 = \sqrt{\sum_{i=1}^n x_i^2}$
- Maximum norm ($L^\infty$): $||x||_\infty = \max_i |x_i|$
```

## The 1 Norm Properties

```ad-theorem
title: Norm Equivalence in Finite Dimensions

All norms on a finite-dimensional vector space are equivalent:
$\exists c,C>0$ such that $c||x||_a \leq ||x||_b \leq C||x||_a$


```

**Proof sketch**:
1. Show equivalence to $||\cdot||_1$ on unit sphere
2. Extend via homogeneity
3. Use compactness of unit sphere in finite dimensions