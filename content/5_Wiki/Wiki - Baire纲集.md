---
aliases:
  - 疏集
  - 无处稠密
info: 
date: 2024-10-21-星期一 15:02
update: 
tags:
  - wiki/year2024
  - wiki/month10
  - 泛函分析/范畴论
id: wiki20241021150221
banner: "![[astrowalk.gif]]"
---
---

## Def 1 疏集

(X, d) 为度量空间 [[Wiki - 度量空间]]，若集合 $E\subset X$，$\overline{E}$ [[Wiki - 度量空间的内部外部|闭包和内部]]没有内点，就称 E 为疏集或 E 无处稠密

[[Wiki - 度量空间的稠密性]]

例如 contor 集无处稠密[[Wiki - 康托集]]

## Def 2 baire 纲集

第一纲集：可数个无处稠密集的并

第二纲集：不是第一纲集的集

剩余集：第一纲集的余集

剩余集都是第二纲集

```ad-example


$C[0,1]$ 上处处不可微的函数全体是剩余集，于是是第二纲集

```

### Proof

证明 $C[0, 1] / X= \{在(0,1)上至少一点可微\}$ 为第一纲集

只需证 $A_{n} = \left\{ f\in C[0,1]\mid \exists t\in (0,1), \sup_{h\in (-1 / n, 1 / n)} |\frac{{f(t+h)-f(t)}}{h} |\leq n \right\}$ 都是疏集

