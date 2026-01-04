---
aliases: 
info: 
date: 2023-11-30-星期四 14:27
update: 
tags:
  - wiki/year2023
  - wiki/month11
  - 概率论
  - 实分析/lebesgue积分
id: wiki20231130142714
banner: "![[astrowalk.gif]]"
---
---

## The 1 chebyshev 不等式

```ad-theorem
title: Theorem 1

设 $g(x)$ 是定义在 $[0,\infty)$ 上的**非降的非负值函数**，如果对随机变量 $Y$, 有 $\mathbb{E}g(|Y|)<\infty$, 则对任何使得 $g(a)>0$ 的 $a>0$, 都有

$$\mathbb{P}\left(|Y|>a\right)\leq\frac{\mathbb{E}g(|Y|)}{g(a)}.$$


```

实分析表述：

$$
m(\{x: |g(x)|>a\}) \leq \frac{1}{a} \mid\mid g\mid\mid_{L^{1}(\mathbb{R}^{d})}
$$

### Proof

由于单调非降，所以

$$\begin{aligned}(|Y|\geqslant a)&\subset\Big(g(|Y|)\geqslant g(a)\Big).\\\text{因此}\\I(|Y|\geqslant a)&\leqslant I\Big(g(|Y|)\geqslant g(a)\Big)\leqslant\frac{g(|Y|)}{g(a)}I\Big(g(|Y|)\geqslant g(a)\Big),\end{aligned}$$

第二个不等式由于 $g (|Y|)\geq g(a)$。所以

$$\begin{aligned}
\mathbf{P}(|Y|\geqslant a)& =\mathbf{E}I(|Y|\geqslant a)\leqslant\mathbf{E}I\Big(g(|Y|)\geqslant g(a)\Big)  \\
&\leqslant\mathbf{E}\left\{\frac{g(|Y|)}{g(a)}I\Big(g(|Y|)\geqslant g(a)\Big)\right\}\leqslant\frac{\mathbf{E}g(|Y|)}{g(a)}.
\end{aligned}$$


## 应用

```ad-example
title: Example 1

$$\begin{aligned}\text{设 }Y\in\mathcal{L}_r,&r>0\text{,则}\\&\mathrm{P}\left(|Y|>x\right)\leq\frac{\mathrm{E}\left|Y\right|^r}{x^r},&&x>0.\end{aligned}$$

```



 