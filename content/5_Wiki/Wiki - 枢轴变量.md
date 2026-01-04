---
aliases: 
info: 枢轴变量的确定方法
date: 2024-04-09-星期二 14:44
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 数理统计/区间估计
id: wiki20240409144411
banner: "![[astrowalk.gif]]"
---
---

## Def 1 枢轴变量

确定置信区间的方法，一般需要找到一些普遍不变的置信区间[[Wiki - 置信区间]]，

构造方法如下：

(1) 找待估参数 $\mu$ 的一个良好点估计（通常为无偏估计[[Wiki - 无偏估计]]，且最好基于充分统计量，或者是 UMVUE），此例中这个点估计是 $T(X)=\bar{X}.$ 

```ad-definition
title: Definition 1

(2) 构造一个 $T(X)$ 和 $\mu$ 的函数 $\varphi(T,\mu)$, 使其满足

(i) 其表达式与待估参数 μ 有关，

 (ii) 其分布与待估参数 $\mu$ 无关，
 
则称随机变量 $\varphi(T,\mu)$ 为**枢轴变量**. 本例中这一变量即为 $U=\sqrt{n}(\overline{X}-\mu)/\sigma$, 它的表达式与 $\mu$ 有关，但其分布 $N(0,1)$ 与 $\mu$ 无关. 因此 $U$ 为枢轴变量.


```

(3) 对给定的 $0<\alpha<1$, 决定两个常数 $a$ 和 $b$ (本例中 $a, b$ 为 $\pm u_\alpha/2$）, 使得

$$
P_\mu\left(a\leqslant\varphi(T,\mu)\leqslant b\right)=1-\alpha.
$$
对应 $\hat{\mu}_{1}(\boldsymbol{X})\leq \mu\leq  \hat{\mu}_{2}(\boldsymbol{X})$，$[\hat{\mu}_{1}(\boldsymbol{X}),\hat{\mu}_{2}(\boldsymbol{X})]$ 即为置信水平为 $1-\alpha$ 的置信区间



