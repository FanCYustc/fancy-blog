---
aliases: 
info: Parseval等式的3个推论
date: 2023-07-03-星期一 11:36
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230703113654
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## Def 1


在平方可积 [[Wiki - 平方可积]]的空间里，三角函数系的标准正交基 [[Wiki - Schmidt 正交化#Def1 标准正交基]]  为


$$\left\{ {\left. {\frac{1}{{\sqrt[{}]{{2  \pi }}}},\frac{{{\rm{cos}}mx}}{{\sqrt[{}]{\pi }}},\frac{{{\rm{sin}}mx}}{{\sqrt[{}]{\pi }}}，...} \right\}} ;\right. m= \left. {1,2, \ldots }  \right.$$


区别于 [[Wiki - 三角函数系]]

## Cal1

如果 $[-\pi,\pi]$ 上的连续函数 f 对 [[#Def 1]] 中的每个基都正交 [[Wiki - 欧几里得空间的距离和夹角#Def 3 正交]]，那么 $f\equiv 0$


## Cal2


$$
\frac{1}{\pi} \int_{ - \pi }^\pi f( x )g( x )dx = \frac{{a_0}\overline {a_0} }{2} + \mathop \sum \limits_{n = 1}^\infty  ( {a_n}\overline {a_n}  + b_{n} \bar b_n)
$$

类似有限维欧氏空间的内积[[Wiki - 内积]]形式




### 证明：

由极化恒等式[[Wiki - 极化恒等式]]

$$
\frac{1}{\pi}\langle f,g \rangle=\frac{1}{4\pi} (\langle f+g,f+g \rangle - \langle f-g,f-g \rangle)
$$

现在**甚至还不知道 Fourier 极数是否收敛到 f**，利用平方平均收敛就可以推出很多东西

对比 [[Wiki - Fourier级数的Dirichlet定理]]

## Cal3

$f \in L^2[-\pi,\pi]$ [[Wiki - 平方可积]]
            $$\begin{array}{*{20}{c}}{f\left( x \right) \in {L^2}\left[ { - \pi ,\pi } \right],f\left( x \right) \sim \frac{{{a_0}}}{2} + \mathop \sum \limits_{k = 1}^\infty  \left( {{a_n}{\rm{cos}}nx + {b_n}sinnx} \right)}\\\to{\int _a^bf\left( x \right)dx = \smallint _a^b\frac{{{a_0}}}{2}dx + \mathop \sum \limits_{n = 1}^\infty  \smallint _a^b\left( {{a_n}{\rm{cos}}nx + {b_n}{\rm{sin}}nx} \right)dx}\end{array}$$
不一定满足 [[Wiki - Fourier级数的Dirichlet定理]]但也可以拆开积分

其中 $[a,b]$ 为 $[-\pi,\pi]$ 内的闭区间