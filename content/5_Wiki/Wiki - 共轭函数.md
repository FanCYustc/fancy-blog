---
aliases:
  - Fenchel不等式
info: 
date: 2025-04-03-星期四 19:18
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
  - 对偶
id: wiki20250403191856
banner: "![[astrowalk.gif]]"
---
---

## Def 1 共轭函数

```ad-definition
title: 共轭函数

设函数 $f:\mathbb{R}^n \rightarrow \mathbb{R}$，定义其共轭函数 $f^*:\mathbb{R}^n \rightarrow \mathbb{R}$ 为：

$$
f^*(y) = \sup_{x \in \text{dom}f} \left( y^\top x - f(x) \right)
$$

其中，$\text{dom}f^*$ 由所有使得上确界有限的 $y \in \mathbb{R}^n$ 构成。
```

[[Wiki - 确界]]

## Pro  共轭函数的性质

```ad-proposition
title: 共轭函数的性质

1. **凸性**：共轭函数 $f^*$ 是凸函数，无论原函数 $f$ 是否为凸。
2. **对偶性**：若 $f$ 是凸函数且闭集，则 $f^{**} = f$。
3. **线性变换**：设 $f(x) = g(Ax + b)$，其中 $g$ 是凸函数，则其共轭函数为 $f^*(y) = g^*(A^\top y) - b^\top y$。
```

相关链接：[[Wiki - 凸函数]]

含义上跟 [[Wiki - 对偶算子]]相似

$f$ 是闭的等价于 [[Wiki - 上境图]]是闭的

### Example

```ad-example
title: 仿射函数

设 $f(x) = \alpha x + \beta$，其共轭函数为：

$$
f^*(y) = \begin{cases}
\beta & \text{若 } y = \alpha \\
+\infty & \text{否则}
\end{cases}
$$

定义域 $\text{dom}f^* = \{\alpha\}$。
```

[[Wiki - 仿射函数]]

```ad-example
title: 二次函数

设 $f(x) = \frac{1}{2} x^\top Q x$，其中 $Q \in \mathbb{S}_{++}^n$。其共轭函数为：

$$
f^*(y) = \frac{1}{2} y^\top Q^{-1} y
$$

定义域 $\text{dom}f^* = \mathbb{R}^n$。
```

```ad-example
title: 负熵函数

设 $f(x) = x \log x$，定义域为 $\mathbb{R}_+$。其共轭函数为：

$$
f^*(y) = e^{y - 1}
$$

定义域 $\text{dom}f^* = \mathbb{R}$。
```

## Pro 2

$g (x)= af(x)+b$ 的共轭函数为

$$
g^{*}(y)= a f^{*}\left( \frac{y}{a} \right) -b
$$
[[Wiki - 仿射函数]]



根据共轭函数的定义和仿射变换的保凸性质，函数 $g (x) = f (Ax + b)$ （其中  $A \in \mathbb{R}^{n \times n}$ 可逆，$b \in \mathbb{R}^n$）的共轭函数为：

$$
g^*(y) = f^*(A^{-\top} y) - b^\top A^{-\top} y
$$

### Proof：

1. **共轭定义**：
   $$
   g^*(y) = \sup_{x} \left( y^\top x - f(Ax + b) \right)
   $$

2. **变量替换** $z = Ax + b$:
   $$
   x = A^{-1}(z - b) \implies y^\top x = y^\top A^{-1}(z - b)
   $$

3. **重写极值**：
   $$
   g^*(y) = \sup_{z} \left( (A^{-\top} y)^\top z - f(z) \right) - y^\top A^{-1} b
   $$

4. **利用 \( f^* \) 定义**：
   $$
   f^*(A^{-\top} y) = \sup_z \left( (A^{-\top} y)^\top z - f(z) \right)
   $$
### Pro 3 Fenchel 不等式

$$
f(x)+f^{*}(y)\geq x^{T}y, \forall x,y
$$



