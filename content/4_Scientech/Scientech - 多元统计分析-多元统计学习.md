---
aliases: 
info: 
date: 2025-06-18-星期三 16:14
update: 
tags:
  - scientech/year2025
  - scientech/month05
  - 多元统计分析
  - 统计学习
  - 聚类分析
  - 机器学习
id: scientech20250618161443
banner: "![[astrofishing.gif]]"
---
---
## Lec 18 距离和相似系数


[staff.ustc.edu.cn/\~ynyang/vector/lecture18.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture18.pdf)

[lec18讲义](E:\课程资料\多元统计分析\2025春讲义\lecture18.pdf)

距离表示两个物体的相异程度。满足数学定义的距离比较容易定义，最常用的是欧氏距离。但在某些问题中，“距离”代表主观感知的远近程度，未必满足距离的数学定义。

相似度或相似系数代表两个物体的相似程度，在数学上没有严格定义。在实际应用中通常以欧氏内积或相关系数作为相似度，有时以距离的减函数定义。凭主观感知打分的相似度也很常见，尤其是研究对象不可测量的时候。

可以基于内积 [[Wiki - 内积]]和夹角 [[Wiki - 欧几里得空间的距离和夹角]]表示两个向量的相似性

将内积写成矩阵形式，矩阵中心标准化后就是 [[Wiki - 对应分析]]

### 距离

[[Wiki - 度量空间|距离空间]]

### 相似系数


根据具体问题背景，相似系数 $s ( \mathbf { x } , \mathbf { y } )$ 可以定义为与内积或距离有关的函数：

$$
s ( \mathbf x , \mathbf y ) = c \mathbf x ^ { \top } \mathbf y , s ( \mathbf x , \mathbf y ) = c \mathbf x ^ { \top } \mathbf y / \left. \mathbf x \right. \left. \mathbf y \right.
$$

或者距离的减函数，比如高斯核函数将距离转化为相似系数：

$$
\begin{array} { r } { s ( \mathbf x , \mathbf y ) = \exp \left( - \frac 1 2 \| \mathbf x - \mathbf y \| ^ { 2 } \right) } \end{array}
$$

[[Wiki - 欧式相似系数矩阵]]

在此基础上，下面来解决配列问题，其实就是 [[Scientech - 多元统计分析-协方差结构分析]]中方法的应用

[[Wiki - 单向配列]]

[[Wiki - 双向配列]]

## lec 19 多维标度法


[staff.ustc.edu.cn/\~ynyang/vector/lecture19.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture19.pdf)

[lec19讲义](E:\课程资料\多元统计分析\2025春讲义\lecture19.pdf)

[[Wiki - 多维标度法]]

## Lec 20 聚类分析


[staff.ustc.edu.cn/\~ynyang/vector/lecture20.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture20.pdf)

[lec20讲义](E:\课程资料\多元统计分析\2025春讲义\lecture20.pdf)

[[Scientech - 运筹学-聚类分析]]

[[Wiki - K-medoid聚类]]

[[Wiki - K-means聚类]]

[[Wiki - EM算法]]也可以进行聚类

[[Wiki - 谱聚类]]

[[Wiki - 拉普拉斯矩阵]]

## Lec 21 分类预测

[[Artpatch - 数据分析-数据挖掘#分类与预测]]

[staff.ustc.edu.cn/\~ynyang/vector/lecture21.pdf](http://staff.ustc.edu.cn/~ynyang/vector/lecture21.pdf)

[lec21讲义](E:\课程资料\多元统计分析\2025春讲义\lecture21.pdf)

