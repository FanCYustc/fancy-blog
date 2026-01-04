---
aliases: 
info: 
date: 2025-04-08-星期二 14:29
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
  - 对偶
id: wiki20250408142959
banner: "![[astrowalk.gif]]"
---
---

tags: #optimization/duality #convex_optimization
## Def 1 Lagrange Dual Function

```ad-definition
title: Lagrange Dual Function
Consider a standard optimization problem $(\mathcal{P})$:

$$
\begin{array}{ll}
\operatorname*{minimize} & f_0(x) \\
\text{subject to} & f_i(x) \leq 0, \quad i=1,\ldots,m \\
& h_i(x) = 0, \quad i=1,\ldots,p
\end{array}
$$

with variable $x \in \mathbb{R}^n$, domain $\mathcal{D} = (\cap_{i=0}^m \mathbf{dom} f_i) \cap (\cap_{i=1}^p \mathbf{dom} h_i)$, and optimal value $p^\star$.

The **Lagrangian** $L: \mathbb{R}^n \times \mathbb{R}^m \times \mathbb{R}^p \to \mathbb{R}$ associated with this problem is:
$$
L(x, \lambda, \nu) = f_0(x) + \sum_{i=1}^m \lambda_i f_i(x) + \sum_{i=1}^p \nu_i h_i(x)
$$
where $\lambda = (\lambda_1, \ldots, \lambda_m)$ and $\nu = (\nu_1, \ldots, \nu_p)$ are the **dual variables** or **Lagrange multiplier vectors**. The domain of $L$ is $\mathbf{dom} L = \mathcal{D} \times \mathbb{R}^m \times \mathbb{R}^p$.

The **Lagrange dual function** (or just **dual function**) $g: \mathbb{R}^m \times \mathbb{R}^p \to \mathbb{R}$ is defined as the infimum of the Lagrangian over $x$:
$$
g(\lambda, \nu) = \inf_{x \in \mathcal{D}} L(x, \lambda, \nu) = \inf_{x \in \mathcal{D}} \left( f_0(x) + \sum_{i=1}^m \lambda_i f_i(x) + \sum_{i=1}^p \nu_i h_i(x) \right)
$$
If the Lagrangian $L(x, \lambda, \nu)$ is unbounded below in $x$, the dual function $g(\lambda, \nu)$ takes the value $-\infty$.
```

[[Wiki - 拉格朗日乘数法]]

## Pro 1 Properties of the Dual Function

```ad-proposition
title: Properties of the Lagrange Dual Function
1.  **Concavity**: The dual function $g(\lambda, \nu)$ is always concave, even if the original problem $(\mathcal{P})$ is not convex. This is because it is the pointwise infimum of a family of functions that are affine in $(\lambda, \nu)$.
2.  **Lower Bound**: The dual function provides a lower bound on the optimal value $p^\star$ of the original problem $(\mathcal{P})$. For any $\lambda \succeq 0$ (meaning $\lambda_i \geq 0$ for all $i=1,\ldots,m$) and any $\nu \in \mathbb{R}^p$, we have:
    $$
    g(\lambda, \nu) \leq p^\star
    $$
```

[[Wiki - 凸函数]]



```ad-note
title: Dual Feasibility
A pair $(\lambda, \nu)$ is called **dual feasible** if $\lambda \succeq 0$ and $(\lambda, \nu) \in \mathbf{dom} g$, which means $g(\lambda, \nu) > -\infty$. Every dual feasible point provides a lower bound on $p^\star$.
```


---

## Def1 拉格朗日对偶函数的定义

对于标准形式的优化问题 ：
$$
\begin{array}{ll}
\operatorname*{min} & f_0(x) \\
\text{s.t.} & f_i(x) \leq 0 \ (i=1,\ldots,m), \\
& h_i(x) = 0 \ (i=1,\ldots,p),
\end{array}
$$
其**拉格朗日函数**为 [[Wiki - 拉格朗日乘数法]] ：
$$
L(x, \lambda, \nu) = f_0(x) + \sum_{i=1}^m \lambda_i f_i(x) + \sum_{i=1}^p \nu_i h_i(x),
$$
其中 $\lambda \succeq 0$ 为不等式约束的乘子，$\nu$ 为等式约束的乘子。

**对偶函数** $g(\lambda, \nu)$ 是拉格朗日函数关于 $x$ 的下确界：
$$
g(\lambda, \nu) = \inf_{x \in \mathcal{D}} L(x, \lambda, \nu).
$$
它是一族关于 $\lambda, \nu$ 的仿射函数族的下确界 [[Wiki - 凸函数的仿射函数逼近]]。

即使原问题不是凸优化问题，对偶函数也是凹函数 [[Wiki - 凸函数]]
## Pro 1**对偶问题与弱对偶性**

对偶函数提供了原问题最优值 $p^\star$ 的下界，即对任意 $\lambda \succeq 0$ 和 $\nu$，有：
$$
g(\lambda, \nu) \leq p^\star.
$$
[[Wiki - 确界]]

对偶问题定义为最大化对偶函数：
$$
\begin{array}{ll}
\operatorname*{max} & g(\lambda, \nu) \\
\text{s.t.} & \lambda \succeq 0.
\end{array}
$$
其最优值记为 $d^\star$。根据**弱对偶性**，总有：
$$
d^\star \leq p^\star.
$$

[[Wiki - Slater定理]]
## **关键例子解析**

#### 例1：标准线性规划
原问题：
$$
\begin{array}{ll}
\operatorname*{min} & c^\top x \\
\text{s.t.} & Ax = b, \quad x \succeq 0.
\end{array}
$$
拉格朗日函数为：
$$
L(x, \lambda, \nu) = c^\top x + \nu^\top (Ax - b) - \lambda^\top x.
$$
对偶函数：
$$
g(\lambda, \nu) = \begin{cases}
-b^\top \nu & \text{若 } A^\top \nu - \lambda + c = 0, \\
-\infty & \text{否则}.
\end{cases}
$$
对偶问题转化为：
$$
\begin{array}{ll}
\operatorname*{max} & -b^\top \nu \\
\text{s.t.} & A^\top \nu + c \succeq 0.
\end{array}
$$

#### 例2：双向划分问题（非凸问题）
原问题：
$$
\begin{array}{ll}
\operatorname*{min} & x^\top W x \\
\text{s.t.} & x_i^2 = 1 \ (i=1,\ldots,n).
\end{array}
$$
拉格朗日函数为：
$$
L(x, \nu) = x^\top (W + \operatorname{diag}(\nu)) x - \mathbf{1}^\top \nu.
$$
对偶函数：
$$
g(\nu) = \begin{cases}
-\mathbf{1}^\top \nu & \text{若 } W + \operatorname{diag}(\nu) \succeq 0, \\
-\infty & \text{否则}.
\end{cases}
$$
取 $\nu = -\lambda_{\text{min}}(W) \mathbf{1}$，得到下界：
$$
p^\star \geq n \cdot \lambda_{\text{min}}(W).
$$

## Pro 3 **共轭函数与对偶函数的关系**

考虑具有线性不等式和等式约束的优化问题
$$
\begin{align}
\min &\;f\left( x\right)\quad  \\
s.t. &\;{Ax} \preccurlyeq  b \\
&Cx = d
\end{align}
$$
其对偶函数为

$$
\begin{align}
g\left( {\lambda ,\nu }\right)  &= \mathop{\inf }\limits_{x}\left( {f\left( x\right)  + {\lambda }^{\top }\left( {{Ax} - b}\right)  + {\nu }^{\top }\left( {{Cx} - d}\right) }\right)\\
& =  - {b}^{\top }\lambda  - {d}^{\top }\nu  + \mathop{\inf }\limits_{x}\left( {f\left( x\right)  + {\left( {A}^{\top }\lambda  + {C}^{\top }\nu \right) }^{\top }x}\right) \\
& =  - {b}^{\top }\lambda  - {d}^{\top }\nu  - {f}^{ * }\left( {-{A}^{\top }\lambda  - {C}^{\top }\nu }\right) 
\end{align}
$$

函数 $g$ 的定义域可以由函数 ${f}^{ * }$ 的定义域得到,
$\operatorname{dom}g = \left\{  {\left( {\lambda ,\nu }\right)  \mid   - {A}^{\top }\lambda  - {C}^{\top }\nu  \in  \operatorname{dom}{f}^{ * }}\right\}  .$

[[Wiki - 共轭函数]]