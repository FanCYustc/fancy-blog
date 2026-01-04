---
aliases: 
info: 
date: 2024-07-21-星期日 22:10
update: 
tags:
  - wiki/year2022
  - wiki/month12
  - 数学分析/积分
id: wiki20240721221018
banner: "![[astrowalk.gif]]"
---
---

## 第一类换元

设 $f(x)$ 为可积函数 [[Wiki - lebesgue积分|lebesgue可积]]，$g=g(x)$ 为连续可导 [[Wiki - 函数的连续性]] [[Wiki - 函数的导数]]函数，则有：
$$
\int^\beta_\alpha f(g)g'\mathrm{d}x = \int^{g(\beta)}_{g(\alpha)} f(g)\mathrm{d}g
$$
第一类换元法的基本思想是把被积函数的部分配凑到微分内。


```ad-tip

==重点==: 谁来当$g$? 各类函数的优先级顺序: 
1. 反三角函数
2. 对数函数
3. 幂函数
4. 三角函数
5. 指数函数

```


第一类换元法是用于求解不定积分的一种常见技巧。它通过引入一个新的变量来将原始被积函数转换为一个更容易积分的形式。

**步骤**：
1. **选择新的变量**：选择一个新的变量，通常用 u 或 t 来代替原来的自变量。这个新的变量将有助于简化被积函数。
2. **确定微分元素**：计算新的变量 u 对于原来的自变量 x 的微分元素 $\frac{du}{dx}$，并得到 dx。
3. **代换**：用新的变量 u 来代替原来的自变量 x，同时用 du/dx 和 dx 替换 du，将原来的被积函数转换为 u 的表达式。
4. **求不定积分**：在新的变量 u 下求解积分，得到不定积分 $\int  F (u) du$。
5. **代回原变量**：将 u 的表达式换回 x，得到最终的不定积分 $\int f (x) dx$。

## 第二类换元

[[Wiki - 单变量不定积分]]


第二类换元法的主要思路是将 $dx$ 换元后里面的内容提取到外面, 得到容易求得的积分后再将变量换回$x$. 

设 $f(x)$ 为可积函数，$x = x(g)$ 为连续可导函数，则有：
>[!info]
>$$
>\int_\alpha^\beta f(x) \, dx = \int_\alpha^\beta f(\phi(t))d(\phi(t)) = \int_{\phi^{-1}(\alpha)}^{\phi^{-1}(\beta)} f(\phi(t)) \phi\prime(t) dt
>$$


### 经典类型
在遇到类似 $\sqrt{x^2-a^2}$、$\sqrt{x^2+a^2}$ 和 $\sqrt{a^2-x^2}$ 的式子时，通常采取分别令 $x = \pm a \sec t$、$x = \pm a \tan t$ 或 $x = \pm a \sin t$ 进行换元，得到关于 $t$ 的一个原函数。


>[!example]+ 例1: $\displaystyle\int \sqrt{a^2-x^2}dx, (a>0)$
> $x \in[-a,a]$
> 令 $x = \pm a \sin (t)$, 则 $dx=a\cos(t)dt$ 
> $$\int \sqrt{a^2-x^2}dx
> =\int \sqrt{ a^{2}-a^{2}\sin^{2}(t) } d(a\sin(t))
> $$
> $$
> =\int a\cos(t)\cdot a\cos(t) \, dt
> =a^{2}\left( \frac{t}{2}+\frac{\sin(2t)}{4} \right)
> $$
> 令$x = \pm a \cos (t)$, 也能解出


>[!example]+ 例2: $\displaystyle \int \frac{1}{\sqrt{x^2+a^2}} dx, (a>0)$
令 $x = \pm a \tan (t)$, $x \in[-\infty,\infty]$, $t \in(-\frac{\pi}{2},\frac{\pi}{2})$


>[!example]+ 例3: $\displaystyle \int \frac{1}{\sqrt{x^2-a^2}} dx, (a>0)$
令 $x = \pm a \sec (t)$, ${} x \in[a,\infty] {}$, $t \in(0,\frac{\pi}{2})$


补充：

- 反双曲正弦
$$y=arsh(x)=\ln(x+\sqrt{ x^{2}+1 })$$
- 反双曲余弦
$$y=arch(x)=\ln(x+\sqrt{ x^{2}-1 })$$

- 反双曲正切
$$y=arth(x)=\dfrac{1}{2}\ln(\dfrac{1+x}{1-x})$$

## The 3 区间再现法

定积分问题常用技巧
$$\int_a^b​f(x)dx=\int_a^b​f(a+b−x)dx$$

本质上是对被积函数做关于**区间的对称形式**
