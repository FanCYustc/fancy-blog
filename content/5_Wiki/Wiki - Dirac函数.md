---
aliases: 
info: Dirac函数的定义和性质
date: 2023-10-24-星期二 10:01
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 数学分析/级数
id: wiki20231024100155
banner: "![[astrowalk.gif]]"
---
---

## Def 1 dirac 函数
```ad-definition
title: Definition 1


Dirac 函数为

                                                      $$\delta \left( x \right) = \left\{ {\begin{array}{*{20}{c}}{0;x \ne 0}\\{ + \infty ;x = 0}\end{array}} \right.$$

满足

                        $$\begin{array}{*{20}{c}}{\smallint _{ - \infty }^{ + \infty }\delta \left( x \right)dx = 1}\\{\delta \left( x \right) = \delta \left( { - x} \right)}\\{\delta \left( {ax} \right) = \frac{1}{{\left| a \right|}}\delta \left( x \right) \times \left( {a \ne 0} \right)}\end{array}$$

```


## Pro 1 卷积单位元

```ad-proposition
title: Propositon 1


对任意连续函数f

                   $$\smallint _{ - \infty }^{ + \infty }f\left( x \right)\delta \left( x \right)dx = f\left( 0 \right)$$

```

Dirac 函数的特点在于是**卷积的单位元**[[Wiki - 卷积]]



### Proof
         $$\begin{array}{*{20}{c}}{f{\rm{*}}\delta  = \smallint _{ - \infty }^{ + \infty }f\left( t \right)\delta \left( {x - t} \right)dt = f\left( x \right)}\\{ \to F\left[ \delta  \right] = \smallint _{ - \infty }^{ + \infty }\delta \left( x \right) \times {e^{ - i\lambda x}}dx = 1}\end{array}$$

所以 [[Scientech - 数学分析-傅里叶分析|Fourier analysis]]

               $$\begin{array}{*{20}{c}}{f\left( x \right) = \frac{1}{{2\cdot\pi }}\int _{ - \infty }^{ + \infty }F\left( \lambda  \right) \times {e^{i\lambda x}}d\lambda }\\{ = \frac{1}{{2  \pi }}\mathop \int \limits_{ - \infty }^{ + \infty } f\left( t \right)dt\int _{ - \infty }^{ + \infty }{e^{ - i\lambda \left( {t - x} \right)}}d\lambda }\\{ = \int _{ - \infty }^{ + \infty }f\left( t \right)\delta \left( {x - t} \right)dt}\end{array}$$

即

  $$\delta \left( x \right) = \delta \left( { - x} \right) = \frac{1}{{2\cdot\pi }}\smallint _{ - \infty }^{ + \infty }{e^{ - i\lambda x}}dx$$

## Def 2 Dirac 函数的数学含义




考虑一族函数，满足

$$\begin{array}{c}{{\varphi _x}\left( x \right) \ge 0}\\{{\varphi _\lambda }\left( x \right) = {\varphi _\lambda }\left( { - x} \right)}\\{\left| x \right| \ge \lambda  \to {\varphi _\lambda }\left( x \right) = 0}\\{\smallint _{ - \infty }^{ + \infty }{\varphi _\lambda }\left( x \right)dx = 1}\end{array}$$

Dirac函数为

$$\delta \left( x \right) = \mathop {\lim }\limits_{\lambda  \to 0} {\varphi _\lambda }\left( x \right)$$



定义一个线性泛函[[Wiki - 线性算子]]

$$
\Phi_{\lambda}(f)= \int _{R}\varphi_{\lambda}\cdot f \, dx 
$$


其中f连续。所以

   $$\mathop {\lim }\limits_{x \to 0} {\Phi _x}\left( f \right) = \mathop {\lim }\limits_{\lambda  \to 0} \mathop \smallint \limits_R {\varphi _\lambda }\cdot fdx$$

                         $$\mathop \int \limits_R {\varphi _\lambda }\left( x \right)f\left( x \right)dx - f\left( 0 \right) = \int _{ - \lambda }^\lambda {\varphi _\lambda }\left( x \right) \cdot \left( {f\left( x \right) - f\left( 0 \right)} \right)dx$$

$$
\lambda<\delta时有\mid <\varphi_{\lambda},f>-f(0)\mid <\epsilon \int _{-\lambda}^{\lambda} \varphi_{\lambda}(x) \, dx<\epsilon 
$$

由f连续。所以

                        $$\mathop {\lim }\limits_{x \to 0} {\Phi _\lambda }\left( f \right) = f\left( 0 \right)$$

在这种意义下定义了 Dirac函数

可以发现， Dirac函数是可以求导的

                             $$\mathop \smallint \limits_R f\delta {\rm{'}}\left( x \right)dx = f{\rm{'}}\left( 0 \right)$$