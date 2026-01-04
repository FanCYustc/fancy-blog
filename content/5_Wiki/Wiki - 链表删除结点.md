---
aliases:
info:
date: 2023-02-21-星期二 15:21
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230221152132
banner: "![[astrowalk.gif]]"
---
---

```C
Node* ListDelete(Node *head, int no){  
    Node *p,*q;  
    if(head->num == no){  //若删除结点为头结点         
    p = head;                   //p保存当前结点        
     head = p->next;
      //头指针指向当前第二个结点（有可能为NULL）         
     free(p);         //释放p指向空间         
     return head;             //函数结束，返回头结点     
     }    
      q = p = head;//p指向当前比较结点，q指向其前驱结点     
      while(p != NULL && p->num != no){   //注意 && 两边的表达式不能交换，因为当p = NULL时引用p->num会出错         
      q = p;          //q前移         
      p = p->next;        //p前移     
      }  
    if(p != NULL){     //说明找到待删除结点        
     q->next = p->next;    //删除结点         
	free(p);  
    }  
    else printf("未找到该结点，删除失败，返回原链表\n");  
    return head;  
}  
```