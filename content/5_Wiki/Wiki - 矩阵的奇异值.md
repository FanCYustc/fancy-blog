---
aliases:
  - singular value
info: 奇异值的定义
date: 2023-08-07-星期一 22:13
update: 2023-10-23-Monday 09:25:01
tags:
  - wiki/year2023
  - wiki/month08
  - 多元统计分析
id: wiki20230807221327
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 #线性代数/矩阵 

## Def 1 sigular value

T 的奇异值为 $\sqrt{ T^{*}T }$ 的特征值，代数重数为 dimE ($\lambda,\sqrt{ T^*T }$)

[[Wiki - 特征值和特征向量]]  

由于 $\sqrt{ T^{*}T }$ 是 [[Wiki - 正定变换]]，所以奇异值**一定非负**。

**来源：[[Book - 线性代数应该这样学]]**


对于一般矩阵是否有类似方阵特征值 [[Wiki - 特征值与矩阵]]的东西？[[Wiki - 特征值和特征向量]]

## Def 1 奇异值

对于一般实矩阵
定义

           $$\begin{array}{*{20}{c}}{{A_{m \times n}} = U_{m \times m}{{\left( {\begin{array}{*{20}{c}}\Lambda &0\\0&0\end{array}} \right)}_{m \times n}}{V_{n \times n}}}\\{\Lambda  = diag\left( {{\sigma _1},{\sigma _2}, \ldots {\sigma _r}} \right);{\sigma _1} \ge {\sigma _2} \ge  \ldots  \ge {\sigma _r} > 0}\end{array}$$

其中 U, V 为正交矩阵 [[Wiki - 正交矩阵]]；这些数称为 **A 的奇异值**

且有

$$\sigma _{1,}^2\sigma _2^2, \ldots \sigma _r^2$$为$AA^T$ 的特征值

### Proof：
由 [[Wiki - 正定二次型的性质]]，$AA^{T}$ 一定为正定二次型

        $$\begin{array}{*{20}{c}}{\exists {U_{m \times m}},A{A^T} = Udiag\left( {{\lambda _1}, \ldots ,{\lambda _r},0,0 \ldots ,0} \right){U^T}}\\{{\lambda _i} = \sigma _i^2 > 0}\end{array}$$

U 为正交矩阵

               
取
               $$\begin{array}{*{20}{c}}{B = {U^{ - 1}}A = {{\left( {\begin{array}{*{20}{c}}{{\beta _1}}\\ \vdots \\{{\beta _m}}\end{array}} \right)}_{m \times n}}}\\{B{B^T} = {{\left( {\left( {{\beta _i},{\beta _j}} \right)} \right)}_{m \times m}} \to \left| {{\beta _i}} \right| = {\sigma _i},i = 1,2,0 \ldots ,r;\left| {{\beta _i}} \right| = 0,i = r + 1,0 \ldots ,m}\\{{\gamma _i} = \frac{{{\beta _i}}}{{\left| {{\beta _i}} \right|}}}\end{array}$$

将γ扩充成一组单位正交基

                                            $$\begin{array}{*{20}{c}}{B = \left( {\begin{array}{*{20}{c}}{{\sigma _1}{\gamma _1}}\\{\sigma _r^ \vdots {\gamma _r}}\\ \vdots \\0\end{array}} \right) = diag\left( {{\sigma _1}, \ldots ,{\sigma _r},0,0 \ldots ,0} \right) \times \left( {\begin{array}{*{20}{c}}{{r_1}}\\ \vdots \\{{r_{r + 1}}}\\ \vdots \\{{r_n}}\end{array}} \right) = \left( {\begin{array}{*{20}{c}}\Lambda &0\\0&0\end{array}} \right){V_{n \times n}}}\\{A = UB = U\left( {\begin{array}{*{20}{c}}\Lambda &0\\0&0\end{array}} \right)V}\end{array}$$

---

## Def 1 Singular Value Decomposition (SVD)

```ad-definition
title: Definition 1

For any real matrix $A \in \mathbb{R}^{m \times n}$, there exists a factorization of the form:

$$A = U\Sigma V^T$$

where:
- $U \in \mathbb{R}^{m \times r}$ is an orthogonal matrix 
- $\Sigma \in \mathbb{R}^{r \times r}$ is a rectangular diagonal matrix with non-negative real numbers $\sigma_1 \geq \sigma_2 \geq ... \geq \sigma_r > 0$ on the diagonal
- $V \in \mathbb{R}^{r \times n}$ is an orthogonal matrix

The diagonal entries $\sigma_i$ are called the **singular values** of $A$.
```

[[Wiki - 正交矩阵]]

## Pro 1

设矩阵 $X_{n \times p}$ 的秩为 $r$，其奇异值分解为 $X = UDV^\top$，其中：
- $U = (\mathbf{u}_1, \ldots, \mathbf{u}_r)$
- $V = (\mathbf{v}_1, \ldots, \mathbf{v}_r)$ 
- $D = \text{diag}(\sqrt{\lambda_1}, \ldots, \sqrt{\lambda_r})$
- $\lambda_1 \geq \cdots \geq \lambda_r > 0$

考虑极大化问题：
$$
\max_{\|\mathbf{u}\|=\|\mathbf{v}\|=1} \mathbf{u}^\top X\mathbf{v} \quad (*)
$$

1. **第一部分极值**：
   - 当 $\mathbf{u} = \mathbf{u}_1$, $\mathbf{v} = \mathbf{v}_1$ 时 $(*)$ 达到最大
   - 最大值为最大奇异值 $\sqrt{\lambda_1}$

2. **后续极值**：
   - 对任何 $k \leq r$，限制 $\mathbf{u} \perp \mathbf{u}_1, \ldots, \mathbf{u}_{k-1}$，$\mathbf{v} \perp \mathbf{v}_1, \ldots, \mathbf{v}_{k-1}$
   - 则在 $\mathbf{u} = \mathbf{u}_k$，$\mathbf{v} = \mathbf{v}_k$ 时 $(*)$ 达到最大
   - 最大值为 $\sqrt{\lambda_k}$

### 证明 1（Cauchy-Schwarz 不等式法）

1. 对于第一部分极值：
   $$
   \mathbf{u}^\top X\mathbf{v} \leq \sqrt{\mathbf{u}^\top\mathbf{u}} \sqrt{\mathbf{v}^\top X^\top X\mathbf{v}} = \sqrt{\mathbf{v}^\top X^\top X\mathbf{v}} \leq \sqrt{\lambda_1}
   $$
   - 当 $\mathbf{v} = \mathbf{v}_1$ 时后一个等号成立
   - 当 $\mathbf{u} \propto X\mathbf{v}$ 时前一个等号成立，此时 $\mathbf{u} \propto X\mathbf{v}_1 \propto \mathbf{u}_1$

2. 第二部分证明类似。

### 证明 2（拉格朗日乘子法）

定义拉格朗日函数：
$$
f(\mathbf{u}, \mathbf{v}) = \mathbf{u}^\top X\mathbf{v} - \frac{\eta_1}{2}(\mathbf{v}^\top\mathbf{v}-1) - \frac{\eta_2}{2}(\mathbf{u}^\top\mathbf{u}-1)
$$

求偏导得：
$$
\frac{\partial f}{\partial \mathbf{u}} = X\mathbf{v} - \eta_2\mathbf{u} = 0, \quad \frac{\partial f}{\partial \mathbf{v}} = X^\top\mathbf{u} - \eta_1\mathbf{v} = 0
$$

由此可得：
$$
X\mathbf{v} = \eta_2\mathbf{u}, \quad X^\top\mathbf{u} = \eta_1\mathbf{v}
$$

因此 $\mathbf{u}, \mathbf{v}$ 是奇异值分解中的一对特征向量，且 $\mathbf{u}^\top X\mathbf{v} = \eta_1 = \eta_2$ 的最大值为 $\sqrt{\lambda_1}$，故 $\mathbf{u} = \mathbf{u}_1$, $\mathbf{v} = \mathbf{v}_1$。

### 证明 3（变量替换法）

设 $\mathbf{a} = U^\top\mathbf{u}$, $\mathbf{b} = V^\top\mathbf{v}$。因为 $UU^\top \leq I_p$，则：
$$
\|\mathbf{a}\| = \mathbf{u}^\top UU^\top\mathbf{u} \leq \mathbf{u}^\top\mathbf{u} = 1, \quad \|\mathbf{b}\| \leq 1
$$

因此：
$$
\mathbf{u}^\top A\mathbf{v} = \mathbf{u}^\top UDV^\top\mathbf{v} = \mathbf{a}^\top D\mathbf{b} = \sum_{i=1}^r a_i b_i \sqrt{\lambda_i} \leq \sqrt{\lambda_1}\sum_{i=1}^r |a_i b_i| \leq \sqrt{\lambda_1}
$$

如果增加约束 $\mathbf{u} \perp \mathbf{u}_1$, $\mathbf{v} \perp \mathbf{v}_1$，则类似地可以证明最大值变为 $\sqrt{\lambda_2}$。