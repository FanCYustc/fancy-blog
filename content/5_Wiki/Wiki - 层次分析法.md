---
aliases:
  - AHP法
info: 
date: 2023-12-14-星期四 20:44
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 运筹学/决策论
id: wiki20231214204424
banner: "![[astrowalk.gif]]"
---
---

现在考虑有 n 个指标或措施 $A_{1},A_{2},\dots, A_{n}$；设它们的权重为 $w_{1},w_{2},\dots,w_{n}$ ；$w_{i}\neq 0,i=1,\dots,n$。若将它们两两的重量比较，其比值可以构成一个 $n\times n$ 矩阵 $\boldsymbol{A}$，称为判断矩阵。

$$
\boldsymbol{A}=\begin{bmatrix}\boldsymbol{w}_1/\boldsymbol{w}_1&\boldsymbol{w}_1/\boldsymbol{w}_2&\cdots&\boldsymbol{w}_1/\boldsymbol{w}_n\\\boldsymbol{w}_2/\boldsymbol{w}_1&\boldsymbol{w}_2/\boldsymbol{w}_2&\cdots&\boldsymbol{w}_2/\boldsymbol{w}_n\\\vdots&\vdots&\ddots&\vdots\\w_n/\boldsymbol{w}_1&\boldsymbol{w}_n/\boldsymbol{w}_2&\cdots&\boldsymbol{w}_n/\boldsymbol{w}_n\end{bmatrix}
$$

如果用权重向量 $\boldsymbol{W}=(w_{1},\dots,w_{n})^{T}$ 右乘 $\boldsymbol{A}$，得到

$$A\boldsymbol{W}=\begin{bmatrix}\boldsymbol{w}_1/\boldsymbol{w}_1&\boldsymbol{w}_1/\boldsymbol{w}_2&\cdots&\boldsymbol{w}_1/\boldsymbol{w}_n\\\boldsymbol{w}_2/\boldsymbol{w}_1&\boldsymbol{w}_2/\boldsymbol{w}_2&\cdots&\boldsymbol{w}_2/\boldsymbol{w}_n\\\vdots&\vdots&\ddots&\vdots\\w_n/w_1&w_n/\boldsymbol{w}_2&\cdots&w_n/w_n\end{bmatrix}\cdot\begin{bmatrix}\boldsymbol{w}_1\\\boldsymbol{w}_2\\\vdots\\w_n\end{bmatrix}=n\begin{bmatrix}\boldsymbol{w}_1\\\boldsymbol{w}_2\\\vdots\\\boldsymbol{w}_n\end{bmatrix}=n\boldsymbol{W}$$

即 $(\boldsymbol{A}-n\boldsymbol{I})\boldsymbol{W}=0$

这说明 n 是矩阵 A 的特征值，且 W 是 n 对应的特征向量

因为 $rank(A)=1$，且由相似矩阵的性质 $trace(A)=\sum_{i=1}^{n}a_{ii}=n=\sum_{i=1}^n\lambda_{i}$

可以得知，n 是矩阵 A 的唯一非零的最大特征值 $\lambda_{max}=n$ ，其余特征值为 0，n 的代数重数为 1。

但是遇到的问题是，权重向量即特征向量是我们待求的量，在确定判断矩阵时无法准确的得到 A，否则由 A 就可以反解出各个权重的值 $w_{i}$。所以一般在确定判断矩阵时，都是通过对各因素分别两两比较重要性，通过主观判断或 Delphi 法等计算得出因素 i 和 j 的权重比 $a_{ij}$，得到近似的判断矩阵 $\overline{A}$。此时 $\overline{A}$ 可以保证

$$
\begin{array}{l}
(1)a_{ii}=1;i=1,\dots,n \\
(2)a_{ij}=\frac{1}{a_{ji}};i,j=1,\dots,n
\end{array}
$$

但不能保证 $a_{kj}= a_{ij} / a_{ik};i,j,k=1,\dots,n$，从而使矩阵完全一致。根据前人的研究，此时一般有 $\lambda_{max}>n$。这时由迹与特征值的关系

$$
\lambda_{max}-n= -\sum_{i\neq max}\lambda_{i}
$$

将除最大特征值外的特征值的平均值做为度量矩阵一致性的指标，记为

$$
CI= \frac{{\sum_{i\neq max}\lambda_{i}}}{n-1}= \frac{{\lambda_{max}-n}}{n-1}
$$

但指标越多，矩阵的一致性越难保证，需要再引入与 n 有关的修正系数 RI，取 $CR= \frac{CI}{RI}$ 为更合适的度量一致性的指标。部分 RI 如下表所示：


一般只要 $CR\leq 0.1$，认为矩阵的一致性可以接受。

## 标度

前面说过，一般情况下是由人们主观或者通过方法计算比较两个指标之间的相对权重，来反映两个指标谁比谁重要，为了使最后的判断矩阵更统一，同时使人能够准确地区分两个指标之间的相对重要性。为此运筹学家给出了一套一般的标度方法来比较指标 i 和指标 j 的相对权重 $a_{ij}$（以 i 比 j 重要为例）：


| 标度 $a_{ij}$ | 意义                    |
| ------------- | ----------------------- |
| 1             | i 因素与 j 因素同样重要 |
|3          | i 因素比 j 因素略重要                    |
|5          | i 因素比 j 因素较重要                     |
|7          | i 因素比因素非常重要|
|9          | i 因素比 j 因素绝对重要                    |
|2, 4, 6, 8    | 重要程度介于两判断之间的中间状态              |
|倒数        | j 相对于 i 的重要程度标度为 $a_{ji}= 1/a_{ij}$ |


### 计算方法

如果对每个层次的判断矩阵，可以求出它的特征向量即权重向量，设 A-C 层判断矩阵对应的权重向量为 $w_{1},\dots,w_{k}$；$C_{i}-P$ 层判断矩阵对应的权重向量分别为 $w_{i1},\dots, w_{in}$，其中若两层之间的指标无关则权重记为 0。则对措施 $P_{j}$，其组合权重为
$$
v_{j}=\sum_{i=1}^{k} w_{i}w_{ij}
$$

但对于不完全一致的判断矩阵，其最大特征值和对应特征向量的计算极为复杂，由于决策权重不需要特别高的精度，所以可以用方根法近似得到判断矩阵的最大特征值和权重向量。具体计算步骤为：



(1) 计算判断矩阵每行所有元素的几何平均值
$$
\bar{w}_i=\sqrt[n]{\prod_{j=1}^na_{ij}}\quad i=1,2,\cdots,n
$$
得到 $\bar{w}=(\bar{w}_1,\bar{w}_2,\cdots,\bar{w}_n)^T$。

(2) 将 $\bar{\omega}_i$ 归一化，即计算
$$
w_i=\frac{\bar{w_i}}{\sum_{i=1}^n\bar{w_i}}\quad i=1,2,\cdotp\cdotp\cdotp,n
$$

得到 $\bar{w}=(w_1,w_2,\cdots,w_n)^T$, 即为所求特征向量的近似值，这也是各因素的相对权重。

(3) 计算判断矩阵的最大特征值 $\lambda_\mathrm{max}$
$$
\lambda_{\max}=\sum_{i\operatorname{=}1}^n\frac{(A\bar{\omega})_i}{n\bar{\omega}_i}
$$
其中 $(A\bar{\omega})_i$ 为向量 $A_{\omega}$ 的第 $i$ 个元素。