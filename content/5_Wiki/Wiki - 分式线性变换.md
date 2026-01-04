---
aliases:
  - 莫比乌斯变换
info: 
date: 2024-03-14-星期四 10:47
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 复分析
  - 几何学
  - 线性代数/线性变换
id: wiki20240314104758
banner: "![[astrowalk.gif]]"
---
---

## Def 1 LFT 分式线性变换


```ad-definition
title: Definition 1

形如 $T (z)= \frac{{az+b}}{cz+d},ad-bc\neq 0$ 称为分式线性变换或者莫比乌斯变换

定义$Aut(\mathbb{C}_{\infty})=$所有LFT变换


```


## Pro 1

```ad-proposition
title: Propositon 1


$$
T'(z)= \frac{{ad-bc}}{(cz+d)^{2}}
$$
$$
T^{-1}(w)= \frac{{-dw+b}}{cw-a}
$$

```


## The 1 基本变换复合

```ad-theorem
title: Theorem 1

分式线性变换都可以分解成平移、旋转、伸缩、反演四个基本变换的复合

- 平移：z+a
- 旋转：$e^{i\theta}z,\theta\in \mathbb{R}$
- 伸缩：$rz, r\in \mathbb{R}$
- 反演：$\frac{1}{z}$



```

## Pro 2 保圆

```ad-proposition
title: Propositon 2

LFT 把复平面的广义圆映射为广义圆

LFT保交比

```

[[Wiki - 交比]]

## The 2

```ad-theorem
title: Theorem 2

对于任意不同的 $z_{2}, z_{3}, z_{4}\in \mathbb{C}_{\infty},\exists T\in Aut(\mathbb{C}_{\infty})$，s.t. $T(z_{2})=1,T(z_{3})=0,T(z_{4})=\infty$

```


### Proof

存在性：

对 $z_{2}, z_{3}, z_{4}\in \mathbb{C}$，取
$$
T(z)= \frac{{z-z_{3} / z-z_{4}}}{z_{2}-z_{3} / z_{2}-z_{4}}
$$

对于有无穷远点的情况，适当调整[[Wiki - 交比]]

唯一性：假设有两个，取一个的逆变换证复合为恒同（类似 [[Scientech - 几何学基础-射影几何]]的证明）

### Pro 3 保交比

```ad-proposition
title: Propositon 3

莫比乌斯变换保交比

```

[[Wiki - 交比]]



