---
aliases:
info:
date: 2023-02-20-星期一 17:51
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230220175104
banner: "![[astrowalk.gif]]"
---
---

```C
//折半查找（升序） 
int binarySearch(int a[], int n, int key)
{    //传入参数为升序数组a，数组长度n和查找key
	int mid, low = 0, high = n - 1;  
    while(low <= high){  
        mid = (low + high) / 2;  
        if(key < a[mid])  
            high = mid - 1;  
        else if(key > a[mid])  
            low = mid + 1;  
        else  
            return mid;  
    }  
    return -1;  
}  
```

