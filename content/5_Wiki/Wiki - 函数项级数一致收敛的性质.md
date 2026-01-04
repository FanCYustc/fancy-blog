---
aliases: 
info: 一致收敛时函数项级数连续，积分，求导
date: 2023-06-30-星期五 23:06
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230630230601
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Pro1 连续

```ad-proposition
title: Propositon 1

若 $\sum u_{n}(x)$ 一致收敛，$u_{n}(x)$ 连续，则和函数 $S (x)=\sum_{n=1}^{\infty} u_{n}(x)$  也连续

```

[[Wiki - 一致收敛]]

```ad-proposition
title: Propositon 2

$f_n$一致收敛到f，若$f_n$都在$x_0$连续，则f也在$x_0$连续。如果所有$f_n$都在D上一致连续，那么f在D上一致连续。

```

[[Wiki - 度量空间上的一致连续性]]

## Cal 1 更一般的结论

```ad-theorem
title: Theorem 1

```

设连续函数列 {fn}在开集[[Wiki - 实数域的开集闭集]] D 上逐点收敛到函数 f，如果对任意的紧致子集[[Wiki - 紧致集合]] $E\subset D$, 函数列 $\{f_{n}\}$ 限制在 E 上一致收敛，则 f 是 D 上的连续函数 [[Wiki - 函数的连续性]]



也称为**内闭一致收敛**--弱化到在所有紧集子集上一致收敛。

## Pro 2 可积

若 $u_{n}(x)$ 可积，则和函数 $S(x)$ 也可积，且

           $$\int _a^bS\left( x \right)dx = \mathop \sum \limits_{n = 1}^\infty  \mathop \int \limits_a^b {u_n}\left( x \right)dx$$

### Proof

  $$\begin{array}{*{20}{c}}{\left| {S\left( x \right) - S\left( {{x_0}} \right)} \right| \le \left| {S\left( x \right) - {S_n}\left( x \right)} \right| + \left| {{S_n}\left( x \right) - {S_n}\left( {{x_0}} \right)} \right| + \left| {{S_n}\left( {{x_0}} \right) - S\left( {{x_0}} \right)} \right| < 3\varepsilon }\\{n > N,\left| {x - {x_0}} \right| < \delta }\end{array}$$

思路：利用一致收敛 [[Wiki - 一致收敛]]转化为考虑部分和函数[[Wiki - 函数项级数]]的性质，由于部分和为有限个通项相加，一些通项的性质就可以利用

证明只证通项连续的情况

                $$\begin{array}{*{20}{c}}{S\left( x \right) - \varepsilon  < {S_n}\left( x \right) < S\left( x \right) + \varepsilon \left( {n > N} \right)}\\{\smallint _a^bS\left( x \right)dx - \varepsilon \left( {b - a} \right) < \smallint _a^b{S_n}\left( x \right)dx = \mathop \sum \limits_{i = 1}^n \smallint _a^b{u_i}\left( x \right)dx < \mathop \smallint \limits_a^b S\left( x \right)dx + \varepsilon \left( {b - a} \right)}\\{\therefore \smallint _a^bS\left( x \right)dx = \mathop {\lim }\limits_{n \to \infty } \smallint _a^b{S_n}\left( x \right)dx = \mathop {\lim }\limits_{n \to \infty } \mathop \sum \limits_{k = 1}^n \mathop \smallint \limits_a^b {u_k}\left( x \right)dx}\end{array}$$


## Pro 3 导数

```ad-proposition
title: Propositon 3

```
设级数的求和项 $u_n\left(x\right)$ 在 $I=[a,b]$ **有连续导数**, 级数 $\sum\limits_{n=1}^{\infty}u_{n}(x).$ 在 I 收敛于 $S (x)$ . $\sum\limits_{n=1}^\infty u'_n\left(x\right)$ 在 I **一致收敛**[[Wiki - 一致收敛]], 则和函数 $S\left(x\right)$ 在Ⅰ可微 [[Wiki - 映射的微分]], 并有

$$
\left(\sum\limits_{n=1}^\infty u_n(x)\right)'=\sum\limits_{n=1}^\infty u_n'(x).
$$



与前两个的要求不太一样