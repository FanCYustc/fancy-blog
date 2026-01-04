---
aliases: 
info: 各种码的名词定义
date: 2023-12-01-星期五 10:37
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 数据库
  - SQL
id: wiki20231201103720
banner: "![[astrowalk.gif]]"
---
---

## Def 1 候选码

对于关系 R (U)，如果对 U 的子集 K，有 $K\xrightarrow{F} U$ [[Wiki - 函数依赖#Def 2 完全函数依赖]]，则 K 可以作为 R 的**候选码**

## Def 2 主码

候选码可以有好几个，最后被选定的那个叫**主码**


## Pro 1 超码

候选码 K 的任何一个真子集都不是候选码。U 部分依赖于的子集 K'称为**超码**

## 全码

整个属性组 U 是 U 的候选码，这种情况称为**全码**。即 U 中的属性缺一个都不能唯一确定 R 中的元素

