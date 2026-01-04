---
aliases: 
info: n阶导的cauchy不等式
date: 2024-05-10-星期五 20:47
update: 
tags:
  - wiki/year2024
  - 复分析/积分
  - 复分析/全纯函数
  - wiki/month03
id: wiki20240510204757
banner: "![[astrowalk.gif]]"
---
---

## The 1 cauchy 估计

我们知道全纯函数 [[Wiki - 全纯函数]]由任意阶导数，这里估计导数的模长界

```ad-theorem
title: Theorem 1

设 $f$ 在 $B(a,R)$ 中全纯，且对任意 $z\in B(a,R)$, 有 $|f(z)|\leqslant M$, 那么
$$|f^{(n)}(a)|\leqslant\frac{n!M}{R^n},n=1,2,\cdotp\cdotp\cdotp.$$


```
### Proof

用到 [[Wiki - cauchy积分公式]]和 [[Wiki - 长大不等式]]

$$
\begin{align}
|f^{(n)}(a)|&= |\frac{n!}{2\pi i}\int _{|z-a|=R} \frac{f(z)}{(z-a)^{n+1}} \, dz|  \\
&\leq \frac{n!}{2\pi} \frac{{2\pi RM}}{R^{n+1}}= \frac{n!M}{R^{n}}
\end{align}
$$

