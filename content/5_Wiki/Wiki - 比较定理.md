---
aliases:
  - 微分方程比较定理
info: 微分方程解的比较定理
date: 2025-12-30-星期二 15:10
update:
tags:
  - wiki/month12
  - 微分方程/ODE
  - wiki/year2023
id: wiki20251230151000
banner: "![[astrowalk.gif]]"
---

## 比较定理

### 第一比较定理

```ad-theorem
title: Theorem 6 (第一比较定理)
```
设函数 $f(x,y)$ 与 $F(x,y)$ 都在平面区域 $G$ 内连续且满足不等式

$$
f (x, y) < F (x, y), 	(x, y) 	\in G;
$$

又设函数 $y = \varphi(x)$ 与 $y = \Phi(x)$ 在区间 $a < x < b$ 上分别是初值问题

$$
(E _ {1}): 	\frac {d y}{d x} = f (x, y), 	y \left(x _ {0}\right) = y _ {0}
$$

与

$$ 
(E _ {2}): 	\frac {d y}{d x} = F (x, y), 	y \left(x _ {0}\right) = y _ {0}
$$ 

的解，其中 $(x_0, y_0) \in G$ 。则我们有

$$ 
\begin{array}{l} 	\varphi (x) < \Phi (x), 	\text {当} x _ {0} < x < b; \\	\varphi (x) > \Phi (x), 	\text {当} a < x < x _ {0}. 	\end{array}
$$ 

#### Proof

在区间 $a < x < b$ 上令函数 $\psi(x) := \Phi(x) - \varphi(x)$ ，则由初值条件和不等式有

$$ 
\psi \left(x _ {0}\right) = 0, 	\quad \psi^ {\prime} \left(x _ {0}\right) = F \left(x _ {0}, y _ {0}\right) - f \left(x _ {0}, y _ {0}\right) > 0.
$$ 

因此，存在 $\sigma > 0$ ，使得

$$ 
\psi (x) > 0, 	\quad \text {当} 		 x _ {0} < x < x _ {0} + \sigma .
$$ 

如果结论的第一式不成立，则至少存在一个 $x_{1} > x_{0}$ ，使得 $\psi(x_{1}) = 0$ 。取

$$ 
\beta = \min 	\left\{	 x 	\mid 	\psi (x) = 0, 		 x _ {0} < x < b 	\right\}.
$$ 

再结合上述局部正性，我们有

$$ 
\psi (\beta) = 0, 	\quad \text {且} 		 \psi (x) > 0, 	\quad \text {当} x _ {0} < x < \beta ,
$$ 

这蕴含

$$ 
\psi^ {\prime} (\beta) 	\leqslant 0.
$$ 

但是另一方面，由于 $\psi (\beta) = 0$ ，则有 $\gamma \coloneqq \Phi (\beta) = \varphi (\beta)$ ，所以再利用 $f < F$ 条件，我们有

$$ 
\psi^ {\prime} (\beta) = \Phi^ {\prime} (\beta) - \varphi^ {\prime} (\beta) = F (\beta , 	\gamma) - f (\beta , 	\gamma) > 0.
$$ 

这一矛盾证明了结论的第一式成立. 同理可证第二式也成立.

### 第二比较定理

```ad-theorem
title: Theorem 8 (第二比较定理)
```
设函数 $f(x,y)$ 与 $F(x,y)$ 都在平面区域 $G$ 内连续且满足

$$ 
f (x, y) 	\leqslant F (x, y), 	(x, y) 	\in G;
$$ 

又设函数 $y = \varphi(x)$ 与 $y = \Phi(x)$ 在区间 $a < x < b$ 上分别是初值问题 $(E_1)$ 与 $(E_2)$ 的解 $[ (x_0, y_0) \in G ]$ ，并且 $y = \varphi(x)$ 是 $(E_1)$ 的右行最小解和左行最大解（或者： $y = \Phi(x)$ 是 $(E_2)$ 的右行最大解和左行最小解），则有如下比较关系：

$$ 
\varphi (x) 	\leqslant \Phi (x), 	\quad \text {当} x _ {0} 	\leqslant x < b;
$$ 

$$ 
\varphi (x) 	\geqslant \Phi (x), 	\quad {\text {当}} a < x 	\leqslant x _ {0}.
$$ 

#### Proof

此定理容易从第一比较定理和最大最小解定理推出.[[Wiki - 最大最小解定理]]