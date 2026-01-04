---
aliases: 
info: 内积在一组基下的度量矩阵
date: 2023-07-06-星期四 22:55
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230706225544
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

## 内积在一组基下的坐标表示：

当内积 [[Wiki - 内积]]已经定义好，任取一组基 [[Wiki - 基和维数#Def 1基]]

       $$\begin{array}{*{20}{c}}{\vec a = {a_1}{e_1} + {a_2}{e_2} +  \ldots  + {a_n}{e_n};\vec \beta  = {b_1}{e_1} +  \ldots  + {b_n}{e_n}}\\{\left( {\vec a,\vec \beta } \right) = \mathop \sum \limits_{i,j = 1}^n \left( {{e_{{i_1}}}{e_j}} \right){a_i}{b_j} = \left( {{a_1}, \ldots ,{a_n}} \right)\left( {\begin{array}{*{20}{c}}{{g_{11}}}& \ldots &{{g_{1n}}}\\ \vdots & \ddots & \vdots \\{{g_{n1}}}& \ldots &{{g_{nn}}}\end{array}} \right)\left( {\begin{array}{*{20}{c}}{{b_1}}\\ \vdots \\{{b_n}}\end{array}} \right) = {X^T}GY}\end{array}$$
```ad-definition


G 称为在此基下内积的**度量矩阵**

                           $${g_{ij}} = \left( {{e_i},{e_j}} \right)$$


```

## Pro 1 度量矩阵性质

```ad-proposition
title: Propositon 1

1、由内积性质，G 是**实对称矩阵**

2、且 G 为正定矩阵，因为其满足
 $${X^T}GX \ge 0$$
其中 X 是向量在这种基下的坐标列向量

3、不同基下的度量矩阵是相合的

```

[[Wiki - 矩阵相合]]

**当 G 是单位阵时基为标准正交基 [[Wiki - Schmidt 正交化]]**

