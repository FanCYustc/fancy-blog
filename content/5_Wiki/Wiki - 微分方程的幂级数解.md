---
aliases: 
info: 幂级数形式的微分方程解
date: 2023-07-01-星期六 15:59
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230701155931
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

#微分方程


## 微分方程的幂级数解

$$
y''+p\left( x\right) y'+q\left( x\right) y=0
$$

p, q 在**邻域内可以展开为幂级数**[[Wiki - 幂级数]]，则 y 在邻域内有幂级数解

$$
y=\sum ^{\infty }_{n=0}a_{n}\left( x-x_{0}\right) ^{n}
$$


代入后每一级的系数都为 0，解方程[[Wiki - 幂级数的性质]]

## e.g.Airy 方程

求 Airy 方程 $y'' - xy = 0$ 的幂级数解. 

设 $y = \sum_{n=0}^{\infty} a_n x^n$ 代入原方程，得到

$$
2a_2 + \sum_{n=1}^{\infty} \left[(n+2)(n+1)a_{n+2} - a_{n-1}\right] x^n = 0
$$ 
即有 $a_2 = 0,\quad a_{n+2} = \frac{a_{n-1}}{(n+1)(n+2)},\quad (n \geq 1)$ 

在上面的递推关系式中，不难发现 $a_{3k+2} = 0$，但 $a_0$ 和 $a_1$ 可以是任意的. 不妨设 $a_0 = C_1$ 和 $a_1 = C_2$，则

$$a_{3k} = \frac{C_1}{2 \cdot 3 \cdot 5 \cdot 6 \cdot \cdots \cdot (3k-1) \cdot 3k} = \frac{1 \cdot 4 \cdot 7 \cdot \cdots \cdot (3k-2)}{(3k)!} C_1
$$

$$
a_{3k+1} = \frac{2 \cdot 5 \cdot 8 \cdot \cdots \cdot (3k-1)}{(3k+1)!} C_2$$

故方程的通解为 $y = C_1 y_1 + C_2 y_2$ 其中 

$$y_1 = 1 + \sum_{k=1}^{\infty} \frac{1 \cdot 4 \cdot 7 \cdot \cdots \cdot (3k-2)}{(3k)!} x^{3k}$$

$$y_2 = x + \sum_{k=1}^{\infty} \frac{2 \cdot 5 \cdot 8 \cdot \cdots \cdot (3k-1)}{(3k+1)!} x^{3k+1}$$



