---
aliases: 
info: 双侧曲面及定向
date: 2023-06-29-星期四 10:16
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629101617
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

## 曲面的定向

### 二维
对于二维平面，**一组基确定了一个定向**  [[Wiki - 基和维数]]
两组基的定向相同当且仅当变换矩阵行列式 [[Wiki - 行列式的定义]]大于 0 [[Wiki - 不同基下的坐标变换]]

所以二维平面上只有 2 个定向，通常逆时针为正向

### 三维

对于三维的光滑曲面 S ， 
则**每个点都存在法向量**  [[Wiki - 参数曲面的切平面和法向量场]]
称 S 是**可定向的**当 S 上存在**连续的单位法向量场**

## 可定向曲面

注意到，可定向曲面有两个连续的单位法向量场，即存在两个面

称 S 是**定向曲面，当 S 可定向**，且规定一个面是正面

不可定向的曲面：莫比乌斯带[[Wiki - 莫比乌斯带与单侧曲面]]

                    $$\begin{array}{*{20}{c}}{S:\vec r  \left( {u,v} \right) = \left( {x\left( {u,v } \right),y\left( {u,v } \right),z\left( {u,v} \right)} \right)}\\{{{\vec r}_u} \times {{\vec r}_\nu } = \left( {\frac{{\partial \left( {y,z} \right)}}{{\partial \left( {u,v} \right)}},\frac{{\partial \left( {z,x} \right)}}{{\partial \left( {u,v } \right)}},\frac{{\partial \left( {x,y} \right)}}{{\partial \left( {u,v} \right)}}} \right)}\end{array}$$

## 正向参数

当其与正向法向量 n 同向时，称（u, v）为正向参数，即

$$
\dfrac{\overrightarrow{r}_{u}\times \overrightarrow{r}_{\nu }}{\left| \overrightarrow{r}_{u}\times \overrightarrow {r}_{v}\right| }=\overrightarrow{n}
$$

若（u, v） 是正向参数，则 （v, u） 是反向参数[[Wiki - 隐式曲线和曲面]]

[[Wiki - 曲线的定向]]