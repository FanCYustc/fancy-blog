---
aliases: 
info: Taylor 级数的例子
date: 2023-07-01-星期六 12:02
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230701120210
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 


## e.g.1

$$
f\left( x\right) =e^{x}=\sum ^{\infty }_{n=0}\dfrac{1}{n!}x^{n}\left( x\in R\right)
$$
收敛半径 [[Wiki - 幂级数的收敛半径]]为无穷，在有限区间内一致收敛 [[Wiki - 一致收敛]]

## e.g.2

$$
f\left( x\right) =\ln \left( 1+x\right) =\sum ^{\infty }_{n=0}\dfrac{\left( -1\right) ^{n}}{n+1}x^{n+1} \left( x\leq 1\right)
$$

### 特别的

特别地，令 x = 1

$$
e=\sum ^{\infty }_{n=0}\dfrac{1}{n!},\ln 2=\sum ^{\infty }_{n=0}\dfrac{\left( -1\right) ^{n}}{n+1}
$$


## e.g.3

$$
f\left( x\right) =\begin{cases}e^{-\frac{1}{x}};(x >0)\\  
0;(x\leq 0)\end{cases}
$$

可证明 f 在 0 处任意阶可导且为 0

$$
\therefore f\left( x\right) =0+R_{n}\left( x\right)
$$
f 不可以展开成 Taylor 级数[[Wiki - Taylor级数]]

**Taylor 级数是比无穷可导更严苛的要求**


