---
aliases: 
info: 
date: 2024-05-14-星期二 08:51
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 复分析/积分
  - 数学分析/积分
id: wiki20240514085100
banner: "![[astrowalk.gif]]"
---
---

## The 1 poison 积分

研究 $\int _{0}^{+\infty} e^{-ax^{2}} \cos bx \, dx$

取整函数 [[Wiki - 整函数]] $f(z)=e^{-az^{2}}$，取围道为 $R, R+ \frac{b}{2a}i, -R, -R+ \frac{b}{2a}i$ 构成的矩形

由 cauchy 积分定理，
$$\int_{-R}^R\mathrm{e}^{-ax^2}\mathrm{d}x+\int_{\gamma_1}\mathrm{e}^{-az^2}\mathrm{d}z+\int_{\gamma_2}\mathrm{e}^{-az^2}\mathrm{d}z+\int_{\gamma_3}\mathrm{e}^{-az^2}\mathrm{d}z=0.$$

$\gamma_{1},\gamma_{3}$ 为两条竖边，$R\to +\infty$ 时趋于 0

$$
\int _{\gamma_{2}} e^{-az^{2}} \, dx = -e^ {\frac{b^{2}}{4a}} \int _{-R}^{R } e^{-ax^{2}} \cos bx\, dx 
$$


为上边的积分，令 $R\to +\infty$ 得

$$
\int _{-\infty}^{+\infty} e^{-ax^{2}} \cos bx \, dx = e^ {-\frac{b^{2}}{4a}} \int _{-\infty}^{+\infty} e^{-ax^{2}} \, dx =\sqrt{ \frac{\pi}{a} }e^ {-\frac{b^{2}}{4a}} 
$$

[[Wiki - Fresnel积分]]

