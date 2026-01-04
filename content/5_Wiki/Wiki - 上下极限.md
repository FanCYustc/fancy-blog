---
aliases: 
info: 上下极限的定义
date: 2023-08-18-星期五 15:40
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230818154033
banner: "![[astrowalk.gif]]"
---
---
#数学分析/极限 

设 E 是 $\{x_{n}\}$ 所以极限点[[Wiki - 极限点]]的集合。

## Def 1 上下极限

```ad-definition
title: Definition 1


上极限 $$\sup E=\overline{\lim_{n\to\infty}}x_n,\text{或}\overline{\lim}x_n,$$
下极限同理为 $\inf E$[[Wiki - 确界]]

```


## Pro 1

```ad-proposition
title: Propositon 1

$$\begin{aligned}
&\begin{aligned}1.&\text{如果}\{x_n\}\textit{有上界},\text{设}y_n=\sup_{j>n}\{x_j\},\text{ 并记它在 }\mathbb{R}_\infty\text{ 中的极限为 }y=\lim y_n,
\text{ 那么 }y是\{x_{n}\}\text{的极限点且 }y=\overline{\lim}x_n;\end{aligned}  \\
&2.\text{ 如果}\{x_n\}\text{有下界},\text{ 设 }y_n=\inf_{j>n}\{x_j\},\text{ 并记它在 }\mathbb{R}_\infty\text{ 中的极限为 }y=\lim y_n,\text{ 那么} \text{y 是}\{x_{n}\}的极限点且y=\underline{\lim}x_{n} 
\end{aligned}$$

```

## Pro 2 大小比较

```ad-proposition
title: Propositon 2

设 $\{x_{n}\},\{y_{n}\}$ 是两个实数列 
1. $\underline{\lim}x_{n}\leqslant\overline{\operatorname*{lim}}x_{n},$ 且 $\lim x_{n} =x$ 当且仅当$\underline{\lim}x_n=\overline{\lim}x_n=x$
2. 如果 n 充分大后有 $x_{n}\leqslant y_{n}$ 则 $\underline{\lim}x_n\leqslant\underline{\lim}y_n,\quad\overline{\lim}x_n\leqslant\overline{\lim}y_n.$


```

## Pro 3 运算关系

```ad-proposition
title: Propositon 3


$\text{设}\{x_n\}\textit{和}\{y_n\}$ 是两个实数列
1. $\overline{\lim}(x_n+y_n)\leqslant\overline{\lim}x_n+\overline{\lim}y_n;$
2. $\underline{\operatorname*{lim}}x_{n}+\underline{\operatorname*{lim}}y_{n}\leqslant\underline{\operatorname*{lim}}(x_{n}+y_{n})\leqslant\overline{\operatorname*{lim}}x_{n}+\underline{\operatorname*{lim}}y_{n}$ 
3. $\textit{若}x_{n}\geqslant0,\: y_{n}\geqslant0,$ 则 $\operatorname*{\overline{lim}}(x_n\cdot y_n)\leqslant\operatorname*{\overline{lim}}x_n\cdot\operatorname*{\overline{lim}}y_n.$


```

[[Wiki - 数列极限运算]]

