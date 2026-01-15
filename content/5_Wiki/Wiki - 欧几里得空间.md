---
aliases:
  - 欧式空间
info: 欧几里得空间的定义
date: 2023-07-06-星期四 22:03
update:
tags:
  - wiki/year2023
  - wiki/month07
  - 几何学
id: wiki20230706220303
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

## Def1 欧几里得空间

定义了内积 [[Wiki - 内积]]的实数域 [[Wiki - 数域]]上的线性空间 [[Scientech - 线性代数-线性空间]]称为欧几里得空间

[[Wiki - 一般线性空间]]
## Def 1 Euclidean Space  
```ad-definition  
title: Definition 1  

A **Euclidean space** is a real vector space [[Scientech - Linear Algebra-Linear Space]] equipped with an inner product [[Wiki - Inner Product]] over the field of real numbers [[Wiki - Number Field]].  
- Denoted as $(V, (\cdot,\cdot))$ where $V$ is the vector space and $(\cdot,\cdot)$ is the inner product  
- Induces a norm (modulus) $\|\alpha\| = \sqrt{(\alpha,\alpha)}$ (see [[Wiki - Euclidean Vector Norm]])  
```

## Def 2 Distance Metric  
```ad-definition  
title: Definition 2  

The **distance** between vectors $\vec{a}, \vec{b} \in V$ is defined as:  
$$d(\vec{a}, \vec{b}) = \|\vec{a} - \vec{b}\|$$  

**Properties:**  
1. *Symmetry*: $d(\vec{a},\vec{b}) = d(\vec{b},\vec{a})$  
2. *Positive Definiteness*: $d(\vec{a},\vec{b}) \geq 0$ with equality iff $\vec{a}=\vec{b}$  
3. *Triangle Inequality*: $d(\vec{a},\vec{b}) \leq d(\vec{a},\vec{c}) + d(\vec{c},\vec{b})$  

*Derivation from norms*: Direct consequence of the inner product axioms.  
```

## Def 3 Angle and Orthogonality  
```ad-definition  
title: Definition 3  

1. **Angle** $\theta$ between non-zero vectors:  
   $$\theta = \arccos \frac{(\vec{a},\vec{b})}{\|\vec{a}\|\|\vec{b}\|}$$  
   (Valid by the Cauchy-Schwarz inequality [[Wiki - Cauchy-Schwarz Inequality]])  

2. **Orthogonality**: Vectors are *orthogonal* ($\vec{a} \perp \vec{b}$) iff $(\vec{a},\vec{b}) = 0$.  
```

