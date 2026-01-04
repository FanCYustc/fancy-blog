---
aliases: 
info: 度量矩阵在不同基下的表示
date: 2023-07-06-星期四 23:00
update: 
tags: [wiki/year2023,wiki/month07]
id: wiki20230706230016
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

希望找到一组基，使得它的度量矩阵[[Wiki - 度量矩阵]]尽可能简单，用来表示内积[[Wiki - 内积]]

## Pro1

取另一组基

        $$\begin{array}{*{20}{c}}{\vec a = \left( {{\eta _1},{\eta _2}, \ldots {\eta _n}} \right)X{\rm{'}} = \left( {{e_1}, \ldots ,{e_n}} \right)PX{\rm{'}} = \left( {{e_1}, \ldots ,{e_n}} \right)X}\\{\vec \beta  = \left( {{\eta _1},{\eta _2}, \ldots ,{\eta _n}} \right)Y{\rm{'}} = \left( {{e_1}, \ldots ,{e_n}} \right)PY{\rm{'}} = \left( {{e_1}, \ldots ,{e_n}} \right)Y}\end{array}$$

              $$\begin{array}{*{20}{c}}{\left( {\vec a,\vec \beta } \right) = {X^T}GY = {X^{'T}}{P^T}GPY{\rm{'}} = {X^{{\rm{'}}T}}G{\rm{'}}Y{\rm{'}}}\\{G{\rm{'}} = {P^T}GP}\end{array}$$

特别地， **取基为定义内积时用的那组基，则此时的度量矩阵为单位阵**



参见矩阵相合[[Wiki - 矩阵相合]]