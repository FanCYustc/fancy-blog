---
aliases:
  - pdf
info: 概率密度函数性质
date: 2023-08-21-星期一 10:52
update: 
tags:
  - wiki/year2023
  - wiki/month08
  - 概率论/随机变量
id: wiki20230821105213
banner: "![[astrowalk.gif]]"
---
---


## Def 1 概率密度函数

```ad-definition
title: Definition 1

设**连续性随机变量 X** 有概率分布函数 F（x)[[Wiki - 分布函数]], 则

F (x) 的导数 f (x）= F’（x), 称为 X 的概率密度函数

```
```ad-note

这种连续交绝对连续，还有与之区分的**奇异连续**

奇异连续是指其分布对应的测度在lebegue零测集的余集上恒为0，即F的导数几乎处处为0

```

## Pro  1

连续型随机变量 X 的密度函数 f（x) 都具有以下三条基本性质:

1° $f (x)\geqslant0$
2° $\int_{-\infty}^{\infty}f (x)\mathrm{d}x\:=\:1$
3°对任何常数 a<b 有

$$
P(a\leqslant X\leqslant b)\:=\:F(\:b\:)\:-\:F(\:a\:)\:=\int_{a}^{b}(\:x\:)\mathrm{d}x
$$



