---
aliases:
info:
date: 2024-05-29-星期三 19:51
update:
tags:
  - wiki/year2023
  - wiki/month01
  - 复分析
  - 数学分析/函数
id: wiki20240529195114
banner: "![[astrowalk.gif]]"
---
---



## Pro 1 双曲函数恒等式
$$\cosh(x)-\sinh(x)=1$$

---
## Def 1 虚数圆角

双曲角经常定义得如同虚数圆角。实际上，如果$x$是实数而$i^2 = -1$，则
$$
\cos(ix) = \cosh(x),\quad -i\sin(ix) = \sinh(x).
$$
所以双曲函数$\cosh$和$\sinh$可以通过圆函数来定义。这些恒等式不是从圆或旋转得来的，它们应当以无穷级数的方式来理解。特别是，可以将指数函数表达为由偶次项和奇次项组成，前者形成$\cosh$函数，后者形成了$\sinh$函数。$\cos$函数的无穷级数可从$\cosh$得出，通过把它变为交错级数，而$\sin$函数可来自将$\sinh$变为交错级数。上面的恒等式使用虚数$i$，从三角函数的级数的项中去掉交错因子$(-1)^n$，来恢复为指数函数的那两部分级数。

$$
e^x = \cosh x + \sinh x
$$
$$
\cosh x = \sum_{n=0}^{\infty} \frac{x^{2n}}{(2n)!},\quad \sinh x = \sum_{n=0}^{\infty} \frac{x^{2n+1}}{(2n+1)!}
$$
$$
\cos x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!},\quad \sin x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!}
$$

## 双曲函数可以通过虚数圆角定义为：

双曲正弦：
$sinh x = -i\sin(ix)$

双曲余弦：
$\cosh x = \cos(ix)$

双曲正切：
$\tanh x = -i\tan(ix)$

双曲余切：
$\coth x = i\cot(ix)$

双曲正割：
$\operatorname{sech} x = \sec(ix)$

双曲余割：
$\operatorname{csch} x = i\csc(ix)$

这些复数形式的定义得出自欧拉公式。