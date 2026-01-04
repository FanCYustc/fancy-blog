---
aliases: 
info: 不同基线性表示，坐标变换公式
date: 2023-05-19-星期五 22:05
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230519220536
banner: "![[astrowalk.gif]]"
---
---

#线性代数/线性空间 

## Pro1 过渡矩阵

设两组基 [[Wiki - 基和维数#Def 1基]] ｛α｝ 和｛β｝

$$\begin{array}{*{20}{c}}{\left\{ {\begin{array}{*{20}{c}}{{\beta _1} = {t_{11}}{a_1} + {t_{21}}{a_2} +  \ldots  + {t_{n1}}{a_n}}\\ \vdots \\{{\beta _n} = {t_{1n}}{a_1} +  \ldots  + {t_{nn}}{a_n}}\end{array}} \right.}\\\end{array}$$

$$
{\therefore \left( {{\beta _1},{\beta _2}, \ldots {\beta _n}} \right) = \left( {{a_1},{a_2}, \ldots {a_n}} \right){T_{n \times n}}}\\
$$
其中
$$
{T = {{\left( {{t_{ij}}} \right)}_{n \times n}}}
$$

T 为{α}到{β}的**过渡矩阵**，与{β}到{α}的相反（**T 可逆**）[[Wiki - 逆矩阵]]

[[Wiki - 极大线性无关组与秩#Pro 3]]

## Pro2 坐标变换
一点在原来基下的坐标为 X

      $$\begin{array}{*{20}{c}}{\vec{p} = \left( {{a_1},{a_2}, \ldots {a_n}} \right)X = \left( {{\beta _1},{\beta _2}, \ldots {\beta _n}} \right)TY}\\{ \to Y = {T^{ - 1}}X}\end{array}$$

称为**在新基下坐标的坐标变换**
