---
aliases: 
info: 实分析推广的N-L定理
date: 2024-05-27-星期一 09:49
update: 
tags:
  - wiki/year2024
  - wiki/month05
  - 实分析/微分
  - 实分析/lebesgue积分
id: wiki20240527094942
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 牛顿莱布尼茨公式]]

## Pro 1

```ad-proposition
title: Propositon 1


$f\in L^{1}([a,b])$，令 $G (x)=\int _{a}^{x}f (t) \, dt, x\in[a,b]$，则 $G' (x)=f (x)a.e.x\in [a,b]$

```

### Proof

结论 1 利用 ![[Wiki - 绝对连续#Pro 3]] 
结论 2 利用 [[Wiki - lebesgue微分定理#Cal 2]]



## The 1 N-L 定理

```ad-theorem
title: Theorem 1


$(i)$ 设 $F\in AC[a,b]$, 则 $F^\prime$ 几乎处处存在且
$$\int_a^xF'(t)\:dt=F(x)-F(a),\quad\forall\:x\in[a,b].$$

$(ii)$ 相反的，对任意 $f\in L^1([a,b])$, 存在 $F\in AC[a,b]$ 使得 $F^\prime(x)=f(x),a.e.x\in[a,b].$

```

[[Wiki - 绝对连续]]

### Proof

结论 1：利用 [[Wiki - 绝对连续#Pro 3]]，令 $G(x)=\int _{a}^{x}F'(t) \, dt,H(x)=F(x)-G(x)$，所以 $G\in AC[a,b]$ 且由 Pro 1 得 $G'(x)=F'(x)a.e.$

所以由 [[Wiki - 绝对连续#The 1]] $H (x)=c, x\in [a,b]$

结论 2 利用 pro 1

