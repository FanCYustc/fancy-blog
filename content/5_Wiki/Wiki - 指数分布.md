---
aliases: 
info: 指数分布
date: 2023-08-21-星期一 11:17
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230821111741
banner: "![[astrowalk.gif]]"
---
---
#概率论/概率分布 

## Def 1 指数分布

```ad-definition
title: Definition 1

```
若随机变量 $\text{X}$ 有概率密度函数[[Wiki - 概率密度函数]]

$$
f(x)\:=\:\begin{cases}\lambda\:\mathrm{e}^{-\lambda x},\:\text{当}\:x>0\\0,\quad\:\text{当}\:x\leqslant0\end{cases}
$$


则称 X 服从**指数分布**. 其中 $\lambda>0$ 为参数

变量 $\mathbf{X}$ 的分布函数[[Wiki - 分布函数]]易求得为

$$
F(x)\:=\int_{-\infty}^xf(\:t\:)\mathrm{d}t\:=\:\left\{\begin{matrix}0\:,&\text{当}\:x\leqslant0\\1-\mathrm{e}^{-\lambda x}\:,\:\text{当}\:x>0\end{matrix}\right.
$$




### 背景：

$$
\lim_{ h \to 0 } P(x\leq X\leq x+h\mid X>x) / h=\lambda
$$

可以解释为“瞬时老化率”，元件无记忆性。

由条件概率 [[Wiki - 条件概率与独立性]]，
$$\begin{gathered}
\because P(X>{x})=1-F(x) \\
P(x\leqslant X\leqslant x+h\mid X>x)/h \\
=P(x<X\leqslant x+h)/(h(1-F(x))) \\
=[(F(x+h)-F(x))/h]/(1-F(x)) \\
\rightarrow F^{'}(x)/(1-F(x))=\lambda  
\end{gathered}$$


代入 $F(0)=0$ 得 $F(x)=1-e^{-\lambda x}$

## Pro 1

```ad-proposition
title: Propositon 1


$$\begin{gathered}
\mathbf{E}X=\int_{-\infty}^{\infty}xp(x)\mathrm{d}x=\lambda\int_{0}^{\infty}x\mathrm{e}^{-\lambda x}\mathrm{d}x={\frac{1}{\lambda}}\int_{0}^{\infty}t\mathrm{e}^{-t}\mathrm{d}t, \\
\mathbf{E}X^{2}=\int_{-\infty}^{\infty}x^{2}p(x)\mathrm{d}x=\lambda\int_{0}^{\infty}x^{2}\mathrm{e}^{-\lambda x}\mathrm{d}x={\frac{1}{\lambda^{2}}}\int_{0}^{\infty}t^{2}\mathrm{e}^{-t}\mathrm{d}t 
\end{gathered}$$


由 $\int_0^\infty t^n\mathrm{e}^{-t}\mathrm{d}t=\Gamma(n+1)=n!$

得 $E(X)=\frac{1}{\lambda},Var(X)=\frac{1}{\lambda^{2}}$

```


## Pro 2 无记忆性

```ad-proposition
title: Propositon 2

$T\sim Exp(\lambda)$，
$$
P(T-t>s|T>t)=P(T>s)
$$

称为指数分布具有无记忆性

```


