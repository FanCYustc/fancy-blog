---
aliases: 
info: 卡方分布的定义性质
date: 2023-09-28-星期四 14:35
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/概率分布
id: wiki20230928143521
banner: "![[astrowalk.gif]]"
---
---

## Def 1 卡方分布

```ad-definition
title: Definition 1

卡方分布(chi-square distribution) $\kappa_{n}^{2}$ 的概率密度函数 为

$$
f_{n}(X)= \frac{1}{2^{n / 2}\Gamma(n / 2) }X^{n/2-1}e^{-x/2}
$$


```

[[Wiki - 概率密度函数]]

[[Wiki - gamma函数]]

## Pro 1

```ad-proposition
title: Propositon 1
```
若 $X\sim Exp(\lambda)$，so $2\lambda X\sim\chi_{2}^{2}$ [[Wiki - 指数分布]]

若 $X\sim\Gamma\left( \frac{n}{2}, \frac{1}{2} \right)\to X\sim\chi_{n}^{2}$ [[Wiki - gamma分布]]




## Pro 2 构造方法

```ad-proposition
title: Propositon 2

$$\begin{gathered}\text{设 }X_1,X_2,\ldots,X_n\mathrm{~iid}\sim N(0,1)\text{,则称}\\Y=\sum_{k=1}^nX_k^2\sim\chi_n^2.\end{gathered}$$

```

[[Wiki - 多元正态分布]]

[[Wiki - 正态分布]]



### Proof 

归纳证明：$Y=X_{1}^{2}, k_{1}(x)= \frac{1}{\Gamma (1 / 2) \sqrt{ 2x }}\exp\{- x /2\}$

假设 m 时成立，对 m+1，

$$
\begin{align}
k_{m+1}(x)&=\int_{0}^{x} k_{m}(u)k_{1}(x-u) \, du \\
&= \frac{1}{\Gamma\left(  \frac{m}{2} \right)2^{\frac{m}{2}} \cdot \Gamma\left( \frac{1}{2}  \right)2^{\frac{1}{2}} }\exp\left\{ -\frac{x}{2} \right\} \int _{0}^{x}u^{\frac{m-2}{2}}(x-u)^{\frac{-1}{2}} \, du 
\end{align} 
$$

[[Wiki - 连续随机变量的和]]


$$
\begin{align}
&\int _{0}^{x}u^{\frac{m-2}{2}}(x-u)^{\frac{-1}{2}} \, du =x^{\frac{m-1}{2}} \int _{0}^{1} t^{\frac{m-2}{2}} (1-t)^{-\frac{1}{2}}\, dt  \\
&=x^{\frac{m-1}{2}}B\left( \frac{m}{2}, \frac{1}{2} \right)=x^{\frac{m-1}{2}} \frac{{\Gamma\left( \frac{m}{2} \right)\Gamma\left( \frac{1}{2} \right)}}{\Gamma\left( \frac{m+1}{2} \right)}
\end{align}
$$

代入即得


## Pro 3 再生性

```ad-proposition
title: Propositon 3

$$\text{再生性: }Y_1\sim\chi_n^2,~Y_2\sim\chi_m^2\text{ 相互独立}\Longrightarrow Y_1+Y_2\sim\chi_{m+n}^2.$$



```

[[Wiki - 分布函数的再生性]]
 
## Pro 4

```ad-proposition
title: Propositon 4

$X\sim \kappa_{n}^{2}$，$E(X)=n,Var[X]=2n$

特征函数  $f(t)=(1-2it)^{n / 2}$



```

[[Wiki - 随机变量的特征函数]]


