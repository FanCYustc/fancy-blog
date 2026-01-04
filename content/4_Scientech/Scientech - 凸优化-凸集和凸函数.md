---
aliases: 
info: 25春凸优化第2章第3章
date: 2025-02-28-星期五 21:58
update: 
tags:
  - scientech/year2025
  - scientech/month02
  - 凸优化
id: scientech20250228215859
banner: "![[astrofishing.gif]]"
---
---

# CH2-凸集

[chapter 2](E:\课程资料\凸优化\课件\CO-2凸集.pdf)

前置 [[Wiki - 范数]]
## 2.1 仿射和凸集

定义凸集首先要在向量空间中[[Wiki - 一般线性空间|向量空间]]

[[Wiki - 仿射集合]]

[[Wiki - 凸集]]

[[Wiki - 相对内部和相对边界]]

[[Wiki - 锥]]

## 2.2 重要例子

凸优化考虑的都是有限维赋范空间，因此都同构与 $\mathbb{R}^{n}$

[[Wiki - 超平面]] 在 $\mathbb{R}^{n}$ 中就是 $\{a^{T}x=b\}$

[[Wiki - 半空间]]

[[Wiki - 多面体]]

 1、椭球：  

$$
{\mathcal{E}}=\left\{x\mid\left(x-x_{c}\right)^{\top}P^{-1}\left(x-x_{c}\right)\leqslant1\right\},
$$  

其中 $P=P^{\top}\succ0,$ 即 $P$ 是对称正定矩阵[[Wiki - 正定矩阵]]。椭球是凸的  

向量 $\boldsymbol{x}_{c}\in\mathbb{R}^{n}$ 为椭球的中心。

球可以看成 $P=r^{2}I$ 的椭球。当P是半正定矩阵时，P是退化的椭球也是凸的

2、范数球和范数锥：设 $\|\cdot\|$ 是 $\mathbf{R}^{n}$ 中的范数。  

(i) 范数球 $\{x\mid\|x-x_{c}\|\leqslant r\}$ 是凸的。  

(ii)关于范数 $\Vert\cdot\Vert$ 的范数锥是集合  

$$
C=\{(x,t)| \|x\|\leq t\}\subseteq\mathbb{R}^{n+1}
$$
是凸的


## 2.3 保凸运算

有一些变换可以记住，他们能保证凸集变换后还有凸性

[[Wiki - 保凸运算]]

[[Wiki - 仿射函数]]

## 2.4 广义不等式

[[Wiki - 正常锥]]

[[Wiki - 广义不等式]]

广义不等式就是有限维赋范空间的偏序关系[[Wiki - 偏序关系]]，因此也有[[Wiki - Zorn引理]]

## 2.5 分离与支撑超平面

[[Wiki - 凸集分离定理]]，在有限维赋范空间中，超平面就是$\{x| a^{T}x\leq b\}$[[Wiki - 超平面]]

[[Wiki - 超平面分离定理逆定理]]

[[Wiki - 承托超平面]]

## 2.6 对偶锥

[[Wiki - 对偶锥]]

[[Wiki - 对偶不等式定义的极小元]]

# CH3-凸函数

准备知识：

[[Scientech - 数学分析-映射的微分]]

[[Wiki - 映射的微分]]

[[Wiki - 海塞矩阵]]

## 3.1 凸函数

[[Wiki - 凸函数]]

[[Wiki - Jensen不等式]]

[[Wiki - 上境图]]

## 3.2 保凸运算

[[Wiki - 保凸运算#Pro 2 保凸函数运算]]

[[Wiki - 凸函数的仿射函数逼近]]

## 3.3 共轭函数

[[Wiki - 共轭函数]]

## 3.4 拟凸函数

[[Wiki - 拟凸函数]]

## 3.5 对数凹函数

[[Wiki - 对数凹函数]]

