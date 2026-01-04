---
aliases:
info:
date: 2023-02-20-星期一 17:44
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230220174409
banner: "![[astrowalk.gif]]"
---
---

```C
void BubbleSort(int a[], int n)  //冒泡排序升序
{    //传入参数为数组名a和数组长度n     
	int i, j;  
    int temp;  
    for (i = 0; i < n - 1; ++i)  
        for (j = 0; j < n - i - 1; ++j)  
            if (a[j] > a[j + 1])  
                temp = a[j], a[j] = a[j + 1], a[j + 1] = temp;  
}  
```