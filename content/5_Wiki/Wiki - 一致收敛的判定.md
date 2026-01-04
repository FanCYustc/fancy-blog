---
aliases: 
info: cauchy收敛准则
date: 2023-06-29-星期四 23:21
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629232119
banner: "![[astrowalk.gif]]"
---
---

#数学分析/级数 


## THE  1 Cauchy 收敛准则

```ad-theorem
title: Theorem 1


（同数列的） 函数f在I上一致收敛等价于



```
$$
\Leftrightarrow \forall \varepsilon  > 0\exists N , n > N,\forall p > 0,x \in I \to \left| {{f_{n + p}}\left( x \right) - {f_n}\left( x \right)} \right| < \varepsilon 
$$


### Proof

必要性较简单，证充分性：

固定 x，应用数项级数的 Cauchy 收敛准则 [[Wiki - 无穷级数的收敛性]]，得到是逐点收敛 [[Wiki - 函数项级数#Def2 逐点收敛]] 的。

所以对每个 x，有

$$
\left| {{f_{n + p}}\left( x \right) - {f_n}\left( x \right)} \right| < \varepsilon  \to {f_{n + p}}\left( x \right) - \varepsilon  < {f_n}\left( x \right) < {f_{n + p}}\left( x \right) + \varepsilon 
$$

取 p→∞

   $$\forall x \in I,f\left( x \right) - \varepsilon  \le {f_n}\left( x \right) \le f\left( x \right) + \varepsilon $$

## Cal1 

函数项级数 $\sum u_n(x)$ 在 I 上一致收敛[[Wiki - 一致收敛]]的**必要条件**是级数的通项构成的函数列 $\left\{u_{n}\left(x\right)\right\}$ 在 $I$ 上一致趋于零, 即 $\operatorname*{lim}_{n\to\infty}\operatorname*{sup}_{x\in I}|u_{n}(x)|=0.$

