---
aliases:
info:
date: 2023-11-21-星期二 15:06
update:
tags:
  - wiki/year2023
  - wiki/month11
  - 微分方程/ODE
id: wiki20231121150618
banner: "![[astrowalk.gif]]"
---
---

## The 1 常系数线性微分方程组基解

```ad-theorem
title: Theorem 1

矩阵指数函数 $\Phi(x)=e^{xA}$ 是常系数齐次线性微分方程组 $\frac{d\boldsymbol{y}}{dx}=A\boldsymbol{y}$ 的一个标准基解矩阵，即 $\Phi(x)$ 是基解矩阵且 $\Phi(0)=E.$

```

[[Wiki - 齐次线性微分方程组解的结构|基解矩阵]]
### Proof


$$\frac{d\Phi(x)}{dx}=\frac d{dx}e^{xA}=A+xA^2+\frac{x^2}{2!}A^3+...+\frac{x^k-1}{(k-1)!}A^k+...\boldsymbol{d}\boldsymbol{x}$$

$$=A(E+xA+\frac{x^{2}}{2!}A^{2}+\cdots+\frac{x^{k-1}}{(k-1)!}A^{k-1}+\cdots)$$

$$
=Ae^{xA}=A\Phi(x).
$$

这说明 $\Phi(x)$ 是线性微分方程组的一个解矩阵。另一方面，由于 $\Phi(0)=E$, 所以 det $\Phi(0)=1.$ 这就证明了 $\Phi(x)$ 是基解矩阵。

## 求基解矩阵

按照 [[Wiki - 矩阵可相似对角化的条件]]分类讨论

### Part 1 可相似对角化

此时有 n 个线性无关的特征向量构成 P，s.t. $A=P diag(\lambda_{1},\dots,\lambda_{n})P^{-1}$


```ad-theorem
title: Theorem 1

设 $r_1,...,r_n$ 是矩阵 $A$ 的 $n$ 个线性无关的特征向量，则矩阵函数

$$\Phi(x)=\left(e^{\lambda_1x}r_1,\cdots,e^{\lambda_1x}r_n\right).$$
 
是方程组 $\frac{d\boldsymbol{y}}{dx}=A\boldsymbol{y}$ 的一个基解矩阵，其中 $\lambda_1,...,\lambda_n$ 是矩阵 $A$ 的与 $r_1, \cdots,r_n$ 相应的特征根，它们不必互不相同。

```

[[Wiki - 特征值和特征向量]]
#### Proof

 ```ad-lemma
title: Lemma 1

微分方程 $\frac{d\boldsymbol{y}}{dx}=A\boldsymbol{y}$ 有非零解 $y=e^{\lambda x}\boldsymbol{r}$, 当且仅当  $\lambda$ 是矩阵 $A$ 的特征根，且 r 是与λ相应的特征向量

```

用直接代入法推出： $y=e^{\lambda x}r$  是常系数齐次线性微分方程的解，当且仅当 $\lambda e^{\lambda x}r=Ae^{\lambda x}r,\quad\forall x\in(a,b)$。它等价于求齐次线性 (代数) 方程组$\left(\begin{array}{c}A-\lambda E\\\end{array}\right. )\mathbf{r}=0$ 的非零解 r，即与 $A$ 的特征根 $\lambda$ 相应的特征向量。

### Part 2 不可相似对角化

几何重数小于代数重数[[Wiki - 几何重数与代数重数]]，可以用 [[Wiki - 广义特征向量]]来补全，但是对应的 P 就没有那么简单了

```ad-theorem
title: Theorem 2

设 $\lambda_{i}$ 是矩阵 $A$ 的 $n_i$ 重特征根，则常系数齐次线性微分方程组有形如

$$y=e^{\lambda_ix}\Big(r_0+\frac x{1!}r_1+\frac{x^2}{2!}r_2+\cdots+\frac{x^{n_i-1}}{(n_i-1)!}r_{n_i-1}\Big)$$

的非零解的充要条件是： $r_{0}$ 是齐次线性代数方程组

$$
\left(A-\lambda_iE\right)^{n_i}r=0
$$

的非零解向量，其他向量逐个确定

$$\begin{cases}\mathbf{r}_1=\left(A-\lambda_i\boldsymbol{E}\right)\mathbf{r}_0,\\\mathbf{r}_2=\left(A-\lambda_i\boldsymbol{E}\right)\mathbf{r}_1,\\ 
.....................\\\mathbf{r}_{n_i-1}=\left(A-\lambda_i\boldsymbol{E}\right)\mathbf{r}_{n_i-2}&
\end{cases}$$



```

[[Wiki - 不变子空间]]

有性质见 [[Wiki - 广义特征向量#Cal 1]]

```ad-theorem
title: Theorem 2

设有 s 个不同的特征值 $\lambda_{1},\dots,\lambda_{s}$，则基解矩阵可以表示为

$$\left.\left\{\begin{array}{c}e^{\lambda_1x}P_1^{(1)}(x),\cdots,e^{\lambda_1x}P_{n_1}^{(1)}(x),\cdots;e^{\lambda_sx}P_1^{(s)}(x),\cdots,e^{\lambda_sx}P_{n_{s}}^{(s)}(x)\end{array}\right.\right\}$$

$P_{1}^{(i)}(x),\dots ,P_{n_{i}}^{(i)}(x)$ 是由 $\lambda_{i}$ 的广义特征向量空间的 $n_{i}$ 个线性无关的广义特征向量按 The 1 生成的多项式

```


## 实数化

求得的特征根就有可能是复数，所以对应的特征向量也有可能是复向量，但常系数线性微分方程组的讨论是在实数域上的。

设常系数线性微分方程组 $\frac{d\boldsymbol{y}}{dx}=A\boldsymbol{y}$ 有一个复值解$y_1=u(x)+iv(x).$ 则利用在方程两侧取共轭的方法 (并注意到**矩阵 $A$ 是实的**)

$y_2=u(x)-iv(x)$ 也是一个复值解. 从而它们的实部

$$
u(x)=\frac12(y_1+y_2)
$$

和虚部

 $$v(x)=\frac{1}{2i}(y_1-y_2)$$
都是方程的实值解，且线性无关。[[Wiki - 线性相关和线性无关]]