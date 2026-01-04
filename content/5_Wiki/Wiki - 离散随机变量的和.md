---
aliases:
  - 分布的再生性
info: 分布函数卷积
date: 2023-10-16-星期一 09:58
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论/随机变量
  - 概率论/随机向量
  - 概率论/概率分布
id: wiki20231016095830
banner: "![[astrowalk.gif]]"
---
---

## The 1 再生性

若 $X\sim F_{X},Y\sim F_{Y}$，而 $X+Y\sim F_{X+Y}$, 称 $X+Y$ 有再生性

## Pro 1 

```ad-proposition
title: Propositon 1

```

$B(n,p)$ 关于 n 有再生性 [[Wiki - 二项分布]]，即 $B(n,p)*B(m,p)=B(n+m,p)$ [[Wiki - 卷积]]



### Proof：
$$
\begin{gather}
 P (X+Y=k)=\sum_{j=1}^{k}P(X=j)P(Y=k-j)\\
 =\sum_{j=1}^{k}C_{n}^{j}C_{m}^{k-j}p^k(1-p)^{n+m-k}=C_{n+m}^{k}p^{k}(1-p)^{n+m-k}
\end{gather}
$$

隐含 X 与 Y 独立[[Wiki - 随机变量的独立性]]

## Pro 2

```ad-proposition
title: Propositon 2


$Poison (\lambda)$ 分布有再生性


```

 [[Wiki - 泊松分布]]