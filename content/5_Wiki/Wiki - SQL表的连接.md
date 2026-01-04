---
aliases: 
info: SQL表的连接
date: 2023-10-20-星期五 11:57
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - SQL
  - 数据库
id: wiki20231020115757
banner: "![[astrowalk.gif]]"
---
---

## 卡氏连接：不加称谓词

```SQL
SELECT Student.*,SC.*

FROM Student, SC;
```

## 自然连接：
```SQL
SELECT Student.Sno, Sname,Ssex,Sage,Sdept,Cno,Grade
FROM Student, SC
WHERE Student.Sno = SC.Sno;
```

## 外连接

左外连接：用 (\*)
```SQL
SELECT Student.Sno, Sname, Ssex, Sage, Sdept, Cno, Grade
FROM Student, SC
WHERE Student.Sno = Sc.Sno(*);
```

```ad-note

WHERE语句可以有好几个条件进行复合连接

```
