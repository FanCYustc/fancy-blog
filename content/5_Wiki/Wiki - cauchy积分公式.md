---
aliases: 
info: 
date: 2024-04-11-星期四 09:58
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/积分
id: wiki20240411095839
banner: "![[astrowalk.gif]]"
---
---

## The 1 cauchy 积分公式

```ad-theorem
title: Theorem 1

```
设 $D$ 是由可求长简单闭曲线 $\gamma$ 围成的域 [[Wiki - 连通区域#Definition 2 区域]]，如果 $f\in H(D)\bigcap C(\overline{D})$ [[Wiki - 全纯函数]], 那么对任意 $z\in D$, 均有

$$f(z)=\frac1{2\pi\mathrm{i}}\int_{\gamma}\frac{f(\zeta)}{\zeta-z} d \zeta $$ 


需要连续到边界

有值是 $\frac{1}{\xi-z}$ 不全纯

## The 2 一般形式

```ad-theorem
title: Theorem 2

设 $D$ 是由可求长简单闭曲线 $\gamma$ 围成的域，如果 $f{\in}H(D)\bigcap C(\overline{D})$, 那么 $f$ 在 $D$ 上**有任意阶导数**，而且对任意 $z\in D$, 有

$$f^{(n)}(z)=\frac{n!}{2\pi\mathrm{i}}\int_\gamma\frac{f(\zeta)}{(\zeta-z)^{n+1}}\mathrm{d}\zeta,n=1,2,\cdotp\cdotp\cdotp.$$


```

### Proof

归纳递推证明，具体见 [[Book - 复变函数]] 3.4 节的证明

用到[[Wiki - 长大不等式]]

## Cal 1 

类似于 [[Wiki - cauchy积分定理]]，对于简单 Jordan 曲线围成的多连通域 [[Wiki - 连通区域#Def 4 单连通]]，也有同样的结论