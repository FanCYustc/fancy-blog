---
aliases: 
info: 条件极值的判断
date: 2023-12-12-星期二 11:21
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数学分析/多变量微积分
id: wiki20231212112142
banner: "![[astrowalk.gif]]"
---
---

## The 1 条件极值判断

设 $W$ 是 $\mathbb{R}^n$ 的开集 [[Wiki - 度量空间的开集闭集#Definition 2 开集]]，$f$ 是定义在 $W\subset\mathbb{R}^n$ 上的 $C^2$ 函数，$G:W\to$
$\mathbb{R}^m$ 是 $C^2$ 映射，$rankG=m,\:x^0\in W,\:G(x^0)=0.$
设 $x^0$ 是函数 $H(x,\lambda)=f(x)+\langle\lambda,G(x)\rangle$ 的驻点 [[Wiki - 拉格朗日乘数法]]，这里 $\lambda=(\lambda_1,\cdots,\lambda_m)\in\mathbb{R}^m$ 是常向量。记 $M=\{x\in W\mid G(x)=0\}$, 考察二次型

$$Q(\boldsymbol{v})=\sum_{i,j=1}^n\frac{\partial^2H}{\partial x_i\partial x_j}(x^0)v_iv_j,\quad\boldsymbol{v}=(v_1,\cdots,v_n)\in T_{x^0}M.$$

1, 如果 $Q(v)$ 正定[[Wiki - 正定矩阵]]，则 $x^0$ 是函数 $f|_M$ 的极小值点

2. 如果 $Q(v)$ 负定，则 $x^0$ 是函数 $f\Big|_M$  的极大值点

3. 如果 $Q(v)$ 不定，则 $x^0$ 不是函数 $f|_M$ 的极值点. M