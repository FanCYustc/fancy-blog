---
aliases:
info: 字符串长度，字符串比较，字符串复制，字符串连接
date: 2023-02-21-星期二 14:51
update: 2023-02-21-Tuesday 14:52:30
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230221145111
banner: "![[astrowalk.gif]]"
---
---

```C
//字符串长度  
int myStrlen(const char str[]) {  
    int len = 0;  
    while (str[len] != '\0')  
        ++len;  
    return len;  
}  
  
//字符串比较  
int myStrcmp(char s1[], const char s2[]) {  
    int i;  
    for (i = 0; s1[i] == s2[i] && s1[i] != '\0'; ++i);  
    return s1[i] - s2[i];  
}  
  
//字符串连接  
char* myStrcat(char s1[], const char s2[]) {  
    int i, j;  
    for (i = 0; s1[i] != '\0'; ++i);  
    for (j = 0; (s1[i] = s2[j]) != '\0'; ++i, ++j);  
    return s1;  
}  
  
//字符串拷贝  
char* myStrcpy(char s1[], const char s2[]) {  
    int i;  
    for (i = 0; (s1[i] = s2[i]) != '\0'; ++i);  
    return s1;  
}  
```