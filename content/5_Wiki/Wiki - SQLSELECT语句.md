---
aliases:
  - 聚集函数
info: 
date: 2023-10-20-星期五 11:59
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - SQL
  - 数据库
id: wiki20231020115918
banner: "![[astrowalk.gif]]"
---
---

## Select 后内容可以是：

### 可查询指定列，

### \*表示查询全部列

### 可加表达式：
```SQL
Select Sno + ':' + Sname AS 学生，Year(Getdate())－Sage AS 出生年份 From Student
```

### 可加函数：

#### 日期函数：

Getdate: 返回系统日期和时间

Year：返回指定日期中的年份


#### 字符串函数：

Str：将数值类型转换为字符串

Left：返回字符串左边指定数目的字符

Replace：字符串替换

#### 聚集函数

Count (列名)：对一列中的值计数

Count (\*)：计算记录个数

SUM (列名)：求一列值的总和（数值）

AVG (列名)：求一列值的平均值

MIN (列名)：求一列值的最小值

MAX (列名)：求一列值的最大值

## 去除重复数据

用 DISTINCT

## 使用别名

AS（有空格时别名必须用“”括起来）