---
aliases: Taylor's Formula
info: 泰勒公式，不同余项
date: 2023-01-11-星期三 20:59
update:
tags:
  - wiki/year2023
  - wiki/month01
id: wiki20230111205956
banner: "![[astrowalk.gif]]"
---
---

#### 泰勒公式另一种证明：

[[Wiki - 分部积分]]从分部积分角度：

Proof: $$
\begin{align}
f(x)-f(a)=\int_a^xf'(t)dt=-\int_a^xf'(t)(x-t)'dt=\\
-f'(t)(x-t)|_a^x+\int_a^xf''(t)(x-t)dt
\end{align}
$$
由分部积分公式
$$
=f'(a)(x-a)-\frac{1}{2}\int_a^xf''(t)((x-t)^2)'dt=……
$$
以此类推可得
$$
f(x)=f(a)+\frac{1}{1!}f'(a)(x-a)+\cdots+\frac{1}{(n-1)!}f^{(n-1)}(a)(x-a)^{n-1}+r_{n-1}
$$
其中
$r_{n-1}=\frac{1}{(n-1)!}\int_a^xf^{(n)}(t)(x-t)^{n-1}dt$
