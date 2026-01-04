---
aliases:
  - 正交
info: 欧式空间距离和夹角的定义
date: 2023-07-06-星期四 22:15
update: 
tags:
  - wiki/year2023
  - wiki/month07
id: wiki20230706221511
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

## Def1 距离
```ad-definition
title: Definition 1


定义距离

       $$d\left( {\vec a,\vec b} \right) = \left| {\vec a - \vec b} \right|$$



```

[[Wiki - 欧式空间向量的模]]

## Pro1 距离的性质

```ad-proposition
title: Propositon 1

距离满足以下性质：  
1、对称性：$d(\boldsymbol{a},\boldsymbol{b})=d(\boldsymbol{a},\boldsymbol{b})$  
2、正定性：$d(\boldsymbol{a},\boldsymbol{b})\geq 0$；当且仅当 a=b 时取 0  
3、三角不等式：$d(\boldsymbol{a,b})\leq d(\boldsymbol{a,c})+d(\boldsymbol{c,b})$

```
And it is obvious that
$|x_i^1-x^2_1|\leq d (x^1, x^2)\leq \sqrt m\space max_{1\leq i\leq m}|x^1_i-x_i^2|$.

## Def2 夹角

定义角度：

```ad-definition
title: Definition 2

对于欧氏空间 V 中两个非零向量 $\boldsymbol{a和 b}$，定义它们之间的夹角为

$$
\theta=\arccos\frac{(\boldsymbol{a},\boldsymbol{b})}{|\boldsymbol{a}||\boldsymbol{b}|}.
$$

```

[[Wiki - 内积]]


[[Wiki - 欧几里得空间]]

由 Cauchy 不等式[[Wiki - Cauchy-Schwarz不等式]]

$$
-1\leq \frac{{(\boldsymbol{a,b})}}{\mid\boldsymbol{a}\mid \cdot \mid \boldsymbol{b}\mid}\leq 1
$$

## Def 3 正交

```ad-definition
title: Definition 3

特别地, 当 $(\boldsymbol{a,b})=0$ 时, 称向量 $\boldsymbol{a和 b}$ 正交或垂直, 记作 $a\perp b.$

```




