---
aliases: 
info: 正项级数收敛性比较判别法
date: 2023-03-05-星期日 17:17
update: 2023-03-05-Sunday 22:21:50
tags: [wiki/year2023,wiki/month03,数学分析/级数]
id: wiki20230305171720
banner: "![[astrowalk.gif]]"
---
---

## Proposition 1

$\sum a_{n}$ and $\sum b_{n}$ 均为正项级数，从某项起 $a_{n}\leq b_{n}$ ,

$\sum b_{n}收敛\to \sum a_{n}收敛$
$\sum a_{n}发散\to\sum b_{n}发散$


## 判别法极限形式

$$
\begin{array}
 设  \sum_{n=1}^{\infty} a_{n}  和  \sum_{n=1}^{\infty} b_{n}  是正项级数,  \lim _{n \rightarrow \infty} \frac{a_{n}}{b_{n}}=A . 则\\
 1^{\circ}  若  0<A<+\infty , 则  \sum_{n=1}^{\infty} a_{n}  与  \sum_{n=1}^{\infty} b_{n}  同敛散;\\
 2^{\circ}  若  A=0 , 则当  \sum_{n=1}^{\infty} b_{n}  收玫时,  \sum_{n=1}^{\infty} a_{n}  也收玫;\\
 3^{\circ}  若  A=+\infty , 则当  \sum_{n=1}^{\infty} b_{n}  发散时,  \sum_{n=1}^{\infty} a_{n}  也发散.\\
\end{array}
$$
Proof:
whatever A is, we can use proposition 1 to proof. [[Wiki - 比较判别法#Proposition 1]]

If 0<A< $+\infty$ , take $\epsilon$ as $\frac{A}{2}$, thus there is N, for n>N, we have 
$\frac{A}{2} b_{n}<a_{n}< \frac{3A}{2} b_{n}$ . As proposition 1, if $\sum b_{n}$ is limited, $\sum \frac{3A}{2}b_{n}$ is limited, so $\sum a_{n}$ is limited. If $\sum b_{n}$ is unlimited is similar.

If A=0, then 某一项开始有 $a_{n}<b_{n}$.

A= $+\infty$ 同理可得

**注意前提是正项级数**[[Wiki - 收敛正项级数的性质]]

## Example

对 $\sum \frac{1}{n}$ , we have $\frac{1}{n}>\ln\left( 1+\frac{1}{n} \right)$ , and $\sum\ln\left( 1+\frac{1}{n} \right)=\infty$
So as proposition 1, $\sum \frac{1}{n}=\infty$ .

## 应用

将一个级数与一个常见已知级数进行比较判断