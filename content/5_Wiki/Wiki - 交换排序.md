---
aliases:
info:
date: 2023-02-20-星期一 17:48
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230220174851
banner: "![[astrowalk.gif]]"
---
---

```C
//交换排序（升序）  
void swapSort(int a[], int n) 
{        //传入参数为数组名a和数组长度n    
	int i, j, tmp;  
    for (i = 0; i < n - 1; ++i)  
        for (j = n - 1; j > i; --j)  
            if (a[i] > a[j])  
                tmp = a[i], a[i] = a[j], a[j] = tmp;  
}  
```