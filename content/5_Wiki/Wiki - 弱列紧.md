---
aliases: 
info: 
date: 2024-12-19-星期四 22:57
update: 
tags:
  - wiki/year2024
  - 泛函分析/线性算子
  - wiki/month11
id: wiki20241219225705
banner: "![[astrowalk.gif]]"
---
---

## Def 1 弱列紧

对赋范空间 [[Wiki - 赋范空间]] X，$M\subset X$ 弱列紧是指 M 中任意序列都有在 X 中弱收敛子列 [[Wiki - 弱收敛]]

同理弱自列紧的定义也模仿 [[Wiki - 列紧空间]]，即 M 中任一序列都有在 M 中弱收敛的子列。
## The 1 eberlein-smulian 定理

X 是自反空间 [[Wiki - 自反空间]]，则

1、X 中的有界集与弱列紧等价

2、X 中的闭单位球弱自列紧

### Proof

需要 [[Wiki - 弱星列紧]]

证明对于 1，只需证明：$\forall R,\overline B(0,R)$ 弱列紧。令 $Y=\overline{span\{x_n\}_{n=1}^{\infty}}$, 为闭子空间，由 Pettis 定理 [[Wiki - 自反空间#Pro 5 pettis 定理]] 知 $Y$ 自反，

同时因为 $Y$ 可分，所以 $Y^{**}=Y$ 可分，由定理 [[Wiki - banach对偶空间可分定理]]知 $Y^*$ 可分，再由 [[Wiki - 弱星列紧#The 1 可分 banach-alaoglu 定理]] 知 $Y^{**}$ 中有界集弱 $*$ 列紧，所以
$$\begin{aligned}||x_n^{**}||\leqslant R\Rightarrow&\{x_n^{**}\}_{n=1}^{\infty}\text{有子列}x_{n_k}^{**}\overset{w^*}{\operatorname*{\to}}x_0^{**}\in Y^{**}\\\Rightarrow&\forall f\in Y^*,f(x_{n_k})=x_{n_k}^{**}(f)\to x_0^{**}(f)=f(x_0)\\\Rightarrow&\forall F\in X^*,F(x_{n_k})=(F|_Y)(x_{n_k})\to(F|_Y)(x_0)=F(x_0)\\\Rightarrow&x_{n_k}\overset{w}{\operatorname*{\to}}x_0\end{aligned}$$


对于 2，首先由一有 $x_{n_{k}}\xrightarrow{w}x_{0}\in X$，

由 hahnbanach 定理 [[Wiki - hahn-banach定理的推论#Pro 1]]，$\exists f\in X^{*}, \|f\|=1, f (x_{0})=\|x_{0}\|$

所以 $\|x_{0}\|=f (x_{0})=\lim_{ k \to \infty }f (x_{n_{k}})\leq \sup_{k}\|f\|\|x_{n_{k}}\|\leq 1$，所以 $x_{0}\in B(0,1)$

