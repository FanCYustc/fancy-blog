---
aliases: 
info: 
date: 2023-12-22-星期五 10:28
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - SQL
  - 数据库/并发控制
id: wiki20231222102834
banner: "![[astrowalk.gif]]"
---
---

## Def 1 事务

事务是并发控制的基本单位，是一系列操作，这些操作要么全做，要么全不做，是一个不可分割的工作单位，称为 DB**逻辑工作单位**。

语法：

```SQL
BEGIN TRANSACTION

COMMIT

ROLLBACK
```

