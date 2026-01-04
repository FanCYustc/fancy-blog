---
aliases: 
info: lebesgue外测度的定义和性质
date: 2024-03-05-星期二 19:07
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 实分析/测度论
id: wiki20240305190744
banner: "![[astrowalk.gif]]"
---
---

## Def 1 外测度

与 [[Scientech - 数学分析-Riemann积分#18.1 R2 的面积集合]]不同，**从有限划分变成了可数划分**，比 Jordan 可测集多了一部分


```ad-definition
title: Definition 1

若 $E$ 是 R $^d$ 的**任何子集**，$E$ 的外测度是

$$
m_*(E)=\inf\sum_{j=1}^\infty\mid Q_j\mid\:,
$$
 
其中下确界对所有覆盖 $E\subset\bigcup_iQ_j$ 的**可数个闭方体**取值。外测度总是非负的但可以取无穷，所以一般我们有 $0\leq m _{*}(E)<\infty$, 因此可在扩充的正数里取值。

```

```ad-note

**这里的闭方体可以改成开方体；闭方体可以改成闭矩体**

```

## Pro 1

```ad-proposition
title: Propositon 1

1. 单调性：$E_{1}\subset E_{2}\to m_{*}(E_{1})\leq m_{*}(E_{2})$
2. 可数可加性：若 $E=\cup_{j=1}^{\infty}E_{j}$，$m_{*}(E)\leq \sum_{j=1}^{\infty}m_{*}(E_{j})$
3. 外正则性：$m_{*}(E)=\inf m_{*}(O)$，O 取遍**所有包含 E 的开集**
4. 可加性：$E=E_{1}\cup E_{2},d(E_{1},E_{2})>0$ (**与不交不同，更严格**)，则 $m_{*}(E)=m_{*}(E_{1})+m_{*}(E_{2})$
5. E 是可数个**几乎不相交**（内点不交）方体的并，$E=\cup_{j=1}^{\infty}Q_{j}$，则 $m_{*}(E)=\sum_{j=1}^{\infty}|Q_{j}|$
6. 平移不变性：$m_{*}(E)=m_{*}(E+x), x\in \mathbb{R}^{d}$
7. $\lambda E= \{\lambda x: x\in E\}, m_{*}(\lambda E)=|\lambda|^{d} m_{*}(E)$

```

[[Wiki - 度量空间的开集闭集]]

尽管有 4, 5 性质，也不能得到 Jordan 测度中的 [[Wiki - 面积的基本性质#Pro2 可加性]]

**此时还没有规定 lebegue 可测集呢**

## Cal 1

性质 5 证明中用到的引理：

$F_{1},\dots ,F_{N}$ 是两两不交的紧集 [[Wiki - 紧致集合]]，则

$$
m_{*}(\cup_{i=1}^{N}F_{i})=\sum_{i=1}^{N}m_{* }(F_{i})
$$

证明中利用到性质 4，具体见实分析讲义

