---
info: 微分的定义和性质
aliases: 
date: 2023-11-28-星期二 10:04:47
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - wiki/month03
  - 数学分析/微分
  - 数学分析/多变量微积分
id: wiki20230312160414
banner: "![[astrowalk.gif]]"
---

---

二维情况：
## Def1-微分的定义

设 f (x, y) 是定义在区域 $D\subset\mathbb{R}^2$ 上的二元函数, 如果在 D 中一点 $(x_0, y_0)$ 的附近, 函数 $f (x, y)$ 可以近似于过 $(x_{0},y_{0})$ 的一个平面

$$
f(x,y)=f (x_0, y_0)+a (x-x_0)+b (y-y_0)+o (\rho)
$$
那么称 f (x, y) 在 $(x_0, y_0)$ 可微，这里 a, b 是常教，$\rho=\sqrt{(x-x_0)^2+(y-y_0)^2}$.


[[Wiki - 线性映射]]

用一个线性变换趋近原函数 o（$\rho$）[[Wiki - 无穷小量]]


## Def 1 映射的微分

```ad-definition
title: Definition 1

映射 $f: M\in \mathbb{R}^{n}\to \mathbb{R}^m$ 在点 $x\in M$ 可微是指，存在线性映射 $\mathcal{L}_{x}\in L(\mathbb{R}^{n},\mathbb{R}^{m})$，使得对于任意 $y\in M$，

$$
f(y)-f(x)=\mathcal{L}_{x}(y-x)+R(x,y),\lim_{ |y-x| \to 0 } \frac{|R(x,y)|}{|y-x|}=0 
$$
$\mathcal{L}_{x}$ 称为 **f 在 x 的微分**，记作$df_x$

```

[[Wiki - 线性映射]]
## Pro 1 在标准基下的表示

$\forall h\in \mathbb{R}^{n}$，取 t 充分小

$$
f(x+th)-f(x)=df_{x}(th)+R(th)=tdf_{x}(h)+R(th)
$$
$$
df_{x}(h)=\lim_{ t \to 0 } \frac{{f(x+th)-f(x)}}{t} 
$$

在 $\mathbb{R}^{n}$ 的标准基下，取 $h=e_{1},\dots,e_{n}$[[Wiki - 方向导数]]

则 
$$
df_{x}(e_{i})=\lim_{ t \to 0 } \frac {{f(x+te_{i})-f(x)}} {t}= \frac{{\partial f}}{\partial x_{i}}(x)
$$

[[Wiki - 偏导]] 

则线性映射 $df_{x}$ 在标准基下的表示即为 $\left( \frac{{\partial f}}{\partial x_{1}},\dots, \frac{{\partial f}}{\partial x_{n}} \right)$[[Wiki - 线性变换在一组基下的矩阵]]

对于标准基，$L(T_{x}\mathbb{R}^{n},\mathbb{R})$ 为其对偶空间，对偶基 [[Wiki - 对偶空间#Def 2 对偶空间的基]] 为

```ad-definition
title: Definition 2


$$
e_{i}^{*}=dx_{i}(x)
$$

的投影映射，所以 $df_{x}$ 就可以表示为

$$
df_{x}=\sum_{i=1}^{n} \frac{{\partial f}}{\partial x_{i}}(x) e_{i}^{*}
$$

简记为

$$
df=\sum_{i=1}^{n} \frac{{\partial f}}{\partial x_{i}}dx_{i}
$$


```

对于 $f:\mathbb{R}^{n}\to \mathbb{R}^{m}$，取 $\mathbb{R}^m$ 的标准基 $\overline{e_{1}},\dots,\overline{e_{m}}$

So
$$
f(x+h)-f(x)=\sum_{j=1}^{m } (f_{j}(x-h)-f_{j}(x))\overline{e_{j}}
$$

所以有 $df_{x}$ 在标准基下可以记为

$$\mathrm{d}f_{x}(\boldsymbol{e}_1,\cdots,\boldsymbol{e}_n)=\left(\widetilde{\boldsymbol{e}}_1,\widetilde{\boldsymbol{e}}_2,\cdots,\widetilde{\boldsymbol{e}}_m\right)\cdot\begin{pmatrix}\frac{\partial f_1}{\partial x_1}&\frac{\partial f_1}{\partial x_2}&\cdots&\frac{\partial f_1}{\partial x_n}\\\frac{\partial f_2}{\partial x_1}&\frac{\partial f_2}{\partial x_2}&\cdots&\frac{\partial f_2}{\partial x_n}\\\cdots&\cdots&\cdots&\cdots\\\frac{\partial f_m}{\partial x_1}&\frac{\partial f_m}{\partial x_2}&\cdots&\frac{\partial f_m}{\partial x_n}\end{pmatrix}(x)$$

[[Wiki - 雅各比矩阵]]


---

## Pro1 二维连续

设函数 $f(x,y)$ 在 $(x_0,y_0)$ 可微, 则 

1° $f(x,y)\text{ 在 }(x_0,y_0)$ 连续 [[Wiki - 度量空间的连续映射]]

2° $f(x,y)$ 在 $(x_{0}, y_{0})$ 两个偏导数都存在, 且 $\frac{\partial f}{\partial x}(x_0,y_0)\:=\:a,\:\frac{\partial f}{\partial y}(x_0,y_0)\:=\:b$ , 因此 $f(x,y)$ 的微分为

$$
\mathrm{d}f=\frac{\partial f}{\partial x}\:\mathrm{d}x+\frac{\partial f}{\partial y}\:\mathrm{d}y.
$$


可微一定有偏导 [[Wiki - 偏导]]

## Pro 2 一般连续

```ad-proposition
title: Propositon 2

如果映射在一点可微，那么它在该点连续，且它在该点的微分唯一

```


---

## Pro3 偏导+条件->连续、可微

设函数 f (x, y) 在区域 $D$ 内存在两个偏导数 [[Wiki - 偏导]]

1°如果偏导数 $f'_x(x,y)，f'_y(x,y)$ 在 D 内有界, 那么 f 在 D 内连续.

2°如果偏导数 $f'_x (x, y)，f'_y (x, y)$ 在 D 内连续，那么 f 在 D 内可微.

[[Wiki - 函数的连续性]]
### Proof：

设存在常数 $M$ 使得 $|f_{x}'(x,y)|<M$，$|f_{y}'(x,y)|<M$。任取一内点[[Wiki - 度量空间的内部外部|内点外点边界点]] $(x,y)\in D$，只要取增量 $h=\Delta x$，$k=\Delta y$ 足够小，就一定能够使得 $(x + h,y + k)$（以及 $(x + h,y)$ 和 $(x,y + k)$）落在 $D$ 中以 $(x,y)$ 为中心的圆盘内。于是 

$$ f(x + h,y + k)-f(x,y)=[f(x + h,y + k)-f(x + h,y)] +[f(x + h,y)-f(x,y)] $$

分别对第一个方括号内第二个变量和第二个方括号内第一个变量运用微分中值定理 [[Wiki - 微分中值定理]]

$$ f(x + h,y + k)-f(x + h,y)=kf_{y}'(x + h,y + \theta_{2}k) 
$$

$$ f(x + h,y)-f(x,y)=hf_{x}'(x + \theta_{1}h,y) $$

其中 $0<\theta_{1},\theta_{2}<1$。由此得 

$$ |f(x + h,y + k)-f(x,y)|=|kf_{y}'(x + h,y + \theta_{2}k)+hf_{x}'(x + \theta_{1}h,y)| \leq M(|h| + |k|) $$

显然，当 $(h,k)\to(0,0)$ 时 $f(x + h,y + k)-f(x,y)\to0$，即函数 $f$ 在 $(x,y)$ 处连续。当 $f_{x}'(x,y)$，$f_{y}'(x,y)$ 在 $D$ 中连续时，有 

$$ f(x + h,y + k)-f(x,y)-hf_{x}'(x,y)-kf_{y}'(x,y) =k[f_{y}'(x + h,y + \theta_{2}k)-f_{y}'(x,y)]+h[f_{x}'(x + \theta_{1}h,y)-f_{x}'(x,y)] $$

而当 $(h,k)\to(0,0)$ 时，有 

$$ \frac{|k[f_{y}'(x + h,y + \theta_{2}k)-f_{y}'(x,y)]+h[f_{x}'(x + \theta_{1}h,y)-f_{x}'(x,y)]|}{\sqrt{h^{2}+k^{2}}} \leq |f_{y}'(x + h,y + \theta_{2}k)-f_{y}'(x,y)|+|f_{x}'(x + \theta_{1}h,y)-f_{x}'(x,y)|\to0. $$

因此，函数 $f$ 可微。


