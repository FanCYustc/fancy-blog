---
aliases:
  - Scientech - 复分析-留数
info: 24春复分析第5章
date: 2024-05-07-星期二 08:45
update: 
tags:
  - scientech/year2024
  - scientech/month05
  - 复分析/级数
  - 复分析/留数
id: scientech20240507084519
banner: "![[astrofishing.gif]]"
---
---

# CH5-全纯函数的 laurent 展开

Laurent 展开是复变函数的一种特殊的展开

## 5.1 Laurent 展开

对于 Taylor 展开不收敛的，还可以除去全纯部分外补充主要部分，构成 Laurent 展开。

[[Wiki - 全纯函数的Laurent展开]]

## 5.2 孤立奇点

Laurent 展开用来研究全纯函数的一些性质：孤立奇点代表的全纯函数中的一些不好的点。

 [[Wiki - 孤立奇点]]

利用 Laurent 展开对孤立奇点分类：

主要部分没有的就是可去奇点，主要部分有限项的就是极点，主要部分无穷多项的就是本性奇点

[[Wiki - 本性奇点]]

## 5.3 整函数和亚纯函数

在讨论整函数和亚纯函数前，要先讨论无穷远点处的 Laurent 展开

[[Wiki - 无穷远点处的Laurent展开]]

整函数和亚纯函数的一些性质作为孤立奇点的应用

### 整函数

[[Wiki - 整函数]]

注意在 [[Scientech - 复分析-全纯函数]]中，无穷远点是单独在复平面外讨论的，所以整函数指在 $\mathbb{C}$ 上全纯，不是 $\mathbb{C}_{\infty}$ 上，从而可以讨论无穷远点的全纯性。

### 亚纯函数

比全纯函数差几个极点 [[Wiki - 亚纯函数]]

## 5.4 留数定理

[[Wiki - 留数]]

[[Wiki - 留数定理]]

## 5.5 利用留数定理计算积分

经常用留数定理来计算积分，对于某些类型的函数；具体的细节证明和例子都参照史济怀复变函数 [[Book - 复变函数]] 5.5 节

### $-\infty到+\infty$ 积分

考虑 $\int _{-\infty}^{+\infty} f(x)\, dx$ 类的[[Wiki - 全纯函数]]

#### 第一类

```ad-theorem
title: Theorem 1

设 $f$ 在上半平面{z: Im}z>0}中除去 $a_1,\cdots,a_n$ 外是**全纯**的，在{z: Im $\boldsymbol{z\geqslant}0$}中除去 $a_1,\cdotp\cdotp\cdotp,a_n$ 外是连续的（**连续到边界**）. 如果 $\lim_{x\to\infty}zf(z)=0$, 那么
$$\int_{-\infty}^\infty f(x)\mathrm{d}x=2\pi\mathrm{i}\sum_{k=1}^n\mathrm{Res}(f,a_k).$$


```

推论：特别的，当 $f= \frac{P(x)}{Q(x)}$，且 $deg (Q)-deg (P)\geq 2$（保证 $\lim_{ x \to \infty }zf (z) = 0$），P, Q 既约，且 Q 没有实的零点（保证连续到边界），那么

$$\int_{-\infty}^{\infty}\frac{P(x)}{Q(x)}\mathrm{d}x=2\pi\mathrm{i}\sum_{k=1}^{n}\mathrm{Res}(\frac{P(z)}{Q(z)},a_{k})
$$

这里, $a_k (k=1,\cdotp\cdotp\cdotp, n)$ 为 Q 在**上半平面中的全部零点**.

#### 第二类

```ad-theorem
title: Theorem 2

设 $f$ 在**上半平面**{z: Im $z>0\}$ 中除去 $a_1,\cdotp\cdotp\cdotp,a_n$ 外是**全纯**的，在{z: Im $z\geqslant0$}中除去 $a_1,\cdotp\cdotp\cdotp,a_n$ 外是连续的（**连续到边界**）. 如果 $\lim_{z\to \infty} f(\boldsymbol{z})=0$, 那么对任意 $\alpha>0$, 有

$$\int_{-\infty}^\infty\mathrm{e}^{\mathrm{i}ax}f(x)\mathrm{d}x=2\pi\mathrm{i}\sum_{k=1}^n\mathrm{Res}(\mathrm{e}^{\mathrm{i}az}f(z),a_k).$$

从而有
$$\int_{-\infty}^{\infty}f(x)\mathrm{cos}\alpha x\mathrm{d}x=\mathrm{Re}\left\{2\pi\mathrm{i}\sum_{k=1}^{n}\mathrm{Res}\left(\mathrm{e}^{\mathrm{i}\alpha z}f(z),a_{k}\right)\right\}
$$

$$\int_{-\infty}^{\infty}f(x)\mathrm{sin}\alpha x\mathrm{d}x=\mathrm{Im}\left\{2\pi\mathrm{i}\sum_{k=1}^{n}\mathrm{Res}(\mathrm{e}^{\mathrm{i}\alpha z}f(z),a_{k})\right\}.$$

```

证明需要下面的 Jordan 引理：

```ad-lemma

设 $f$ 在{z: $R_0\leqslant|z|<\infty,\mathbf{Im}z\geqslant0\}$ 上
连续，且 $\lim_{z\to\infty,Imz\geq 0} f(z)=0$, 则对任意 $\alpha>0$, 有

$$\lim\limits_{R\to\infty}\int\limits_{r_R}\mathrm{e}^{\mathrm{i}\alpha z}f(z)\mathrm{d}z=0,$$
这里，$\gamma_R=\{z:z=R\mathrm{e}^{\mathrm{i}\theta},0\leqslant\theta\leqslant\pi,R\geqslant R_0\}.$

```

$\alpha>0$ 保证最后实部 $e^{-\alpha R\sin\theta}$ 是收敛的

#### 第三类：实轴上有奇点

```ad-lemma
title: Lemma 2

设 $f$ 在**扇状域**
$$G=\{z=a+\rho\mathrm{e}^{\mathrm{i}\theta};\:0<\rho\leqslant\rho_0,\:\theta_0\leqslant\theta\leqslant\theta_0+\alpha\}$$
上连续，如果 $\lim_{z\to a}(z-a)f(z)=A$, 那么


$$
\lim_{\rho\to0}\int f(z) d z=i A\alpha
$$

这里，$\gamma_\rho=\{z=a+\rho\mathrm{e}^{i\theta}:\theta_0\overset{\cdot}{\operatorname*{\leqslant}}\theta\leqslant\theta_0+\alpha\}$, 它的方向是沿着辐角增加的方向.

```

以经典的 $\int _{0}^{+\infty} \frac{{\sin x}}{x} \, dx$ 为例

### $\int _{a}^{b}f(x) \, dx$ 积分

使用钥匙孔围道，这是由于 $Log z$ 为多值函数，需要取单值的全纯分支

### 其他情况

讨论两周不包含在上述情况中的函数

1、fresnel 积分[[Wiki - Fresnel积分]]

2、poison 积分[[Wiki - poison积分]]

