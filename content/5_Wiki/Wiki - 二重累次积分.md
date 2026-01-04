---
aliases: 
info: 累次积分
date: 2023-04-28-星期五 22:51
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230428225107
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Def1  累次积分


设对任意 y, f ( x, y） 在 ［a, b］ 可积（关于 x)

$$
\begin{array}{*{20}{c}}{\varphi  \left( y \right) = \smallint _a^bf\left( {x,y} \right)dx}\\{\mathop \int\!\!\!\int \limits_D f\left( {x,y} \right)dxdy = \smallint _c^d\varphi   \left( y \right)dy = \smallint _c^d\left( {\smallint _a^bf\left( {x,y} \right)dx} \right)dy}\end{array}
$$
此时考虑简单情况区域为矩形

$dx,dy$ 其实就是面积微元

这种特殊的二重积分称为**累次积分**。

### 推广

将区域从矩形推广：
$$
\begin{array}{*{20}{c}}{{D_1} = \left\{ {\left| {\left. {\left( {x,y} \right)} \right|} \right.x \in \left[ {a,b} \right],{y_1}\left( x \right) \le y \le {y_2}\left( x \right)} \right\}or}\\{{D_2} = \left\{ {\left| {\left. {\left( {x,y} \right)} \right|} \right.y \in {{\left[ {c,d} \right]}_1}{x_1}\left( y \right) \le x \le {x_2}\left( y \right)} \right\}}\end{array}
$$


**$y_{1} (x) ,y_{2} (x)$ 为关于 x 的连续函数**

此时有变限积分

证明方法：对 f 在 $D=[a, b] \times [c, d]$  进行零扩充

$$
f^{*}(x,y)=f(x,y),\space(x,y)\in D
$$
$$
=0, \space (x,y)not \in D
$$
## Pro 1

设 $f(x,y)$ 在有界[[Wiki - 度量空间的内部外部]]闭区城 $\text{D}$ 上可积

$\text{设}D=\{(x,y)| y_{1} (x)≤y≤ y_{2}(x), a≤r≤b\}$, 其中 $y_1(x),y_2(x)$ 在 $[a,b]$ 上连续[[Wiki - 函数的连续性]], 即 $\text{D}$ 是平面上由曲线 $\begin{aligned}y=y_1(x),y=y_2(x),\:x\in[a,b]\end{aligned}$ 以及平行于 y 的两条直线 $x=a,x=b$ 围成的区域

如果对任意的 $x\in[a,b],\:f(x,y)$ 在 $[y_{1} (x), y_{2}(x)]$ 上关于变量 y 可积, 记

$$
\varphi(x)=\int_{y_1(x)}^{y_2(x)}f(x,y)\:\mathrm{d}y
$$

那么 $\varphi(x)$ 在 $[a,b]$ 可积, 并有

$$
\begin{aligned}\int_a^b\varphi(x)\:\mathrm{d}x=\int_a^b\:\mathrm{d}x\int_{y_1(x)}^{y_2(x)}f(x,y)\:\mathrm{d}y=\iint_Df(x,y)\:\mathrm{d}x\:\mathrm{d}y.\end{aligned}
$$



