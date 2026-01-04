---
aliases:
  - 平方平均收敛
info: 平方平均的定义
date: 2023-07-03-星期一 10:48
update:
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
  - 收敛
id: wiki20230703104828
banner: "![[astrowalk.gif]]"
---
---
#数学分析/积分 

## Def1 平方平均
定义

                                                 $${L^2}\left[ {a,b} \right]$$

为 f 可积， $f^2$ 也**可积**的函数构成的集合（不用考虑有瑕点什么的了），是 [[Wiki - Lp线性空间]]的特例，是 hilbert 空间 [[Wiki - Hilbert空间]]

## Def2 平方平均空间


定义该线性空间上的内积 [[Wiki - 内积]]（区间为 $[- π， π ]$）
$$
\langle f, g\rangle =\int _{-\pi }^{\pi }f\cdot gdx
$$

没有上一节中的 1 /π [[Wiki - 三角函数系的性质]]

定义距离[[Wiki - 度量空间|距离空间]]

$$
\mid\mid f-g\mid\mid=\sqrt{\langle f-g, f-g\rangle  }=\sqrt{ \int _{-\pi}^{\pi} (f-g)^2 \, dx  }
$$


该线性空间 [[Wiki - 一般线性空间]]是无穷维 [[Wiki - 基和维数]]的，三角函数系 [[Wiki - 三角函数系]]为一组基


## Def 3 平方平均收敛

在满足平方可积的函数构成的 hilbert 空间中，称函数列 $\{f_{n}\}$ 平方平均收敛如果

    $$\mathop {\lim }\limits_{n \to \infty } \mid\mid{f_n} - f\mid\mid_{2} = 0$$

[[Wiki - 范数]]

这是 [[Wiki - Lp收敛]]的一种特殊情况

