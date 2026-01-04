---
aliases: 
info: 几何重数与代数重数的定义与性质
date: 2023-07-04-星期二 22:37
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230704223752
banner: "![[astrowalk.gif]]"
---
---
#线性代数/线性变换 

## Lemma1

引理：

```ad-lemma
title: Lemma 1

```
方阵 A 的属于不同特征值的特征向量 [[Wiki - 特征值和特征向量]]是线性无关[[Wiki - 线性相关和线性无关]]的



### Proof

证明：归纳。 k = 1 时成立。假设 k- 1 时成立，对 k，设

                                           $${{\rm{\mu }}_1}{\vec x_1} + {{\rm{\mu }}_2}{\vec x_2} +  \ldots  + {{\rm{\mu }}_k}{\vec x_k} = 0$$

用 $\lambda_{k}$ 乘上式两端, 得

$$
\begin{aligned}\mu_1\lambda_kx_1+\mu_2\lambda_kx_2+\cdots+\mu_k\lambda_kx_k&=\mathbf{0},\end{aligned}
$$



用 A 左乘（6.11）式, 得

$$
\mu_1\lambda_1\boldsymbol{x_1}+\mu_2\lambda_2\boldsymbol{x_2}+\cdots+\mu_k\lambda_k\boldsymbol{x_k}=0,
$$


两式式减, 得

$$
u_1(\lambda_k-\lambda_1)\boldsymbol{x}_1+\cdots+\mu_{k-1}(\lambda_k-\lambda_{k-1})\boldsymbol{x}_{k-1}=\boldsymbol{0}.
$$


由归纳假设, $\boldsymbol{x}_1,\boldsymbol{x}_2,\cdots,\boldsymbol{x}_{k-1}$ 线性无关, 因此

$$
\begin{aligned}\mu_j(\lambda_k-\lambda_j)=0,\quad j=1,2,\cdots,k-1,\end{aligned}
$$

由于 $\lambda_{k}-\lambda_{j}\neq0,$ 我们得到 $\begin{aligned}\mu_1=\mu_2=\cdots=\mu_{k-1}=0\end{aligned}$ 再由 $\text{(6.11)}$ 知 $\mu_kx_k=\mathbf{0}.$ 因为 $\boldsymbol{x}_{k}\neq\boldsymbol{0},$ 所以 $\mu_{k}=0.$ 这就证明了 $\boldsymbol{x}_1,\boldsymbol{x}_2,\cdots,\boldsymbol{x}_k$ 线性无关


## Def1 代数重数

                                    $${P_A}\left( \lambda  \right) = {\rm{det}}\left( {\lambda I - A} \right) = {\left( {\lambda  - {\lambda _1}} \right)^{{n_1}}} \times {\left( {\lambda  - {\lambda _2}} \right)^{{n_2}}} \ldots {\left( {\lambda  - {\lambda _s}} \right)^{{n_s}}}$$

$n_i$ 称为特征值的代数重数


## Def2 几何重数

特征子空间[[Wiki - 特征子空间]]的维数称为几何重数，记为 $m_i$，即为

                     $$\left( {{\lambda _i}I - A} \right)x = 0$$

解空间的维数[[Wiki - 线性方程组解的结构]]

设

               $${x_{{i_1}}},{x_{{i_2}}}, \ldots {x_{i{m_i}}}$$

为特征子空间的一组基

## Cal 1

对引理的推广，

        $${x_{11}}, \ldots {x_{1{m_1}}}, \ldots ,{x_{s1}}, \ldots {x_{s{\rm{m_{s}}}}}$$

线性无关 [[Wiki - 线性相关和线性无关]]

## Pro2 

```ad-theorem
title: Theorem 1

定理：几何重数不超过代数重数

```


### 证明：

取它的一组基 $\alpha_1,\alpha_2,\cdots,\alpha_{m_t}$ , 将其扩充为 $\mathbb{C}^m$ 的一组基 [[Wiki - 基和维数#Pro 3 扩充基]]

$$

\alpha_{1},\bar{\alpha}_{2},\cdots,\alpha_{m_{s}},\beta_{1},\beta_{2},\cdots,\beta_{n-m_{i}}.

$$

$$\begin{aligned}
\text{AT}=A\left(\alpha_1,\alpha_2,\cdots,\alpha_{m_i},\beta_1,\beta_2,\cdots,\beta_{n-m_i}\right)  \\
=(\alpha_1,\alpha_2,\cdots,\alpha_{m_1},\beta_1,\beta_2,\cdots,\beta_{n-m_i})\begin{pmatrix}\lambda_i\boldsymbol{I}_{m_i}&*\\\boldsymbol{O}&A_1\end{pmatrix}=\boldsymbol{T}\begin{pmatrix}\lambda_i\boldsymbol{I}_{m_i}&*\\\boldsymbol{O}&A_1\end{pmatrix} \\
\end{aligned}
$$

其中 $A_1$ 为一个 $(n-m_i)$ 阶的方阵. 由上式得


$$
\boldsymbol{T}^{-1}\boldsymbol{A}\boldsymbol{T}=\begin{pmatrix}\lambda_i\boldsymbol{I}_{m_i}&*\\\boldsymbol{O}&A_1\end{pmatrix}.
$$

由于相似的矩阵 [[Wiki - 线性变换与对应矩阵的特征值#Cal1]] 有相同的特征多项式 [[Wiki - 特征值和特征向量的计算#Def1 特征多项式]], 我们有

$$
p_{\boldsymbol{A}}(\lambda)=(\lambda-\lambda_{i})^{m_{i}}p_{\boldsymbol{A}_{1}}(\lambda).
$$

而 $p_A(\lambda)$ 中 $(\lambda-\lambda_{i})$ 的指数等于 $n_{i},$ 所以 $m_{i}\leqslant n_{i}.$

