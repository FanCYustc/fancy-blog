---
aliases: 
info: 偏导数的定义
date: 2023-03-11-星期六 16:30
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230311163047
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Def1 偏导

设 $z=f(x,y)$ 在 $M_{0}(x_{0},y_{0})$ 的邻城中有定义, 如果函数沿 x 方向变化率的极限[[Wiki - 函数的极限]]

$$
\lim_{x\to x_0}\frac{f(x,y_0)-f(x_0,y_0)}{x-x_0}=\lim_{\Delta x\to0}\frac{f(x_0+\Delta x,y_0)-f(x_0,y_0)}{\Delta x}
$$

[[Wiki - 函数的导数]]存在, 那么称它为 $z=f(x,y)$ 在 $M_{0}$ 关于 x 的偏微商（或偏导数), 记为 $\frac{\partial f}{\partial x}(x_{0},y_{0})$ 或者 $f_x^{\prime}(x_0,y_0).$ 类似地, 如果极限

$$
\lim_{y\to y_0}\frac{f(x_0,y)-f(x_0,y_0)}{y-y_0}=\lim_{\Delta y\to0}\frac{f(x_0,y_0+\Delta y)-f(x_0,y_0)}{\Delta y}
$$

存在，那么称极限值为 $f(x,y)$ 在 $M_{0}$ 关于 $\text{y}$ 的偏微商, 记为 $\frac{\partial f}{\partial y}(x_{0},y_{0})$ 或者 $f_{y}^{\prime}(x_{0},y_{0}).$


**在多变量中，可偏导不一定连续 ！**->但可微可以推连续 [[Wiki - 映射的微分#Pro1]]

## 线性变换解释
$f: E\subset \mathbb{R}^{m}\to \mathbb{R}$,
$f (\vec{x+h})-f (\vec{x})=L_{x}(h)+o (h), as\space h\to 0$.
其中 $L_{x}$ 为线性函数 [[Wiki - 线性映射]]
所以 $L_{x}(h)=a_{1}(x)h_{1}+a_{2}(x)h_{2}\dots+a_{m}(x)h_{m}$

## 高阶偏导

二阶偏导有 $\frac {{\partial^{2}f}} {\partial x^{2}} \frac {{\partial^{2}f}} {\partial y^{2}} \frac {{\partial^{2}f}} {\partial x\partial y} \frac{{\partial^{2}f}}{\partial y \partial x}$

定若 $z=f\left(x,y\right)$ 在区城 $D$ 中有定义, 如果 $\frac{\partial^{2}f}{\partial x\partial y}和\frac{\partial^{2}f}{\partial x\partial y}$ 连续, 那么两者相等, 即求导的次序可交换


Proof：
定义二阶差分：令
$$
\varphi(x)=f(x,y_{0}+k)-f(x,y_{0}),
$$
$$
\Psi(y)=f(x_{0}+h,y)-f(x_{0},y)
$$


$$
\begin{aligned}
\varphi(x_{0}+h)-\varphi(x_{0})=\Psi(y_{0}+k)-\Psi(y_{0})\\
=f(x_0+h,y_0+k)-f(x_0+h,y_0)-f(x_0,y_0+k)+f(x_0,y_0).\end{aligned}
$$

由一元函数的微分中值公式[[Wiki - 微分中值定理]]可知有

$$
\begin{aligned}\varphi(x_0+h)-\varphi(x_0)&=h\varphi'(x_0+\theta_1h)\\&=h(f'_x(x_0+\theta_1h,y_0+k)-f'_x(x_0+\theta_1h,y_0))\\&=hkf''_{xy}(x_0+\theta_1h,y_0+\eta_1k),\end{aligned}
$$

其中 $0<\theta_{1},\eta_{1}<1.$ 类似存在 $0<\theta_{2},\eta_{2}<1,$ 使得

$$
\begin{aligned}\psi(y_0+k)-\psi(y_0)=hkf_{yx}^{\prime\prime}(x_0+\theta_2h,y_0+\eta_2k),\end{aligned}
$$


所以 $f_{xy}''(x_{0}+\theta_{1}h,y_{0}+\eta_{1}k)=f_{yx}''(x_{0}+\theta_{2}h,y_{0}+\eta_{2}k)$.

$let(h,k)\to(0,0)$, 由连续性即证 [[Wiki - 度量空间的连续映射]]


**技巧：用二阶差分**


