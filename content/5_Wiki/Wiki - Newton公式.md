---
aliases: 
info: 对称多项式的牛顿公式
date: 2023-09-27-星期三 10:47
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 线性代数/多项式
id: wiki20230927104738
banner: "![[astrowalk.gif]]"
---
---

## The 1 newton 公式
```ad-theorem
title: Theorem 1


记 $S_{k}=x_{1}^{k}+x_{2}^{k}+\dots+x_{n}^{k}$，$S_{0}=n$

则
$$
S_{k}-\sigma_{1}S_{k-1}+\sigma_{2}S_{k-2}-\dots+(-1)^{k}\sigma_{k}S_{0}=0\quad 1\leq k\leq n
$$

$$
S_{k}-\sigma_{1}S_{k-1}+\sigma_{2}S_{k-2}-\dots+(-1)^{n}\sigma_{n}S_{k-n}=0\quad  k> n
$$



```

[[Wiki - 对称多项式#Def 2 基本对称多项式]]
### Proof

先证 k>n：
考虑

$$
f(x)=(x-x_{1})(x-x_{2})\dots(x-x_{n})=x^n-\sigma_{1}x^{n-1}
+\dots+(-1)^{n}\sigma_{n}$$

$$
\begin{align}
S_{k}-\sigma_{1}S_{k-1}+\sigma_{2}S_{k-2}-\dots+(-1)^{n}\sigma_{n}S_{k-n} \\
=\sum_{i=1}^{n}(x_{i}^{k}-\sigma_{1}x_{i}^{k-1}+\dots+(-1)^{n}\sigma_{n}x^{k-n}) \\
=\sum_{i=1}^{n}x_{i}^{k-n}f(x_{i})=0
\end{align}
$$

再证 $1\leq k\leq n$ ：

待求式为
$$
(S_{0}x^{k}+S_{1}x^{k-1}+\dots+S_{k})(x^{n}-\sigma_{1}x^{n-1}+\dots+(-1)^{n}\sigma_{n})
$$

中 $x^{n}$ 的系数

$$
\begin{align}
(S_{0}x^{k}+S_{1}x^{k-1}+\dots+S_{k})f(x) \\
=\sum_{i=1}^{n}(x^{k}+x^{k-1}x_{i}+\dots+x_{i}^{k})f(x) \\
=\sum_{i=1}^{n} \frac{{x^{k+1}-x_{i}^{k+1}}}{x-x_{i}} f(x) \\
=x^{k+1}\sum_{i=1}^{n} \frac{{f(x)}}{x-x_{i}}+\sum_{i=1}^{n} \frac{{x_{i}^{k+1}}f(x)}{x-x_{i}}
\end{align}
$$

第二项次数小于 n，只考虑前一项

$$
=x^{k+1}f'(x)=x^{k+1}(nx^{n-1}-(n-1)\sigma_{1}x^{n-2}+\dots+(-1)^{k}(n-k)\sigma_{k}x^{n-k-1}+\dots)
$$

当 k=n 时可得 $F_{n,k}=S_{k}-\sigma_{1}S_{k-1}+\sigma_{2}S_{k-2}-\dots+(-1)^{k}\sigma_{k}S_{0}=0$

归纳：假设 $n-k<m$ 时已证，

$F_{n,k}(x_{1},x_{2},\dots,x_{n-1},0)=F_{n-1,k}(x_{1},x_{2},\dots,x_{n-1})=0$

由归纳假设

所以 $x_{n}\mid F_{k,n}(x_{1},\dots,x_{n})$

由对称性 $x_{1}x_{2}\dots x_{n}\mid F_{n,k}(x_{1},\dots,x_{n})$

但 $deg F_{n,k}(x_{1},\dots,x_{n})=k<n$，所以 $F_{n,k}(x_{1},\dots,x_{n})=0$

