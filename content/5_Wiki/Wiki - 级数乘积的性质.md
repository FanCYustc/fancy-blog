---
aliases: 
info: cauchy乘积的收敛性
date: 2023-06-29-星期四 21:45
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629214524
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Pro1 Mertens 定理

 设 $\sum\limits_{n=1}^\infty a_n和\sum\limits_{n=1}^\infty b_n$ 都收敛, 并分别收敛于 A 和B.若其中至少有一个是绝对收敛 [[Wiki - 绝对收敛与条件收敛#Def1 绝对收敛]] 的, 则它们的 Cauchy 乘积 [[Wiki - Cauchy乘积]]收敛, 且

$$
\sum\limits_{n=1}^\infty c_n=AB
$$

   
### 证明：

先考虑 a 绝对收敛， B=0 的情形

## Pro2 Abel 定理

比上一个更进一步的：

设 $\sum a_{n}=A$ 和 $\sum b_{n}=B$ 是两个收敛级数，如果它们的 cauchy 乘积 $\sum c_{n}=C$ 收敛，那么 $C=AB$



## pro3 cauchy 定理

如果 $\sum a_{n}$ 和 $\sum b_{n}$ 都是绝对收敛[[Wiki - 绝对收敛与条件收敛]], 并分别收敛于 A 和 B，那么把 $a_{i}b_{j},i,j=1,2,\cdots,$ 按任何方式相加所得到的的级数 (记为 $\sum a_{i_k}b_{j_k}$ ) 都是绝对收敛的，且收敛于 $AB.$ 

### 证明

考察各项绝对值的部分和

$$\sum\limits_{k=1}^n|a_{i_k}b_{j_k}|\leqslant\left(\sum\limits_{n=1}^N|a_n|\right)\left(\sum\limits_{n=1}^N|b_n|\right)\leqslant\left(\sum\limits_{n=1}^\infty|a_n|\right)\left(\sum\limits_{n=1}^\infty|b_n|\right)$$

由正项级数性质[[Wiki - 收敛正项级数的性质]]，级数绝对收敛

再由 Riemann 重排定理[[Wiki - Riemann重排定理]]，就有

$$\sum_{k=1}^{\infty}a_{i_{k}}b_{j_{k}}=\operatorname*{lim}_{N\to\infty}\left(\sum_{n=1}^{N}a_{n}\right)\left(\sum_{n=1}^{N}b_{n}\right)=A B.$$

  
