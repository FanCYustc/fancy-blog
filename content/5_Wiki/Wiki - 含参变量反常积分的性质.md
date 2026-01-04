---
aliases: 
info: 一致收敛的含参无穷积分的积分、求导
date: 2023-07-03-星期一 20:30
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230703203011
banner: "![[astrowalk.gif]]"
---
---
#数学分析/积分 #数学分析/级数 
#数学分析/多变量微积分 

## Pro1 积分

条件同 [[Wiki - 含参变量反常积分的连续性#Pro1]]，则有

$$
\int_\alpha^\beta\varphi (u)\mathrm{d}u=\int_\alpha^\beta\left[\int_a^{+\infty}f (x, u)\mathrm{d}x\right]\mathrm{d}u=\int_a^{+\infty}\left[\int_\alpha^\beta f (x, u)\mathrm{d}u\right]\mathrm{d}x.
$$

即一致收敛[[Wiki - 一致收敛]]后可看作有限积分，积分号可交换[[Wiki - 连续含参变量积分性质]]

[[Wiki - 含参变量反常积分的一致收敛]]

### 证明：

由假设可知，对任意的 $\varepsilon>0,$ 存在这样的数 $X,$ 只要 $A>X,$ 对任何$u\in[\alpha,\beta]$ 都有

$$
\left|\int_{A}^{+\infty}f(x,u)\:\mathrm{d}x\right|<\frac{\varepsilon}{\beta-\alpha}.
$$

因为 $\varphi(u)$ 在 $\left[\alpha,\beta\right]$ 上连续[[Wiki - 含参变量反常积分的连续性]], 所以可积, 且

$$
\int_{\alpha}^{\beta}\varphi(u)\:\mathrm{d}u=\int_{\alpha}^{\beta}\left[\int_{a}^{A}f(x,u)\:\mathrm{d}x\right]du+\int_{\alpha}^{\beta}\left[\int_{A}^{+\infty}f(x,u)\:\mathrm{d}x\right]\:\mathrm{d}u,
$$

[[Wiki - 无穷区间积分收敛性]]

而对含参变量的积分应有

$$
\displaystyle\int_\alpha^\beta\left[\int_a^Af(x,u)\:\mathrm{d}x\right]\:\mathrm{d}u=\int_a^A\left[\int_\alpha^\beta f(x,u)du\right]\:\mathrm{d}x,
$$

所以当 $A>X$ 时就得到

$$
\left|\int_{\alpha}^{\beta}\varphi(u)\:\mathrm{d}u-\int_{a}^{A}\left[\int_{\alpha}^{\beta}f(x,u)\:\mathrm{d}u\right]\:\mathrm{d}x\right|\leqslant\int_{\alpha}^{\beta}\left|\int_{A}^{+\infty}f(x,u)\:\mathrm{d}x\right|\:\mathrm{d}u<\varepsilon.
$$



## Pro2 求导

如果函数 f (x, u) 满足下列条件:

$$
\begin{array}{l}
1^{\circ} f (x, u) 和 \frac{\partial f (x, u)}{\partial u} 在 [a,+\infty) \times[\alpha, \beta] 上连续;\\

2^{\circ} \int_{a}^{+\infty} f (x, u) \mathrm{d} x 在 [\alpha, \beta] 上收敛;\\

3^{\circ} \int_{a}^{+\infty} \frac{\partial f (x, u)}{\partial u} \mathrm{~d} x 在 [\alpha, \beta] 上一致收敛.
\end{array}

$$
那么 $\varphi (u)=\int_{a}^{+\infty} f (x, u) \mathrm{d} x$ 在 $[\alpha, \beta]$ 上可微[[Wiki - 映射的微分]], 并有

$$
\varphi^{\prime}(u)=\int_{a}^{+\infty} \frac{\partial f (x, u)}{\partial u} \mathrm{~d} x \quad (\alpha \leqslant u \leqslant \beta)
$$

  
对应到函数项级数

**导函数一致收敛推不到原函数收敛**

### 证明：

                       $$\psi \left( u \right) = \int _a^{ + \infty }\frac{{\partial f}}{{\partial u}}dx$$

一致收敛，所以由定理积分可交换

             $$\begin{array}{*{20}{c}}{\int _a^u\psi \left( u \right)du = \int _a^{ + \infty }dx\int _a^u\frac{{\partial f}}{{\partial u}}du = \int _a^{ + \infty }f\left( {x,u} \right) - f\left( {x,a} \right)dx = \varphi   \left( u \right) - \varphi   \left( a \right)}\\{\psi \left( u \right) = \varphi {\rm{'}}\left( u \right)}\end{array}$$

对函数项级数：导函数一致收敛，且某个固定的✗原函数收敛，可推出原函数一致收敛

   $$\begin{array}{*{20}{c}}{\sum u\left( x \right) - \sum u\left( {{x_0}} \right) = \sum \left( {u\left( x \right) - u\left( {{x_0}} \right)} \right) = \sum \int _{{x_0}}^xu{\rm{'}}\left( t \right)dt}\\{ = \int _{{x_0}}^x\sum u{\rm{'}}\left( t \right)dt}\end{array}$$

当 N 充分大时

       $$\begin{array}{*{20}{c}}{\left| {\mathop \sum \limits_{n = 1}^N U\left( x \right) - A - \smallint _{{x_0}}^x\psi \left( t \right)dt} \right| < \varepsilon  + \varepsilon \left( {x - {x_0}} \right)}\\{\psi \left( t \right) = \mathop {\lim }\limits_{N - 1 + \infty } \mathop \sum \limits_{n = 1}^N u{\rm{'}}\left( t \right)}\end{array}$$


[[Wiki - 函数项级数一致收敛的性质#Pro3]]
