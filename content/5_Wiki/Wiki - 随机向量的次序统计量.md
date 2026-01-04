---
aliases: 
info: 次序统计量的定义
date: 2023-10-19-星期四 14:13
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机向量
id: wiki20231019141345
banner: "![[astrowalk.gif]]"
---
---

## Def  1 次序统计量

```ad-definition
title: Definition 1

对于在同一概率空间的随机变量 $X_{1},X_{2},\dots,X_{n}$

没取一组随机变量就可以排序 $X_{(1)}\leq X_{(2)}\leq\dots\leq X_{(n)}$ 若值一样序号小的排前面。这样 $X_{(k)}$ 也是一个随机变量，表示 n 个随机变量排序后的第 k 个量的值。

```
## Example 1 最大值和最小值

[[Wiki - 随机向量的函数]]

$X_{(1)}=\min\{X_{1},\dots, X_{n}\}; X_{(n)}=\max\{X_{1},\dots X_{n}\}$

## Pro 1 次序统计量的 cdf

[[Wiki - 分布函数]]
 
```ad-proposition
title: Propositon 1

注意到 $( X_{( k) }\leqslant x) \Longleftrightarrow$ 在 $X_1, \cdots , X_n$ 中**至少有k个不大于** $x.$

以 $A_m$ 表示事件 (在 $X_1,\cdots,X_n$ 中恰有 $m$ 个不大 $x)$, 于是事件 $A_1,\cdots,A_n$ 两两不交, 并且有

$$
(X_{(k)}\leqslant x)=\bigcup\limits_{m=k}^nA_m,\quad\mathbf{P}(X_{(k)}\leqslant x)=\sum\limits_{m=k}^n\mathbf{P}(A_m).
$$

容易算得

$$
\mathbf{P}(A_m)=\begin{pmatrix}n\\m\end{pmatrix}F^m(x)(1-F(x))^{n-m},\quad m=1,2,\cdots,n.
$$

从而就有

$$
\mathbf{P}(X_{(k)}\leqslant x)=\sum_{m=k}^n\begin{pmatrix}n\\m\end{pmatrix}F^m(x)(1-F(x))^{n-m},\quad k=1,2,\cdots,n.
$$


```

## Pro 2 次序统计量的 pdf

```ad-proposition
title: Propositon 2


$$
P(x\leq X_{(k)}\leq x+\Delta x)=C_{n}^{1} \cdot C_{n-1}^{k-1} \cdot F(x)^{k-1} (1-F(x))^{n-k}(f(x)\Delta x +o(\Delta x))+o(\Delta x)
$$

So
$$
\begin{aligned}
f_{(k)}(x)=\lim_{ \Delta x \to 0 } P(x\leq X_{(k)}\leq x+\Delta x) / \Delta x \\
= \frac{n!}{(k-1)!(n-k)!} F(x)^{k-1} (1-F(x))^{n-k} f(x)
\end{aligned}
$$


```

[[Wiki - 概率密度函数]]

## Pro 3 次序统计量的联合分布

而对于 $(1,2,\cdots,n)$ 的任意一个排列 $(i_1,i_2,\cdots,i_n)$, 都有

$$
\mathbf{P}\Big(x_{i_1}-\frac{\varepsilon}{2}<X_1<x_{i_1}+\frac{\varepsilon}{2},\cdots,\:x_{i_n}-\frac{\varepsilon}{2}<X_n<x_{i_n}+\frac{\varepsilon}{2}\Big)\sim\varepsilon^np(x_1)p(x_2)\cdots p(x_n)
$$

所以
$$\begin{aligned}
&\mathbf{P}\left(x_{1}-{\frac{\varepsilon}{2}}<X_{(1)}<x_{1}+{\frac{\varepsilon}{2}},x_{2}-{\frac{\varepsilon}{2}}<X_{(2)}<x_{2}+{\frac{\varepsilon}{2}},\cdots,x_{n}-{\frac{\varepsilon}{2}}<X_{(n)}<x_{n}+{\frac{\varepsilon}{2}}\right) \\
&= n!\varepsilon^{n}p(x_{1})p(x_{2})\cdots p(x_{n})+o(\varepsilon^{n}).
\end{aligned}$$


```ad-proposition
title: Propositon 3



$\epsilon\to 0$ 后有

$$f_{(X_{(1)},X_{(2)},\cdots,X_{(n)})}(x_1,x_2,\cdots,x_n)=n!p(x_1)p(x_2)\cdots p(x_n).$$

其中$x_1<x_2<\cdots<x_n$


```

[[Wiki - 随机向量的概率密度函数]]

## Pro 4 次序统计量的边际分布

[[Wiki - 边际分布与边际密度]]

```ad-proposition
title: Propositon 4




通过对联合密度求积分，可以求得几个变量的**边际分布**



```


```ad-example

$$\begin{aligned}
&p_{(X_{(i)},X_{(j)})}(x_{i},x_{j}) \\
&=\frac{n!}{(i-1)!(j-i-1)!(n-j)!}\left(\int_{-\infty}^{x_i}p(t)\mathrm{d}t\right)^{i-1}\left(\int_{x_i}^{x_j}p(t)\mathrm{d}t\right)^{j-i-1}\left(\int_{x_j}^{\infty}p(t)\mathrm{d}t\right)^{n-j} \\
&=\frac{n!}{(i-1)!(j-i-1)!(n-j)!}F^{i-1}(x_i)\Big(F(x_j)-F(x_i)\Big)^{j-i-1}\Big(1-F(x_j)\Big)^{n-j}f(x_i)f(x_j).
\end{aligned}$$


```



