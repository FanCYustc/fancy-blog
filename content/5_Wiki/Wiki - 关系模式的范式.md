---
aliases: 
info: 各种范式的定义与重要性
date: 2023-12-01-星期五 10:29
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数据库
id: wiki20231201102944
banner: "![[astrowalk.gif]]"
---
---

## Def 1 第一范式

```ad-definition
title: Definition 1

关系要符合：每一个分量都是**不可分的数据项**，满足这种条件的关系模式称为**第一范式**

```

## Def 2 第二范式

若 R 满足第一范式，且每一个非主属性 [[Wiki - 主属性]]完全函数依赖于 [[Wiki - 函数依赖#Def 2 完全函数依赖]]于任何一个候选码 [[Wiki - 码的分类#Def 1 候选码]]，则称 R 满足第二范式


第二范式的问题在于可能非主属性会有传递依赖：

```ad-example
title: Example 1

e.g.S-L (Sno, Sdept, Sloc) 满足第二范式，Sloc 为学生住处，每个系的学生住在同一个地方。

Sno→Sdept

Sdept→Sloc

Sno→Sloc

这满足非主属性完全函数依赖于主属性 Sno，但有传递依赖

```

除非 Sno 和 Sdept 相互依赖，否则传递依赖和直接依赖还是有区别的。

## Def 3 第三范式

满足第一范式的关系模式 R（U，F），若 R 中不存在**候选码** [[Wiki - 码的分类]] X，属性组 Y 和非主属性 [[Wiki - 主属性]] Z 不属于 Y，使得 $X\to Y,Y\to Z$，但但 X 不函数依赖 [[Wiki - 函数依赖]]于 Z，称 R 满足**第三范式**

可以验证，**满足第三范式的一定满足第二范式**
反证：假设 $X'\subset X\to Z,\implies X\to X',X'\to Z$ 矛盾


第三范式的问题在于消除了非主属性的部分依赖和传递依赖，但有可能存在主属性的部分依赖和传递依赖

## Def 4 BCNF 范式

```ad-definition
title: Definition 4

若 R (U, F) 满足第一范式，且 $X\to Y$ 且 Y 不属于 X 时一定有 X 是主码，则称 R **满足 BCNF 范式**

```

对于关系模式 R，如果每一个函数依赖的决定因素都包含键，则 R 属于 BCNF 范式。

