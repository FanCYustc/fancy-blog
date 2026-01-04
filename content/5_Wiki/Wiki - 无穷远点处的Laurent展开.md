---
aliases: 
info: 
date: 2024-04-30-星期二 08:38
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 复分析/级数
id: wiki20240430083849
banner: "![[astrowalk.gif]]"
---
---

## Def 1 无穷远 Laurent 展开

```ad-definition
title: Definition 1

定义无穷远点的邻域 $V (\infty, R)= \{z\in \mathbb{C}: R<|z|<+\infty\}$

对函数 f，做变换 $g (w)= f\left( \frac{1}{w} \right)$，则 f 在 $V(\infty, R)$ 全纯等价于 g 在 $B\left ( 0, \frac{1}{R} \right) / \{0\}$ 全纯

如果存在 R 使得 f 在 $V(\infty,R)$ 上全纯，则称 $\infty$ 是 f 的孤立奇点
```

[[Wiki - 孤立奇点]]


 [[Wiki - 全纯函数]]

## The 1 无穷远点 Laurent 展开

```ad-theorem
title: Theorem 1

如果 $g(w)=f\left( \frac{1}{w} \right)$ 在 0 的展开为

$$
g(z) = \sum_{n=0}^{+\infty} a_{n}z^{n} + \sum_{n=1}^{\infty} a_{-n}z^{-n}
$$



则 f 在无穷远的 Laurent 展开为

$$
f(z) = \sum_{n=1}^{+\infty} a_{-n}z^{n} +\sum_{n=0}^{+\infty} a_{n}z^{-n}
$$



```

[[Wiki - 全纯函数的Laurent展开]]

## Pro  1

```ad-proposition
title: Propositon 1

如果 $\zeta= 0$ 是 g 的可去奇点、 m 阶极点或本性奇点，那么我们相应地称 $z=\infty$ 是 f 的可去奇点、 m 阶极点或本性奇点
```

[[Wiki - 本性奇点]].

[[Wiki - 孤立奇点]]


是无穷远 Laurent 展开的自然推论

