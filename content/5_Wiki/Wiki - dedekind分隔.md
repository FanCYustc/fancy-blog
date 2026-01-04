---
aliases: 
info: dedekind分隔的定义
date: 2023-08-18-星期五 17:48
update: 
tags: [wiki/year2023,wiki/month08]
id: wiki20230818174845
banner: "![[astrowalk.gif]]"
---
---
#数学分析/实数 

思想：用小于 x 的有理数部分来定义实数 x
[[Wiki - 实数的完备性等价命题]]
## Def 1 分隔


```ad-definition
title: Definition 1

称有**理数集α**是一个分割, 如果它满足：
1. $\alpha$ 非空, 并且 $\alpha\neq\mathbb{Q}$;
2. 若有理数 $a\in\alpha$, 有理数 b<a, 则 $b\in\alpha$;
3. $\alpha$ 内没有最大的有理数 

```
  
特别的，分割 $a^{*}=\{b\in \mathbb{Q}\mid b<a\}$ 称为有理分割

## Pro 1 分割的加法

$$
\alpha+\beta=\{a+b\mid a\in \alpha,b\in \beta \}
$$

分割的加法满足结合律

且分割存在逆元 [[Wiki - 数域]]

## Pro 2分割的乘法
```ad-definition
title: Definition 2


$$设\alpha,\beta\textit{是两个分割},\quad\text{它们的积}\alpha\beta\text{定义为:}\\
$$
$$
\alpha\beta=\begin{cases}-|\alpha||\beta|,\quad&\text{若 }\alpha>0,\beta\leqslant0,\\\\-|\alpha||\beta|,\quad&\text{若 }\alpha\leqslant0,\beta>0,\\\\|\alpha||\beta|,\quad&\text{若 }\alpha<0,\beta<0.\end{cases}$$


```

下述命题定义了乘法的逆元:

设分割 $\alpha>0$, 定义有理数集

$\beta=\{b\in\mathbb{Q} \mid b\leqslant0 ,or \exists c\in\alpha^{c},\:\frac{1}{b}>c\},$

则β是一个分割, $\beta>0\textit{且}\alpha\beta=1^{*}$.β称为α的逆, 记为 $\beta=\alpha^{-1}$

我们已经在分割集合 R 上定义了序、加法和乘法运算, 定义了 0 元和逆元、可以验证, 1*是乘法的单位元, R 满足有关域定义的所有公理, 它是一个有序域 [[Wiki - 有序域]]



