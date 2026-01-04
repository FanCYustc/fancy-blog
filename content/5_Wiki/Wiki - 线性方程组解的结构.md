---
aliases: 
info: 齐次和非齐次线性方程组的解集
date: 2023-05-19-星期五 22:44
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519224427
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性空间 

## Pro 1 

[[Wiki - 齐次线性微分方程组解的结构#Pro 1 齐次线性方程组性质]]

## 齐次方程组的解集：

$$
V = \{   {x \in {F^n} | Ax}  =  0\}  
$$

V 是**子空间**，且**维数为 n-rank (A)**[[Wiki - 线性映射基本定理]]

证明： 首先验证加法数乘封闭[[Wiki - n维数组空间]]

按线性方程组理解：将 A 化为阶梯形矩阵，有 n- rank (A）[[Wiki - 矩阵的秩]] 个自由变量 [[Wiki - 方程组解的属性]]，且原点是一组解

         $$\left( {\begin{array}{*{20}{c}}{x_{1}}\\{{x_2}}\\ \vdots \\{{x_n}}\end{array}} \right) = {t_1}{\vec \beta _1} + {t_2}{\vec \beta _2} +  \ldots  + {t_{n - r}}{\vec \beta _{n - r}}$$

由于 n-rank (A) 个自由变量 $x_{i}$ 都是独立的， $\sum t_i \vec{\beta_i} =0$ 当且仅当 t 全为 0，则 n-r 个向量线性无关[[Wiki - 线性相关和线性无关]]。

## 非齐次线性方程组的解集

```ad-theorem
title: Theorem 2

          $$W = \left\{ {\left| {\left. {r + \vec a} \right|} \right.\vec a \in V} \right\}$$

其中 r 为非齐次线性方程组 Ax=b 的一个**特解**

```


若 Ax=0 有非零解，则 Ax = b 有无穷多解  
错误。有可能无解（找不到特解）