---
aliases: 
info: 
date: 2024-03-19-星期二 08:22
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 复分析
  - 几何学/射影几何
id: wiki20240319082258
banner: "![[astrowalk.gif]]"
---
---

## Def 1 对称点

```ad-definition
title: Definition 1

$z,z^{*}$ 关于广义圆周 $|z-a|=R$ 对称当且仅当 $z,z^{*}$ 落在从 a 出发的射线上，且 $|z-a\mid|z^{*}-a|=R^{2}$

```
[[Wiki - 射影对偶原理]]

其实经过计算，其实也是 $z^{*}=a+ \frac{R^{2}}{\bar{z}-\bar{a}}$，特别的 a 的对称点为无穷远

如果加上广义圆周，即 $\gamma$ 为过 a 且与实轴夹角为 $\theta$ 的直线，则有
$$
z^{*}-a = (\bar{z}-\bar{a})e^{2i\theta}
$$

## Pro1 与交比的关系

```ad-proposition
title: Propositon 1

$z,z^{*}$ 关于**广义圆周** $\gamma$ 对称，当且仅当对任意 $z_{1}, z_{2}, z_{3}\in \gamma$，有 $(z^{*},z_{1},z_{2},z_{3})=\overline{(z,z_{1},z_{2},z_{3})}$ 

```

[[Wiki - 交比]]

## Pro 2 分式线性变换下不变

```ad-proposition
title: Propositon 2

对称点的对称性在分式线性变换下不变，即若 $z,z^{*}$ 关于广义圆周 $\gamma$ 对称，则在莫比乌斯变换 T 下，$T(z),T(z^{*})$ 关于圆周 $T(\gamma)$ 对称

```


还是圆周是由 [[Wiki - 分式线性变换#Pro 2 保圆]]得到的
