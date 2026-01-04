---
aliases:
info: 正项级数柯西判别法
date: 2023-03-05-星期日 22:19
update:
tags:
  - wiki/year2023
  - wiki/month03
id: wiki20230305221905
banner: "![[astrowalk.gif]]"
---
---

#数学分析/级数 

## Proposition 1

```ad-proposition
title: Propositon 1

$$
\begin{array}{l}
 设  \sum_{n=1}^{\infty} a_{n}  是正项级数.\\
 1^{\circ}  若从某项起有  \sqrt[n]{a_{n}} \leqslant q<1 , 则级数收敛;\\
 2^{\circ}  若有无穷多个  n , 使  \sqrt[n]{a_{n}} \geqslant 1 , 则级数发散;\\
 3^{\circ}  若  \lim _{n \rightarrow \infty} \sqrt[n]{a_{n}}=q ,\\ 则当  q<1  时, 级数收敛; \\当  q>1  时, 级数发散;\\ 当  q=1  时, 还无法判断级数收敛还是发散.\\
\end{array}
$$

```


称为正项级数的**柯西判别法**

**使用前提是正项级数！**[[Wiki - 收敛正项级数的性质]]

### Proof:

3 为 1, 2 特殊情况

对 1，$a_{n}<q^n$, 由比较判别法 [[Wiki - 比较判别法]]， $\sum q^n$ is limited,
So $\sum a_{n}$ is limited.

对 2，$\{a_{n}\}$ 不以 0 为极限，发散由 [[Wiki - 无穷级数的收敛性#Collary 1]]

## 本质
与几何级数比较，考察单个项的性质

缺陷-> [[Wiki - 级数的拉比判别法]]


