---
aliases: 
info: 一致收敛的含参反常积分连续性
date: 2023-07-03-星期一 20:23
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703202332
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 #数学分析/积分 

## Pro1 

性质： 一致收敛[[Wiki - 含参变量反常积分的一致收敛]]使含参无穷积分有含参有限积分的性质

如果函数 $f(x,u)$ 在 $I= [a,+\infty)\times [\alpha,\beta]$ 上连续[[Wiki - 度量空间的连续映射]]，且积分

$$

\varphi(u)=\int_a^{+\infty}f(x,u)\mathrm{d}x

$$

在 $[\alpha, \beta]$ 上关于 u 一致收敛[[Wiki - 含参变量反常积分的一致收敛]], 那么函数 $\varphi(u)$ 在 $[\alpha,\beta]$ 上连续

[[Wiki - 含参变量积分的连续性]]

[[Wiki - 连续含参变量积分性质]]


### proof

由于积分 $\int_{a}^{+\infty}  f(x,u)dx$  在 $\left[\alpha,\beta\right]$ 上一致收敛[[Wiki - 一致收敛]], 故对任意的正数 $\epsilon$, 总存在实数 X, 只要 $A>X,$ 就有

$$
\left|\int_{A}^{+\infty}f(x,u)\:\mathrm{d}x\right|<\frac{\varepsilon}{3}
$$

对任何 $u\in[\alpha,\beta]$ 成立. 在 $\left[\alpha,\beta\right]$ 上任取一点 $u_{0}$，因为含参变量的积分 $\int_{a}^{A} f(x,u)dx$  在 $\left[\alpha,\beta\right]$ 上连续, 所以存在正数 $\delta$, 当 $|u-u_{0}|<\delta$ 时有

$$
\left|\int_a^Af(x,u)\:\mathrm{d}x-\int_a^Af(x,u_0)\:\mathrm{d}x\right|<\frac\varepsilon3,
$$

[[Wiki - 函数项级数一致收敛的性质]]

于是, 只要 $|u-u_{0}|<\delta,$ 即可推得

$$
\begin{aligned}|\varphi(u)-\varphi(u_0)|&=\left|\int_a^{+\infty}f(x,u)\:\mathrm{d}x-\int_a^{+\infty}f(x,u_0)\:\mathrm{d}x\right|\\&\leqslant\left|\int_a^Af(x,u)\:\mathrm{d}x-\int_a^Af(x,u_0)\:\mathrm{d}x\right|+\left|\int_A^{+\infty}f(x,u)\:\mathrm{d}x\right|\\&+\left|\int_A^{+\infty}f(x,u_0)\:\mathrm{d}x\right|\\&<\frac\varepsilon3+\frac\varepsilon3+\frac\varepsilon3=\varepsilon,\end{aligned}
$$

由于 $u_{0}$ 的任意性, 故 $\varphi(u)$ 在整个区间 $\left[\alpha,\beta\right]$ 上连续

