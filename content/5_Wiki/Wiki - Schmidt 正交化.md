---
aliases:
  - 标准正交基
info: 施密特正交化步骤
date: 2023-07-06-星期四 23:01
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - 正交
  - 几何学/内积空间
  - 泛函分析
id: wiki20230706230141
banner: "![[astrowalk.gif]]"
---
---
#线性代数/欧式空间 

## Def1 标准正交基

在 n 维欧氏空间 [[Wiki - 欧几里得空间]] V 中一组两两正交 [[Wiki - 欧几里得空间的距离和夹角#Def 3 正交]] 的非零向量称为正交向量组.

规定单独一个非零向量也构成正交向量组。

由正交向量组构成的基 [[Wiki - 基和维数#Def 1基]] 称为正交基. 由单位向量组构成的正交基称为**标准正交基**


## The 1 Schmidt 正交化

由于度量矩阵的相合 [[Wiki - 度量矩阵]]，进行基变换可以得到标准正交基

步骤：

1、  

           $$\begin{array}{*{20}{c}}{{{\vec \beta }_1} = {{\vec a}_1}}\\{{e_1} = \frac{{{{\vec \beta }_1}}}{{\left| {{{\vec \beta }_1}} \right|}} = \frac{{{{\vec a}_1}}}{{\left| {{{\vec a}_1}} \right|}}}\end{array}$$

[[Wiki - 内积]]
           $$\begin{array}{*{20}{c}}{{{\vec \beta }_2} = {{\vec a}_2} - \left( {{{\vec a}_2},{e_1}} \right){e_1}}\\{{e_2} = \frac{{{{\vec \beta }_2}}}{{\left| {\begin{array}{*{20}{c}} \rightharpoonup \\{{\beta _2}}\end{array}} \right|}}}\end{array}$$

2、  

            $$\begin{array}{*{20}{c}}{{{\vec \beta }_k} = {{\vec a}_k} - \mathop \sum \limits_{i = 1}^{k - 1} \left( {{{\vec a}_k},{e_i}} \right){e_i}}\\{{e_k} = \frac{{\overrightarrow {{\beta _k}} }}{{\left| {\begin{array}{*{20}{c}} \rightharpoonup \\{{\beta _k}}\end{array}} \right|}}}\end{array}$$

由 $\alpha_i$ 线性无关可知 $\beta_i$ 不为 0

且可以验证

              $$\left( {{\beta _k},{e_j}} \right) = 0;j = 1,2,0 \ldots ,k - 1$$

即正交化的单位向量两两正交


由此可以得到对内积空间 [[Wiki - 内积空间]]一般化的 Schmidt 定理：

```ad-theorem


$(X,\langle \cdot\rangle)$ 是内积空间，$\{x_{n}\}_{n=1}^{\infty}$ 线性无关，则存在一列 $\{e_{n}\}_{n=1}^{\infty}$ 相互正交，满足

$$
\forall n, span\{e_{k}\}_{k=1}^{\infty}=span\{x_{k}\}_{k=1}^{\infty}
$$

```

[[Wiki - 内积空间]]

[[Wiki - 线性相关和线性无关]]

[[Wiki - 生成子空间]]

## Cal 1

由 Schmidt 正交化的过程，在欧式空间中

     $$\left( {{{\vec a}_1}, \ldots ,{{\vec a}_n}} \right) = \left( {{e_1}, \ldots ,{e_n}} \right)R$$

R 是上三角矩阵，且 R 可逆 [[Wiki - 逆矩阵]]，逆矩阵也是上三角矩阵[[Wiki - 矩阵相似于上三角矩阵]]

推论：**一个可逆方阵可以分解为一个正交矩阵和一个上三角矩阵的乘积**

