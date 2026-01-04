---
aliases:
info: 寻找结点
date: 2023-02-21-星期二 15:03
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230221150337
banner: "![[astrowalk.gif]]"
---
---

```C
//寻找结点  
Node* ListSearch(Node* head, int no)
{        //这里返回类型Node*是考虑到寻到结点后可能对该结点有后续操作，因此返回指针；若未寻到返回NULL     
Node* p = head;  
    while(p != NULL){  
        if(p->num == no)  
            break;  
        p = p->next;  
    }     if(p == NULL)  
        printf("未找到该结点，返回NULL\n");  
    return p;  
}
```

