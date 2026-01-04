---
aliases: 
info: 连续积分限含参积分的积分、求导
date: 2023-07-03-星期一 20:13
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703201329
banner: "![[astrowalk.gif]]"
---
---
#数学分析/积分 


## Pro1

设函数 $f(x,u)$ 在 $I = [a, b]× [α,β]$ 上连续 [[Wiki - 度量空间的连续映射]]且对 u 有连续的偏微商 [[Wiki - 偏导]]，**a (u）和 b (u) 在 $[α,β]$ 上可微**[[Wiki - 映射的微分]], 并且

$$

a\leqslant a(u)\leqslant b,\quad a\leqslant b(u)\leqslant b,

$$

则函数 $\psi(u)$ 在区间 $[α,β]$ 上可微, 且有

$$

\psi'(u)=\int_{a(u)}^{b(u)}\frac{\partial f(x,u)}{\partial u}\mathrm{d}x+f(b(u),u)b'(u)-f(a(u),u)a'(u).

$$

### Proof

将函数看作关于 u, a, b 的多变量函数，并应用链式法则[[Wiki - 一阶微分不变性|链式法则]]

[[Wiki - 多变量连续函数的性质]]

