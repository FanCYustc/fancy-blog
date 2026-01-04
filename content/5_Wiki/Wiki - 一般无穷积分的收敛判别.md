---
aliases: 
info: 无穷积分的dirichlet和Abel判别法
date: 2023-07-03-星期一 19:26
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703192622
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 #数学分析/积分 

## Pro1 Dirichlet 判别法

如果 f (x）和 g (x）满足下面两个条件：

1° $F(b)=\int_a^b f(x)\text{dr}$  作为 b 的函数在（α,+∞) 有界

2° $g(x)$ 在 $(a,+\infty)$ 上单调, 且 $\lim\limits_{x\to+\infty}g(x)=0,$

那么积分了 $\int_a^{+\infty}f(x)g(x) dx$ 收敛

[[Wiki - 数项级数的Dirichlet判别法]]


## Pro2 Abel 判别法

如果 f (x）和 g (x）满足下面两个条件：

1°积分 $\int_a^{+\infty}f(x)\mathrm{d}x$ 收敛;

2°g (x）在 $[a,+\infty)$ 上单调有界。那么 $\int_a^{+\infty}f (x) g (x)\mathrm{d}x$ 收敛。

[[Wiki - 数项级数的Abel判别法]]

## Proof

需要用到第二积分中值定理[[Wiki - 第二积分中值定理]]