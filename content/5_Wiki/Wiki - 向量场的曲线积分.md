---
aliases: 
info: 第二型曲线积分
date: 2023-06-25-星期日 22:30
update: 
tags:
  - wiki/year2023
  - wiki/month06
id: wiki20230625223036
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

## 第二型曲线积分
	 $$\sum \vec v\left( {{P_i}} \right)\cdot\Delta {\vec r_i} = \sum P\left( {{P_i}} \right)\Delta {x_i} + Q\left( {{P_i}} \right)\Delta {y_i} + R\left( {{P_i}} \right)\Delta {z_i}$$

极限存在且有限，称为向量场沿 L 的积分，也称**第二型曲线积分**

## 向量场曲线积分的计算

设向量场 U= $P(x,y,z)\textbf{i}+Q(x,y,z)\textbf{j}+R(x,y,z)\textbf{k}$ 在区域 $D$ 内连续曲线 $L_{AB}\subset D$ 具有参数方程表示

$$
L_{A B}:\textbf{r}=\textbf{r}(t)=x(t)\textbf{i}+y(t)\textbf{j}+z(t)\textbf{k},\quad\alpha\leqslant t\leqslant\beta,
$$

且有连续的导函数, 参数 $t$ 是正向参数[[Wiki - 曲线的定向]], 则向量场在 $L_{AB}$ 上可积, 且可化为下列定积分

$$
\begin{aligned}\int_{L_{AB}}v\cdot\mathrm{d}r&=\int_{\alpha}^{\beta}v(r(t))\cdot r'(t)\mathrm{d}t\\ &=\int_{\alpha}^{\beta}\left(Px'(t)+Qy'(t)+Rz'(t)\right)\mathrm{d}t.\end{aligned}
$$

化为单变量积分[[Wiki - 数量场曲线积分计算]]

**其实 Px' +Qy'+ Rz' 就是一种微分形式**

## 弧长参数的形式

由于

$$\begin{array} \\
 {\frac{{d\vec r}}{{ds}} = \vec r{\rm{'}}\left( s \right) = \vec \tau \left( s \right)}\\{ \to \mathop \int \limits_{{L_{AB}}} \vec v\cdot d\vec r = \mathop \int \limits_{{L_{AB}}} \vec v\cdot\vec \tau ds}\end{array}$$

[[Wiki - 弧长参数]]

## 向量场曲线积分性质：

[[Wiki - 向量场的曲线积分]]

1、线性性

2、可加性

3、方向性

               $$\mathop \int \limits_{{L_{AB}}} \vec v\cdot d\vec r =  - \mathop \int \limits_{{L_{BA}}} \vec v\cdot d\vec r$$
