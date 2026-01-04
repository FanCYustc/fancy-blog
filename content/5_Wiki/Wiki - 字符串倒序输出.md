---
aliases:
info:
date: 2026-01-04-星期日 12:30
update:
tags:
  - wiki/month01
  - wiki/year2023
id: wiki20260104123004
banner: "![[astrowalk.gif]]"
---
---


```
1. BEGIN
2.      ->char a[]
3.      n<-strlen(a)
4.      int i<-0
5.      while(i<$\frac{n}{2}-1$)
6.      BEGIN
7.           char temp<-a[i]
8.           a[i]<-a[n-1-i]
9.           a[n-1-i]<-temp
10.          i++
11.     END
12.     i<-0
13.     while(i<n)
14.     BEGIN
15.           printf a[i]
16.     END
17. END
```

[[Wiki - 字符串操作]]

[[Wiki - 字符串倒序输出]]