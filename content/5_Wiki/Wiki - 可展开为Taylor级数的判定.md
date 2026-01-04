---
aliases: 
info: 函数可展开成Taylor级数的条件
date: 2023-07-01-星期六 11:59
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230701115934
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

考虑 taylor 级数在什么条件下收敛[[Wiki - 无穷级数的收敛性]]？收敛于什么？

$$
\begin{aligned}
\sum ^{\infty }_{n=0}\dfrac{f^{\left( n\right) }\left( x_{0}\right) }{n!} \left( x-x_{0}\right) ^{n}=f\left( x \right) \Leftrightarrow \lim _{n\rightarrow \infty }R_{n}\left( x\right) =\lim _{n\rightarrow \infty }\dfrac{f^{\left( n+1\right) }\left( \xi \right) }{\left( n+1\right) !} \left( x-x_{0}\right) ^{n+1}=0\\  
\end{aligned}
$$

$$
\left| x-x_{0}\right| <R
$$


R 为收敛半径[[Wiki - 幂级数的收敛半径]]


## Cal1

特别地，当 f 在区间上的各**阶导都一致有界**时 [[Wiki - 函数项级数的Dirichlet判别法#Def1 一致有界]]，f 可以展开成 Taylor 级数 [[Wiki - Taylor级数]]
