---
aliases: 
info: 幂级数的连续，积分，求导
date: 2023-07-01-星期六 11:42
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230701114211
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

[[Wiki - 幂级数]]

## Pro1 连续

```ad-proposition
title: Propositon 1


幂级数在（-R, R）内任何**闭子区间** $[-r, r]$, 0 <r< R 上一致收敛，因而, 和函数 $S(x)$ 在（-R, R）内连续

```

[[Wiki - 一致收敛]]

[[Wiki - 紧致集合]]

[[Wiki - 函数项级数一致收敛的性质#Cal 1 更一般的结论]]

## Pro2 求导

 S (x） 在 （-R, R）内可导

 $$
 S^{'}( x ) = \mathop \sum \limits_{n = 1}^{\infty} na_{n}{x^{n - 1}}
 $$

**收敛半径还是 R**[[Wiki - 幂级数的收敛半径]]

### 证明

先求 $\mathop{\sum }\limits_{{n = 1}}^{\infty }n{a}_{n}{x}^{n - 1}$ 的收敛半径. 任取 ${x}_{0} \in  \left( {-R,R}\right)$ , 存在 $r : \left| {x}_{0}\right|  < r < R$ ,级数 $\mathop{\sum }\limits_{{n = 1}}^{\infty }\left| {{a}_{n}{r}^{n}}\right|$ 收敛, 因此 $\left| {{a}_{n}{r}^{n}}\right|  < M$ 有界, 所以
$$\left| {n{a}_{n}{x}_{0}^{n - 1}}\right|  = \left| {{a}_{n}{r}^{n}}\right| \frac{n}{r}{\left| \frac{{x}_{0}}{r}\right| }^{n - 1} \leq  M\frac{n}{r}{\left| \frac{{x}_{0}}{r}\right| }^{n - 1}
$$

因为 $\sum {\left. \frac{n}{r}{\left| \frac{{x}_{0}}{r}\right| }^{n - 1}\right| }^{n - 1}$ 当 $\left| {x}_{0}\right|  < r$ 时收敛, 所以幂级数 $\mathop{\sum }\limits_{{n = 1}}^{\infty }n{a}_{n}{x}^{n - 1}$ 在 ${x}_{0}$ 绝对收敛. 也就是说 $\mathop{\sum }\limits_{{n = 1}}^{\infty }n{a}_{n}{x}^{n - 1}$ 的收敛半径 ${R}^{\prime } \geq  R$ .

如果 ${R}^{\prime } > R$ , 则存在 ${x}_{0} : {R}^{\prime } > {x}_{0} > R$ , 使得 $\mathop{\sum }\limits_{{n = 1}}^{\infty }\left| {n{a}_{n}{x}_{0}^{n - 1}}\right|$ 收敛. 因为
$$
{x}_{0}\left| {n{a}_{n}{x}_{0}^{n - 1}}\right|  = \left| {n{a}_{n}{x}_{0}^{n}}\right|  \geq  \left| {{a}_{n}{x}_{0}^{n}}\right|
$$
所以 $\sum \left| {{a}_{n}{x}_{0}^{n}}\right|$ 收敛, 这是不可能的, 所以 ${R}^{\prime } = R$ .

作为幂级数, $\mathop{\sum }\limits_{{n = 1}}^{\infty }n{a}_{n}{x}^{n - 1}$ 在 (-R, R) 的任意闭子区间上一致收敛, 所以定理的结论在任意闭子区间上成立, 所以在 (-R, R) 内每一点成立.


## Pro3 积分
  

幂级数的和函数 $S(x)$ 在（-R, R）内可积，且有

$$

\int_0^x S(t)\mathrm{d}t=\int_0^x\left(\sum\limits_{n=0}^\infty a_nt^n\right)\mathrm{d}t=\sum\limits_{n=0}^\infty\int_0^ x a_nt^n\mathrm{d}t=\sum\limits_{n=0}^\infty\frac{a_n}{n+1}x^{n+1},x\in(-R,R)

$$

并且积分后得到的幕级数的收敛半径仍为 R

## Pro4 

**之前有在端点不一定连续**[[#Pro1 连续]]

若幂级数的和函数在收敛半径端点 [[Wiki - 幂级数的收敛半径#Def1 收敛半径]] 收敛，则 S (x）在端点连续

### Proof

不妨设幂级数在右端点 $x=R$ 收敛, 只需证明 $\sum\limits_{n=0}^\infty a_nx^n$ 在 $[0, R]$ 一致收敛。因为在 $[0, R]$ 上，

$$
\sum_{n=0}^{\infty} a_{n} x^{n} = \sum_{n=0}^{\infty} a_{n} R^{n} \left( {\frac{x}{R}} \right)^{n}
$$

由 $\sum\limits_{n=0}^\infty a_nR^n$ 收敛及 $(\frac{x}{R})^{n}$ 单调减少且在 $[0, R]$ 上一致有界 [[Wiki - 函数项级数的Dirichlet判别法#Def1 一致有界]], 由 Abel 判别法 [[Wiki - 函数项级数的Abel判别法]]。故级数在 $[0, R]$ 中一致收敛[[Wiki - 一致收敛]]。另一端的证明类似



