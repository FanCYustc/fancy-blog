---
aliases: 
info: 24春复分析第2章
date: 2024-03-07-星期四 10:02
update: 
tags:
  - scientech/year2024
  - scientech/month03
  - 复分析/全纯函数
id: scientech20240307100200
banner: "![[astrofishing.gif]]"
---
 ---

# 第 2 章-全纯函数

## 2.1 复变函数求导

[[Wiki - 全纯函数]]

这里定义**非空连通开集**为**区域**[[Wiki - 连通区域]]

## 2.2  cauchy-Riemann 方程

下面研究函数复可微的充分必要条件

[[Wiki - Cauchy-Riemann方程]]

特别的，在整个复平面 $\mathbb{C}$ 上全纯的复变函数称为**整函数**[[Wiki - 整函数]]（注意不包括 $\mathbb{C}_{\infty}$）

[[Wiki - 共轭调和函数]]说明了拿一个实值函数可以构造出对应的完整函数全纯

Cauchy-Riemann 方程的微分理解 [[Scientech - 数学分析-映射的微分#17.2 映射的微分]]

$f(z+h)-f(z)=\Phi_{z}(h)+o(h)$, 其中


$$
J\Phi= \begin{pmatrix}
\frac{{\partial u}}{\partial x} & \frac{{\partial u}}{\partial y}  \\
\frac{{\partial v}}{\partial x} & \frac{{\partial v}}{\partial y}
\end{pmatrix}
$$


一个二维的微分若能用一维的复数导数表示，需要有在一维上的统一性，取 $h=h_{1}, h=ih_{1}, h_{1}\in \mathbb{R}$，即有 cauchy-Riemann 方程的结果（来源：[[Book - Complex Analysis]]）

全纯函数的求导也有链式法则[[Wiki - 复合函数的微分|链式法则]]


## 2.3 导数的几何意义

全纯函数的导数保角：

有微分形式，其实 jacobi 矩阵[[Wiki - 雅各比矩阵]]就是旋转变换的形式

[[Wiki - 全纯函数导数的共形]]

[[Wiki - 全纯函数逆映射定理]]

## 2.4 初等全纯函数

 [[Wiki - 复数域指数函数]]

在指数函数引入概念 [[Wiki - 单叶性域]]

[【复变函数】 1.2 初等复变函数(2) - 知乎](https://zhuanlan.zhihu.com/p/606784225)

[[Wiki - 复数域三角函数]]

[[Wiki - 复数域对数函数]]

在指数函数，会有多个 z 对应同一个 $e^{z}$，在对数函数中反过来，一个 $log z$ 对应多个值， 需要引入单值分支的概念

对幂函数 $z^\alpha=e^{\alpha Logz}$ 比较复杂，跟 $z$ 和 $\alpha$ 的取值有关系，有时候无穷多值，有时候有周期性，需分类讨论

## 2.5 分式线性变换

[[Scientech - 几何学基础-射影几何]]

[[Wiki - Riemann球面]]

处理好无穷远点，在无穷远处也可以有拓扑性质，将 $\mathbb{C}_{\infty}$ 中无穷远点与其他普通点统一

[[Wiki - 分式线性变换]]

[[Wiki - 交比]]

其中 $Aut(\mathbb{C}_{\infty})$ 为所有分式线性变换构成的群，也是 $\mathbb{C}_{\infty}$ 的自同构群 ![[Wiki - 亚纯函数#Pro 2 同构映射]]


下面谈论扩充复平面的广义圆周：指**圆和直线**

[[Wiki - 复平面圆周的对称点]]

在加上分式线性变换后有一类问题就是通过简单变换的复合将指定区域映射到指定区域