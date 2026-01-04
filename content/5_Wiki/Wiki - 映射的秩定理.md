---
aliases: 
info: 映射得到秩定理
date: 2023-12-07-星期四 08:43
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数学分析/微分
id: wiki20231207084350
banner: "![[astrowalk.gif]]"
---
---

在线性映射 [[Wiki - 线性映射]]时，知道由 [[Wiki - 矩阵的秩#Pro1]]，存在可逆线性映射使得 $\mathcal{L}_{n}\circ \mathscr{A}\circ \mathcal{L}_{m}= (Id_{r},0)$


那么对于一般的映射，借助微分能否有同样的性质？

## def 1 微分的秩

```ad-definition
title: Definition 1

```
设 $f$ 是 $\mathbb{R}^n$ 一个开集 [[Wiki - 度量空间的开集闭集]] $M$ 到 $\mathbb{R}^m$ 的 $C^1$ 映射，$\forall x\in B$, 将映射微分 [[Wiki - 映射的微分]] d $f$ 在点 $x$ 的秩 rankd $f(x)$ [[Wiki - 极大线性无关组与秩]]定义为 $f$ 在点 $x$ 的秩，也记为 rank $f(x).$


## The 1 秩定理

```ad-theorem
title: Theorem 1

设 $f$ 是 $\mathbb{R}^m$ 的开集 $M$ 到 $\mathbb{R}^n$ 的 $C^1$ 映射，$f$ 在 M 上的秩为r. 设 $x^0\in M$, $y^0=f(x^0)$, 则存在 $x^0$ 的邻域 $U_1,y^0$ 的邻域 $V_1$, 以及 $C^1$ 微分同胚 $\varphi:\quad U_1\to U\subset\mathbb{R}^m$, $C^1$ **微分同胚** $\psi:V_1\to V\subset\mathbb{R}^n$, 使得复合映射 $\psi\circ f\circ\varphi^{-1}:U\to V$ 满足

$$
\psi\circ f\circ\varphi^{-1}=(Id_r,\:0).
$$


```

### Proof

先改变原坐标顺序，由秩为 r 可知可以使 jacobi 矩阵的前 r 行前 r 列构成的子方阵可逆 [[Wiki - 极大线性无关组与秩]]

打洞：

定义映射 $\varphi:M\to\mathbb{R}^m,\quad(u_1,\cdots,u_m)=\varphi(x_1,\cdots,x_m)$ 为

$$
\begin{cases}u_i=f_i(x_1,\cdots,x_m),&i=1,2,\cdots,r,\\[2ex]u_k=x_k,&k=r+1,\cdots,m.\end{cases}
$$

则 d $\varphi$ 在 $x^{0}$ 点可逆，这是因为映射 $\varphi$ 的 Jacobi 矩阵

$$J\varphi=\begin{pmatrix}\left(\frac{\partial f_i}{\partial x_j}\right)&\left(\frac{\partial f_i}{\partial x_k}\right)\\0&I_{m-r}\end{pmatrix}$$

在 $x^{0}$ 可逆。所以有

$$J(f\circ\varphi^{-1})=\begin{pmatrix}I_r&0\\\left(\frac{\partial(f_k\circ\varphi^{-1})}{\partial u_j}\right)&\left(\frac{\partial(f_k\circ\varphi^{-1})}{\partial u_l}\right)\end{pmatrix}.$$


[[Wiki - 逆映射定理]]由秩还为 r，所以

$$\begin{aligned}\frac{\partial(f_k\circ\varphi^{-1})}{\partial u_l}&=0,r+1\leqslant k\leqslant n,r+1\leqslant l\leqslant m,\\\end{aligned}$$

这说明 $f_{k}\circ \varphi^{-1}(u),k=r+1,\dots,n$ 只与 $u_{1},\dots,u_{r}$ 有关

下面构造另一边的映射，通过适当平移，可以设 $x^{0}=0\in \mathbb{R}^{m}, y^{0}=f (x^{0})=0 \in \mathbb{R}^{n}$

定义映射 $\psi: B_{r}(0)\to \mathbb{R}^{n}$

$$\begin{cases}v_i=y_i,&i=1,2,\cdots,r,\\v_k=y_k-(f_k\circ\varphi^{-1})(y_1,\cdots,y_r),&k=r+1,\cdots,n.\end{cases}$$

$$J\psi=\begin{pmatrix}I_r&0\\-\left(\frac{\partial(f_k\circ\varphi^{-1})}{\partial y_i}\right)&I_{n-r}\end{pmatrix}$$
可逆

他们的 jacobi 矩阵相乘得到 $\psi\circ f \circ \varphi^{-1}$ 的 jacobi 矩阵就是 
$$\begin{pmatrix}
I_{r} & 0 \\
0 & 0
\end{pmatrix}$$

