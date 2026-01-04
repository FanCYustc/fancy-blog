---
aliases: 
info: 数量场曲线积分计算公式
date: 2023-06-23-星期五 22:19
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230623221954
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分

## The 1

$L=\vec{r}(t)$ 是光滑曲线 [[Wiki - 隐式曲线和曲面]]，$\phi(x,y,z)$ 在 L 上连续 [[Wiki - 度量空间的连续映射]]，则

$$
\mathop \int \limits_L \phi ds = \int _a^b\phi   \left( {\vec r\left( t \right)} \right) \times \left| {\vec r{\rm{'}}\left( t \right)} \right|dt
$$

### 证明

由黎曼可积
$$\begin{aligned}
&\sum\phi(p_{i})\Delta s_{i}=\sum\phi\left(\vec{r}(\tau_{i})\right)|\vec{r}^{\prime}(\theta_{i})|\Delta t_{i} \\
&=\sum\phi(\vec{r(\tau_{i})})|\vec{r}^{\prime}(\tau_{i})|\Delta t_{i}+\sum\phi\big(\vec{r}(\tau_{i})\big)\times(|\vec{r}^{\prime}(\theta_{i})|-|\vec{r}^{\prime}\times(\tau_{i})|)\Delta t_{i}
\end{aligned}$$

由 $\phi(x(t),y(t),z(t))$ 的连续性，[[Wiki - 多变量连续函数的性质]]
$$
{\left| {\phi   \left( {\vec r\left( {{\tau _i}} \right)} \right)} \right| < M}\\
$$
有界
且 $\mid T \mid < \delta$ 时，
$$
 \left| \right|\vec r{\rm{'}}\left( {{\theta _i}} \right)  \left| { - \left| {\vec r{\rm{'}}\left( {{\tau _i}} \right)} \right|} \right| < \varepsilon 
$$

所以第一项可积[[Wiki - 二重Riemann可积]]，第二项趋于 0

**最终还是转化成了单变量积分**

