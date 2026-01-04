---
aliases: Linear Algebra Done Right
year: 2015
category: 数学
rate: 0
info: 23暑线性代数自学
date: 2023-07-31-星期一 17:48:23
update: 2023-08-01-Tuesday 23:40:14
tags: [book/year2023, book/month07,线性代数]
id: book20230731174823
banner: "![[astrogate.gif]]"
---
---
![[UTM153-Linear Algebra Done Right2015.pdf]]


# 线性代数应该这样学

与 [[Book - 线性代数与解析几何]]不同的理解顺序重新认识线性代数：

## 1 Vector space

[[Scientech - 线性代数-线性空间]]

从向量空间的观念入手，矩阵等等都是表示向量的方式

### 先介绍复数和实数

数域 F [[Wiki - 数域]]在线性代数中一般只考虑 $\mathbb{C}和\mathbb{R}$

[[Wiki - n维数组空间|n维向量空间]]

[[Wiki - 矩阵的加法和数乘]]

### 接着介绍 [[Wiki - 一般线性空间]]的定义及性质

e.g $\mathbb{F}^S$ denotes all the functions from S to $\mathbb{F}$

$\mathbb{F}^n$ 都是特殊的 $\mathbb{F}^S$

### 子空间 [[Wiki - n维数组空间#Def2 子空间]]

[[Wiki - 子空间的和]]

[[Wiki - 子空间的直和]]

## 2 finite-dimensional vector space

有限维的好研究--基和维数的比较大小、计算才有意义

### Span and Linear dependence

[[Wiki - 生成子空间]]

[[Wiki - 线性相关和线性无关]]

[[Wiki - 多项式环]]

### Bases 

[[Wiki - 基和维数]]

### Dimension

[[Wiki - 基和维数]]

## 3 linear maps

[[Scientech - 线性代数-线性变换]]

### The vector space of linear maps

[[Wiki - 线性映射]]

### Null spaces and ranges

[[Wiki - 单射和满射]]

[[Wiki - 线性映射基本定理]]

线性映射举例：齐次线性方程组解的结构 [[Wiki - 线性方程组解的结构]]

### Matrics

在此处介绍矩阵，作为线性映射在一组基下的表示 

[[Wiki - 线性映射与矩阵]]

[[Wiki - 线性变换在一组基下的矩阵]]

一个 $m\times n$ 阶矩阵的维数是 mn---- $dim\space L (V, W)=dim\space V \times dim\space W$ ^060332

[[Wiki - 矩阵的乘法]]


### Invertibility and isomorphic space

 从映射的角度对逆矩阵的概念进行推广

[[Wiki - 可逆线性映射]]

但两个同构空间必须维数相同--其实逆的概念还是只对应逆矩阵

再讨论到映射空间不变的特殊情况 operator [[Scientech - 线性代数-线性变换]]

由于 V 和 W 的维数相等，所以**单射和满射满足其之一，就可以推出线性变换可逆**[[Wiki - 逆矩阵]] [[Wiki - 单射和满射]]


### Product and quotients of vector space

 [[Wiki - 空间的乘积]]

### Duality

在操作上，对偶与矩阵的转置[[Wiki - 矩阵的转置和共轭]]操作对应

[[Wiki - 线性算子]]

[[Wiki - 对偶空间]]

讨论原空间的映射与对偶空间映射的对应关系：

[[Wiki - 对偶算子]]

为了定义对偶映射的 range and null space，引入 annihilator

[[Wiki - 零化子]]

[[Wiki - 对偶映射的像与核]]

## 4 polynomials

介绍了多项式的一些基本知识，属于主干的分支补充

[[Scientech - 线性代数-多项式]]

## 5 eigenvalues, eigenvectors and invariant subspace

### Invariant subspace

[[Wiki - 不变子空间]]

同一特征值的特征向量张成的子空间其实就是线性变换的不变子空间

[[Wiki - 特征值和特征向量]]

引入两种变换

[[Wiki - 限制变换和商变换]]

### Eigenvector and upper-triangular matric

任何矩阵都相似于上三角矩阵，本书从变换的角度理解：

[[Wiki - 矩阵相似于上三角矩阵]]

### Eigenspace and diagonal matrics

在介绍特殊一点的相似于对角矩阵 [[Wiki - 矩阵可相似对角化的条件]] [[Wiki - 几何重数与代数重数]]

对 T 的特征值 $\lambda$，特征向量的解空间其实就是 $E(\lambda)=null(T-\lambda I)$ [[Wiki - 线性映射基本定理#Def 1 null space]]

可对角化等价于几何重数=代数重数，等价于有 n 个线性无关的特征向量，等价于 V 是 $E(\lambda_{i},T),i=1,\dots,m$ 的直和

## 6 inner product space

[[Scientech - 线性代数-欧几里得空间]]

### Inner product

[[Wiki - 内积]]

### Orthonormal bases

[[Wiki - Schmidt 正交化]]

本书在讨论时没有局限于数组空间，例如例子里有傅里叶级数

任何一个有限维内积空间都有标准正交基

[[Wiki - Riesz代表定理]]介绍了线性泛函在内积空间上的性质

###  orthogonal complements

[[Wiki - 欧式空间的子空间]]介绍正交补等概念

##  7 operators on inner product spaces

本书对内积空间的操作的讨论是在复数域及映射上的

### Self-adjoint and normal operator

[[Wiki - 伴随映射]]，对应转置+共轭矩阵的概念，对对称变换进行了推广到映射；对于线性变换的特殊情形，将**实对称推广到复自共轭**

[[Wiki - Hermite矩阵]]

接着提出了一个与正交变换相关的变换--正规变换[[Wiki - 正规变换]]



### Positive operator and isometries

正定变换是半正定矩阵对应的变换
[[Wiki - 正定变换]]

将正交变换推广到复数域，称为 isometries, 其本质定义是保持距离不变，但同样有 $TT^{*}=I$ [[Wiki - 正交变换]] [[Wiki - 正交矩阵]]
[[Scientech - 几何学基础-几何与变换]]

### Polar decomposition and singular value decomposition

[[Wiki - 矩阵的极性分解]]

对于复矩阵，有另外一种值用来表示矩阵的性质，称为奇异值 [[Wiki - 矩阵的奇异值]]

接着介绍了重要的奇异值分解定理 [[Wiki - 矩阵的奇异值分解]]

## 8 operators on complex vector spaces

介绍复空间上的各种变换

### Generalized eigenvectors and nilpotent operators

讨论多次操作同一变换的性质

[[Wiki - 线性变换的幂]]

现在考虑与特征值有关的变换 $(T-\lambda I)$，由 [[Wiki - 线性变换的幂#Pro 1 null space 递增]]知会有比之前更多的特征向量

[[Wiki - 广义特征向量]]，在广义特征向量下，变换都可以相似对角化

考虑其中一种特殊情况 $null\space T^n=V$

[[Wiki - 幂零变换]]

### Decomposition of operator

主要介绍矩阵在进行多项式运算时特征根也会保留一些性质

在这一节提到了分块对角矩阵 [[Wiki - 矩阵分块运算]]

定义了一个特征值的 multiplicity, 它的值就等于代数重数，也就是 null $(T-\lambda I)^{\dim V}$ 的维数，对应 [[Wiki - 广义特征向量#Cal 2]]

[[Wiki - 复矩阵平方根的性质]]

### Charateristic and minimal polynomials

先介绍了特征多项式 [[Wiki - 特征值和特征向量的计算]]

将特征多项式计算用到方阵和变换上

[[Wiki - 矩阵的最小多项式]]

### Jordan form

重要的若尔当标准型

[[Scientech - 线性代数-相似标准型]]

## 9  Operators on real vector space

### Complexification

如何通过映射将实空间变为复空间？[[Wiki - 复空间化]]

[[Wiki - 线性变换的复空间化]]

[[Wiki - 特征值的复空间化]]

### Operator on real inner product space

实欧式空间的线性变换，已经在别的地方讨论过了 [[Scientech - 线性代数-欧几里得空间]]

## 10 Trace and determinant

介绍矩阵的迹和行列式，传统课本的重要部分只在此书占很小篇幅

[[Wiki - 矩阵的迹]]

[[Wiki - 行列式的定义]]

