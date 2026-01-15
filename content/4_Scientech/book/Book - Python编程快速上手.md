---
aliases:
year:
category: 计算机
rate: 0
info: 23暑Python自学
date: 2023-08-09-星期三 21:21:11
update: 2026-01-09-星期五 10:33:13
tags:
  - book/year2023
  - book/month08
id: book20230809212111
banner: "![[astrogate.gif]]"
banner_x: 0.5
banner_y: 0.012
---
---
#Python 

# 第一部分 Python 编程基础

## 第一章-python 基础

[[Artpatch - Python-简单语句]]

## 第二章-控制流

[[Artpatch - Python-结构化程序设计]]

## 第三章-函数

[[Artpatch - Python-模块化程序设计]]


## 第四章-列表

[[Artpatch - Python-数据按组存储]]


```Python
Names= []
while True:
	print('Enter name ' + str(len(Names) + 1))
	name= input()
	if name == '':
		break
	Names = Names + [name]
print('The names are:')
for name in Names:
	print(' ' + name)
```

也介绍了字符串和元组

## 第五章-字典和结构化数据

[[Artpatch - Python-数据按组存储#字典]]

例子：井字棋


每次修改字典中的 value，再使用同一个函数打印

## 第六章-字符串操作

介绍了“”写长字符串

多行注释

upper () 和 lower () 字符串方法返回一个新字符串，其中原字符串的所有字母都被相应地转换为大写或小写。字符串中非字母字符保持不变。

isalpha () 返回 True，如果字符串只包含字母，并且非空；isalnum () 返回 True，如果字符串只包含字母和数字，并且非空；isdecimal () 返回 True，如果字符串只包含数字字符，并且非空；isspace () 返回 True，如果字符串只包含空格、制表符和换行，并且非空；istitle () 返回 True，如果字符串仅包含以大写字母开头、后面都是小写字母的单词。

[[Wiki - 字符串方法join()和split()]]


'Hello'. rjust (10) 是说我们希望右对齐，将'Hello'放在一个长度为 10 的字符串中。'Hello'有 5 个字符，所以左边会加上 5 个空格，得到一个 10 个字符的字符串，实现'Hello'右对齐。 rjust () 和 ljust () 方法的第二个可选参数将指定一个填充字符，取代空格字符。

# 第二部分 自动化任务

## 第七章-模式匹配与正则表达式


不用正则表达式查找：但需要自己编写查找标准的函数


Python 使用正则表达式`\d\d\d-\d\d\d-\d\d\d\d`，来匹配前面 isPhoneNumber () 函数匹配的同样文本：3 个数字、一个短横线、3 个数字、一个短横线、4 个数字。

正则表达式在 re 模块中

[[Artpatch - Python-正则表达式]]

有时候，想匹配的模式是可选的。就是说，不论这段文本在不在，正则表达式都会认为匹配。字符? 表明它前面的分组在这个模式中是可选的。例如，在交互式环境中输入以下代码：  >>> batRegex = re. compile (r'Bat (wo)? man') >>> mo1 = batRegex. search ('The Adventures of Batman') >>> mo1. group () 'Batman'  >>> mo2 = batRegex. search ('The Adventures of Batwoman') >>> mo2. group () 'Batwoman'

## 第八章-读写文件


```Python
import os
```
 