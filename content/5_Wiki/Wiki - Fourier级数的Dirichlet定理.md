---
aliases: 
info: dirichlet判别及证明
date: 2023-07-01-星期六 16:32
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230701163232
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

**判断 Fourier 级数是否收敛：**

## Pro1 Dirichlet 定理

设函数 f (z）以 2π为周期

1°如果在任何有限区间上 $f(x)$ 是**分段可微**的，那么它的 Fourier 级数在整个数轴上都收敛, 且

$$

\frac{a_0}{2}+\sum\limits_{n=1}^\infty(a_n\cos nx+b_n\sin nx)=\frac{f(x+0)+f(x-0)}{2};

$$

2°如果在 1°的条件下再增加**函数处处连续**的条件，那么其 Fourier 级数就在整个数轴上一致收敛[[Wiki - 一致收敛]]于 f (a）

即 [[Wiki - dirichlet积分]]一致收敛到 f (a)
### 分段可微：

存在区间上的分割使得 f 在每段上都可微[[Wiki - 映射的微分]]

光滑：f 在［a, b ]上可微且连续[[Wiki - 函数的连续性]]

对一个光滑函数 t 进行周期延拓[[Wiki - 周期延拓]]，就是分段光滑的

## 证明：

将 fourier 系数[[Wiki - Fourier级数]]的求法代入 $S_{n}(x)$，目标证

$$
\begin{aligned}S_{n}\left ( x\right) =\dfrac{1}{\pi }\int ^{\pi }_{-\pi }f\left ( x\right)  \left ( \dfrac{1}{2}+\sum ^{\infty }_{n=1}\cos nt\cos nx+sinnt\sin nx\right) dt\\

=\dfrac{1}{\pi }\int _{-\pi }^{\pi }f\left ( x\right)  \dfrac{\sin \left ( n+\frac{1}{2}\right)  \left ( x-t\right) }{2\sin \dfrac{x-t}{2}}dt=\dfrac{1}{\pi }\int _{-\pi }^{\pi }f\left ( x+u\right)  \dfrac{\sin \left ( n+\dfrac{1}{2}\right) u}{2 \sin \dfrac{u}{2}}du\\

=\dfrac{1}{\pi }\int _{0}^{\pi }\left ( f\left ( x+u\right) +f\left ( x-u\right) \right) \dfrac{\sin \left ( n+\dfrac{1}{2}\right) u}{2 \sin \dfrac{u}{2}}du\end{aligned}
$$


### 推论：

取 f 恒等于 1，则

$$
\dfrac{1}{\pi }\int _{0}^{\pi }\dfrac{\sin \left ( n+\dfrac{1}{2}\right) u}{\sin \dfrac{u}{2}}du=1
$$


### 引理：

设 **f 在［0，π]上可积**[[Wiki - lebesgue积分|lebesgue可积]]（唯一条件）

$$
\lim _{n\rightarrow +\infty }\int _{0}^{\pi }f\left ( t\right)  \sin \left ( n+\dfrac{1}{2}\right) tdt=0
$$

由引理要推

$$
\pi  \left ( S_{n}\left ( x\right) -a\right) =\int _{0}^{\pi }\dfrac{f\left ( x+u\right) +f\left ( x-u\right) -2a}{2 \sin \dfrac{u}{2}} \sin \left ( n+\dfrac{1}{2}\right) udu\rightarrow 0
$$
则要求 $\dfrac{f\left ( x+u\right) +f\left ( x-u\right) -2a}{2 \sin \dfrac{u}{2}}$ 可积，由于

$$
\lim _{u\rightarrow 0^{+}}\sin \dfrac{u}{2}=0\rightarrow \lim _{u\rightarrow 0^{+}}f\left ( x+u\right) +f\left ( x-u\right) =2a=f\left ( x+0\right) +f\left ( x-0\right)
$$


否则由于 0 点无穷大, 为瑕点而不可积

现已证明逐点收敛；

当，f 分段光滑时，只需证 $S_{n}(x)$ 一致收敛 [[Wiki - 一致收敛]] ：

由于 f' (x) 是分段连续的， **f'（x） 可积**，由分部积分，可推出

$$
\begin{aligned}
a_{n} = -\frac{b_{n}'}{n};  b_{n}=\frac{a_{n}'}{n} \\
\rightarrow 2 (\mid a_{n}\mid + \mid b_{n}\mid) \leq \frac{2}{n^{2}}+ a_{n}^{'2} + b_{n}^{'2} \\
\end{aligned}
$$

由均值不等式，求和

$$
\begin{aligned} 2\sum ^{+\infty }_{n=1}\left| a_{n}\right| +\left| b_{n}\right| \leq 2\sum \dfrac{1}{n^{2}}+\sum ^{\infty }_{n=1}\left ( a_{n}^{'2}+b_{n}^{2'}\right) \\

\leq \dfrac{\pi ^{2}}{3}+\dfrac{1}{\pi }\int _{-\pi }^{\pi }f'\left ( x\right) ^{2}dx\end{aligned}
$$

第二步由由 Bessel 不等式，

$$
\left| a_{n}\cos nx+b_{n}\sin nx\right| \leq \left| a_{n}\right| +\left| b_{n}\right|
$$


由 Weierstrass 判别法[[Wiki - 函数项级数的weierstrass定理]]，可得 $S_{n}(x)$ 一致收敛
