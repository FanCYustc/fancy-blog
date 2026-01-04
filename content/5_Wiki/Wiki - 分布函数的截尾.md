---
aliases:
  - 限尾随机变量
info: 截尾分布函数的定义性质
date: 2023-09-28-星期四 14:53
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/随机变量
id: wiki20230928145344
banner: "![[astrowalk.gif]]"
---
---

## Def 1 上下方无界

设 X 为随机变量, 如果对任何 $M>0$, 都有 $\mathbf{P}(X>M)>0$, 则称 $X$ 上方无界; 如果对任何 $M>0$, 都有 $\mathbf{P}(X<-M)>0$, 则称 $X$ 下方无界.

无界随机变量不好分析，需要再一定界内进行截尾分析

## Def 2 限尾随机变量

设 $X$ 为随机变量, $a<b,$ 如果

$$Y=\begin{cases}a,&X<a,\\X,&a\leqslant X\leqslant b,\\b,&X>b,\end{cases}$$

则称 Y 为 X 的**限尾随机变量.**

或表示为 $Y=aI(x<a)+X I(a\leq X\leq b)+bI(x>b)$

## Pro 1

限尾随机变量分布函数为[[Wiki - 分布函数]]
$$\left.F_Y(x)=\left\{\begin{array}{ll}0,&x<a,\\F_X(x),&a\leqslant x<b,\\1,&x\geqslant b.\end{array}\right.\right.$$


