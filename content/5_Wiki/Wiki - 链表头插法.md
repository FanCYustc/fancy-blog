---
aliases:
info:
date: 2023-02-21-星期二 14:53
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230221145355
banner: "![[astrowalk.gif]]"
---
---

```C
Node* CreateList_head(){  
    Node *head = NULL, *p;  //头指head = NULL置空表    
     int no;  
    printf("输入 ");//打印提示信息，必要时可以省略，节约时间     
    scanf("%d", &no);  //输入循环控制数据 
  //应先输入控制数据然后再申请结点，否则结束时会多分配结点，使操作冗余甚至浪费空间     
  while(no != 0)
  {    //当输入数据值不是结束标志  
  //这里将0作为结束标志，为避免引起歧义，需通过注释或打印信息指明结束标志是什么。        
	 p = (Node*)malloc(sizeof(Node));    
   //申请新结点，用指针p指向该结点         
	 p->num = no;                        
   //给新结点赋予相关数据值，p->num也可写为(*p).num)  
        /* scanf输入其他信息如姓名、性别、学号等 */  
    p->next = head; //新结点指针域指向原表头结点  
    head = p;   //新结点插入表头  
    printf("输入 ");  
    scanf("%d", &no); //输入循环控制数据     
    }  
    return head;  
}  
```

最终结果插的越早的排的越靠后，但代码容易理解

比较：
[[Wiki - 链表尾插法]]