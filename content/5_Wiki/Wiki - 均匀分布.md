---
aliases: 
info: 均匀分布
date: 2023-09-25-星期一 10:52
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/概率分布
id: wiki20230925105215
banner: "![[astrowalk.gif]]"
---
---

## Def 1 均匀分布

均匀分布的概率密度函数 [[Wiki - 概率密度函数]]为

$$
\begin{array}{cc}
p(x)= \frac{1}{b-a} ,a\leq x\leq b \\
p(x)=0,else
\end{array}
$$

概率分布函数 [[Wiki - 分布函数]]为

$$\left.F(x)=\left\{\begin{array}{ll}0,&x<a,\\\dfrac{x-a}{b-a},&a\leqslant x<b,\\1,&x\geqslant b.\end{array}\right.\right.$$

这种分布记为 $U[a,b]$


Note：通过 bernoulli 随机变量 [[Wiki - bernoulli随机变量]] 构造均匀分布：

设 $X_{n}\sim B\left( 1, \frac{1}{2} \right)$

则 $Z=\sum_{n=1}^{\infty} \frac{X_{n}}{2^{n}}\sim U(0,1)$

即证明 $P (Z\leq x)=x,\forall x\in (0,1)$


令 $Z_{k}=\sum_{n=1}^{k} \frac{X_{n}}{2^n}$，满足单调递增