---
aliases: 
info: SQL表格的创建
date: 2023-10-20-星期五 10:19
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - SQL
  - 数据库
id: wiki20231020101935
banner: "![[astrowalk.gif]]"
---
---

CREATE TABLE 表名（
列名数据类型,
Constraint 约束名 Primary key (列名),
）

```ad-example


```SQL
CREATE TABLE Student(
Sno int,
Sname char(20) unique,
Constraint PK_S Primary key(Sno),
)
```



