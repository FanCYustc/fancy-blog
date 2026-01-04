---
aliases: 
info: d'ALembert 判别法
date: 2023-03-05-星期日 22:33
update: 2023-03-05-Sunday 22:41:57
tags: [wiki/year2023,wiki/month03,数学分析/级数]
id: wiki20230305223322
banner: "![[astrowalk.gif]]"
---
---

## Proposition 1

```ad-proposition
title: Propositon 1


$$
\begin{array}{l}
 设  \sum_{n=1}^{\infty} a_{n}  是正项级数.\\
 1^{\circ}  若从某项起有  \frac{a_{n+1}}{a_{n}} \leqslant q<1 , 则级数收敛;\\
 2^{\circ}  若从某项起有  \frac{a_{n+1}}{a_{n}} \geqslant 1 , 则级数发散;\\
 3^{\circ}  若前后项之比具有极限

\lim _{n \rightarrow \infty} \frac{a_{n+1}}{a_{n}}=q,\\

则当  q<1  时, 级数收玫; \\而当  q>1  时, 级数发散; \\当  q=1  时, 还不能判断.
\end{array}
$$

称为**达朗贝尔判别法**。


```


**前提是正项级数！**[[Wiki - 收敛正项级数的性质]]

### Proof

还是看 1, 2
对 1， we have $a_{n}< \frac{a_{1}}{q} q^n$ , 同 [[Wiki - 正项级数的柯西判别法]]

对 2， $\{a_{n}\}$ 发散，由 [[Wiki - 无穷级数的收敛性#Collary 1]] 知发散

## 本质

用相邻两项的性质（与 [[Wiki - 正项级数的柯西判别法]]比较）
与几何级数比较

缺陷->[[Wiki - 级数的拉比判别法]]
