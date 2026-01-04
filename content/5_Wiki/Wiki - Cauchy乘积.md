---
aliases: 
info: 无穷级数cauchy乘积
date: 2023-06-29-星期四 21:43
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629214328
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## 级数的乘积

两个级数相乘会得到一个无穷阶矩阵→如何分组求和

## Def1 Cauchy 乘积：

$${c_n} = \mathop \sum \limits_{i = 1}^n {a_i}{b_{n + 1 - i}}$$
得到一个新的无穷级数

                $$\mathop \sum \limits_{k = 1}^n {c_k} = \mathop \sum \limits_{k = 1}^n \mathop \sum \limits_{i = 1}^k {a_i}{b_{k + 1 - i}} = \mathop \sum \limits_{i = 1}^n \mathop \sum \limits_{k = i}^n {a_i}{b_{k + 1 - i}} = \mathop \sum \limits_{i = 1}^n \mathop \sum \limits_{j = 1}^{n + 1 - i} {a_i}{b_j} = \mathop \sum \limits_{i = 1}^n {a_i}{B_{n + 1 - i}}$$

[[Wiki - 级数的部分和]]