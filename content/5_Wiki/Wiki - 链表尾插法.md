---
aliases:
info:
date: 2023-02-21-星期二 14:56
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230221145603
banner: "![[astrowalk.gif]]"
---
---

```C
Node* CreateList_tail(){  
    Node *head = NULL, *rear = NULL, *p;            //头指针head = NULL置空链表，尾指针rear  
    int no;  
    printf("输入 ");  
    scanf("%d", &no); //输入循环控制数据     
    while(no != 0)
    {      //当输入数据值不是结束标志  
        p = (Node*)malloc(sizeof(Node));    //申请新结点，用指针p指向该结点         
        p->num = no;    //给新结点赋予相关数据值  
        /* scanf输入其他信息如姓名、性别、学号等 */  
        if(head == NULL)   //如果链表为空            
         head = p;  //表示新插入的结点是首结点，头指针指向首结点  
        else  
            rear->next = p;                    
            //否则将新结点插入到尾指针指向的结点之后  
        rear = p;  //使尾指针指向新结点  
        printf("输入 ");  
        scanf("%d", &no);   //输入循环控制数据     
        }     
        if(rear != NULL)  
        rear->next = NULL;  
    return head;  
}  
```