---
aliases:
info:
date: 2023-02-20-星期一 17:45
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230220174506
banner: "![[astrowalk.gif]]"
---
---

```C
//选择排序（升序）  
void SelectSort(int a[], int n)
{    //传入参数为数组名a和数组长度n  
    int i, j, k;  
    int temp;  
    for (i = 0; i < n; ++i) {  
        k = i;  
        for (j = i + 1; j < n; ++j)  
            if (a[j] < a[k]) k = j;  
        if (k != i)  
            temp = a[k], a[k] = a[i], a[i] = temp;  
    }  
} 
```