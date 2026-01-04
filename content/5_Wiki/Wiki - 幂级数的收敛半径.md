---
aliases: 
info: 幂级数收敛半径及计算
date: 2023-07-01-星期六 11:16
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230701111620
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Def1 收敛半径

若幂级数[[Wiki - 幂级数]]有非零的收敛点和发散点 [[Wiki - 幂级数#Pro1]]，则存在正数 R, 使的幂级数在 $\left(-R,R\right)$ 中绝对收敛 [[Wiki - 绝对收敛与条件收敛]], 而当 $\left|x\right|>R$ 时，幂级数发散.

R 称为**收敛半径**


**在端点±R 不一定绝对收敛**

## Pro1 收敛半径计算


  
$$
\begin{gathered}

\lim_{n\to\infty}|{\frac{a_{n+1}}{a_{n}}}| =L\quad或\operatorname*{lim}_{n\to \infty}{\sqrt[n]{|a_{n}|}}=L,则\sum_{n= 0}^{\infty}a_{n}x^n 的收敛半径为\\

R={\frac{1}{L}}=\left\{\begin{array}{l l}{{0,}}&{{L=+\infty;}}\\ {{{\frac{1}{L}},}}&{{L有限}}\\ {{+\infty,}}&{{L=0.}}\end {array}\right.

\end{gathered}
$$
分别由 d'Alembert [[Wiki - 正项级数的达朗贝尔判别法]]和 Cauchy 判别法 [[Wiki - 正项级数的柯西判别法]]即证

由此可知， R 只与系数列 $\{a_n\}$ 有关
