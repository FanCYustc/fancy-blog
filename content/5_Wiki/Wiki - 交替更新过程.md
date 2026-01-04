---
aliases: 
info: 
date: 2024-04-16-星期二 17:06
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/更新过程
id: wiki20240416170630
banner: "![[astrowalk.gif]]"
---
---

## Def 1 交替更新过程


```ad-definition
title: Definition 1

对更新过程 $\{N(t)\}$，记 $X_{n}=Y_{n}+Z_{n}$，在 Z 时处于 on 状态，在 Y 处于 off 状态，且 $(Y_{n},Z_{n})iid$，但**允许不相互独立**，且 $Z_{n}\sim H, Y_{n}\sim G, X_{n}\sim F$。此计数过程[[Wiki - 计数过程]]称为交替更新过程

```

 [[Wiki - 更新过程]]
 
[[Wiki - 计数过程]]

## The 1

```ad-theorem
title: Theorem 1

求时刻 t 处于状态 on 的概率
$$\text{设 }\mu_{F}<\infty,F\text{ 非格点,则}\lim_{t\to\infty}P(t)=\frac{\operatorname{E}Z_{1}}{\operatorname{E}Z_{1}+\operatorname{E}Y_{1}}.$$


```

### Proof

对 $S_{N(t)}$ 取条件，第一项分出来 $S_{N(t)}=0$，化成 [[Scientech - 随机过程-更新过程#应用]]中的形式，再利用关键更新定理 [[Wiki - 关键更新定理]]


