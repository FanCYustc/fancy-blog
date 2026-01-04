---
aliases: 
info: 
date: 2024-03-01-星期五 09:08
update: 
tags:
  - wiki/year2024
  - wiki/month03
  - 算法
id: wiki20240301090809
banner: "![[astrowalk.gif]]"
---
---

## Def 1 时间复杂度

```ad-definition
title: Definition 1

对一个算法，记录基本操作的重复次数是关于算法执行规模的函数

算法的时间度量记为 $T(n)=O(f(n))$，O 表示渐进上界

即 $\exists N, C, n>N\to |T (n)|\leq C\mid f(n)\mid$


```

O (1) 常量阶，O (n) 线性阶，$O(n^{2})$ 平方阶

通常希望复杂度为**多项式级别**


算法的时间复杂度还可以分为最好、最差和平均三种情况，跟运气有关，通常关注**平均复杂度**。

e.g.
```C
Status SequenceSearch(int a[], int n, int key)   {  

           /* 若查找成功则返回元素下标值，否则返回-1 */  
    int i；           for (int i = 0; i<n; i++)  
              if (a[i] == key) return i;  
           return INFEASIBLE;  
     }
```
若 $a[0]$ 就是 key，那复杂度为 O (1)，对平均情况，复杂度为 O (n)


