---
aliases: 
info: 多变量函数的Taylor展开
date: 2023-03-27-星期一 20:40
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230327204035
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Pro1
对 $f\in C^{n+1}$, 取 $(x_{0},y_{0}),(x_{0}+h,y_{0}+k)$

有
$$
f(x_{0}+h,y_{0}+k)=\sum_{k=0}^{n} \frac{1}{k!}(D^{k}f)(x_{0},y_{0}) +o(\rho^{n})
$$
$$
其中o(\rho^{n})=\frac{{(D^{n+1}f)(x_{0}+\theta h,y_{0}+\theta k)}}{(n+1)!}
$$

$$
(D^{m}f)(x_{0},y_{0})=\sum_{i=0}^{m}C_{m}^{i}h^{i}k^{m-i}\left( \frac{{\partial^{m}f}}{\partial x^{i}\partial y^{m-i}} \right)\mid_{(x_{0},y_{0})}
$$

