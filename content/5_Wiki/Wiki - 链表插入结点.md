---
aliases:
info: 插到指定位置，按顺序插入
date: 2023-02-21-星期二 15:04
update:
tags:
  - wiki/year2023
  - wiki/month02
  - C语言
id: wiki20230221150442
banner: "![[astrowalk.gif]]"
---
---
#### 已有链表各结点按顺序排好
```C
//以升序为例
Node* ListInsert_ascending(Node *head, Node *ps)
{     //传入参数是链表头指针head和指向待插入结点的指针ps     
Node *p,*q;  
         
    if(head == NULL)
    {     //如果链表为空，则待插入结点即为头结点，头指针指向该结点  
        ps->next = NULL;  
        return ps;  //函数结束，返回头指针    
     }  
      
    else if(ps->num <= head->num){            //若待插入结点的数据小于等于头结点的数据，按升序应插入第一个位置         
     ps->next = head;//ps->next指向原头结点          
     return ps;   //待插入节点成为新的头结点，返回头指针     
	}  
    
	else{
     p = q = head;    //p用来指向当前与*ps比较的结点，q用来保存p的前驱结点     
     while(p != NULL && p->num < ps->num){   //当p != NULL且p当前指向结点的数值小于待插入结点的数值                                             
     //注意 && 两边的表达式不能交换，因为当p = NULL时引用p->num会出错         
     q = p;       //q前移，也可写为 q = q->next; 修改后可以与后一句交换顺序，否则不能         
     p = p->next;}   //p前移     
     }   //循环结束，q指向应插入结点的前一个位置，p指向应插入结点的后一个位置（当*ps数据大于链表所有元素时p = NULL）     
     q->next = ps;   //插入结点     
     ps->next = p;  
    return head;    //函数结束，返回头指针 
}  


```

#### 插入到指定位置

```C
Node* ListInsert_position(Node* head, Node* ps, int pos) {    //传入参数是链表头指针head，指向待插入结点的指针ps和插入位置pos    
if (pos == 1) {       
//若插入到链表第一个位置         
ps->next = head;  
        return ps;  
    }  
    int i = 1;  
    Node* p = head;  
    while (p != NULL && i < pos - 1) {  
        p = p->next;  
        i++;  
    }  
    if (p == NULL || i >= pos) {            //前者意味着pos > Length，后者意味着pos < 1         
    printf("位置错误，插入失败，返回原链表\n");  
        return head;  
    }  
    ps->next = p->next;                        //插入结点     
    p->next = ps;  
    return head;  
}  
```

#### 插入到指定结点后

```C
  
Node* ListInsert_xnode(Node *head, Node *ps, int no){        //传入参数是链表头指针head，指向待插入结点的指针ps和指定结点的数值no     
Node *p = ListSearch(head, no);  
    if(p == NULL)  
        printf("该结点不存在，插入失败，返回原链表\n");  
    else{  
        ps->next = p->next;                    //插入结点         
        p->next = ps;  
    }  
    return head; 
}
```