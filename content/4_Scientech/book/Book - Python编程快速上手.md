---
aliases: 
year: 
category: 计算机
rate: 0
info: 23暑Python自学
date: 2023-08-09-星期三 21:21:11
update: 
tags: [book/year2023, book/month08]
id: book20230809212111
banner: "![[astrogate.gif]]"
annotation-target: "Python编程快速上手—让繁琐工作自动化.pdf"
banner_x: 0.5
banner_y: 0.012
---
---
#Python 

# 第一部分 Python 编程基础

## 第一章-Python 基础

[[Artpatch - Python-简单语句]]

## 第二章-控制流

[[Artpatch - Python-结构化程序设计]]

## 第三章-函数

[[Artpatch - Python-模块化程序设计]]

>%%
>```annotation-json
>{"created":"2023-08-10T07:59:29.557Z","updated":"2023-08-10T07:59:29.557Z","document":{"title":"Python编程快速上手—让繁琐工作自动化 PDF中文高清晰完整版","link":[{"href":"urn:x-pdf:1f700000035d00005a7a00007d760000"},{"href":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf"}],"documentFingerprint":"1f700000035d00005a7a00007d760000"},"uri":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","target":[{"source":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","selector":[{"type":"TextPositionSelector","start":81390,"end":82042},{"type":"TextQuoteSelector","exact":"# This is a guess the number game. import random secretNumber = random.randint(1, 20) print('I am thinking of a number between 1 and 20.')  # Ask the player to guess 6 times. for guessesTaken in range(1, 7):     print('Take a guess.')     guess = int(input())      if guess < secretNumber:         print('Your guess is too low.')     elif guess > secretNumber:         print('Your guess is too high.')     else:         break # This condition is the correct guess! if guess == secretNumber:     print('Good job! You guessed my number in ' + str(guessesTaken) + ' guesses!') else:     print('Nope. The number I was thinking of was ' + str(secretNumber))","prefix":"中输入以下代码，并保存为guessTheNumber.py：  ","suffix":"  让我们逐行来看看代码，从头开始。  # This is a "}]}]}
>```
>%%
>*%%PREFIX%%中输入以下代码，并保存为guessTheNumber.py：%%HIGHLIGHT%% ==# This is a guess the number game. import random secretNumber = random.randint(1, 20) print('I am thinking of a number between 1 and 20.')  # Ask the player to guess 6 times. for guessesTaken in range(1, 7):     print('Take a guess.')     guess = int(input())      if guess < secretNumber:         print('Your guess is too low.')     elif guess > secretNumber:         print('Your guess is too high.')     else:         break # This condition is the correct guess! if guess == secretNumber:     print('Good job! You guessed my number in ' + str(guessesTaken) + ' guesses!') else:     print('Nope. The number I was thinking of was ' + str(secretNumber))== %%POSTFIX%%让我们逐行来看看代码，从头开始。  # This is a*
>%%LINK%%[[#^ibfaa5r698d|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^ibfaa5r698d

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



>%%
>```annotation-json
>{"created":"2023-08-10T09:08:17.454Z","updated":"2023-08-10T09:08:17.454Z","document":{"title":"Python编程快速上手—让繁琐工作自动化 PDF中文高清晰完整版","link":[{"href":"urn:x-pdf:1f700000035d00005a7a00007d760000"},{"href":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf"}],"documentFingerprint":"1f700000035d00005a7a00007d760000"},"uri":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","target":[{"source":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","selector":[{"type":"TextPositionSelector","start":115848,"end":116009},{"type":"TextQuoteSelector","exact":"theBoard = {'top-L': ' ', 'top-M': ' ', 'top-R': ' ',             'mid-L': ' ', 'mid-M': 'X', 'mid-R': ' ',             'low-L': ' ', 'low-M': ' ', 'low-R': ' '}","prefix":"idc.com 整理第5 章    字典和结构化数据  89  ","suffix":"  theBoard 变量中的数据结构现在表示图5-4 中的井字"}]}]}
>```
>%%
>*%%PREFIX%%idc.com 整理第5 章    字典和结构化数据  89%%HIGHLIGHT%% ==theBoard = {'top-L': ' ', 'top-M': ' ', 'top-R': ' ',             'mid-L': ' ', 'mid-M': 'X', 'mid-R': ' ',             'low-L': ' ', 'low-M': ' ', 'low-R': ' '}== %%POSTFIX%%theBoard 变量中的数据结构现在表示图5-4 中的井字*
>%%LINK%%[[#^yh6exa9t9p|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^yh6exa9t9p

每次修改字典中的 value，再使用同一个函数打印

## 第六章-字符串操作

介绍了“”写长字符串

多行注释



>%%
>```annotation-json
>{"created":"2023-08-10T09:13:49.604Z","updated":"2023-08-10T09:13:49.604Z","document":{"title":"Python编程快速上手—让繁琐工作自动化 PDF中文高清晰完整版","link":[{"href":"urn:x-pdf:1f700000035d00005a7a00007d760000"},{"href":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf"}],"documentFingerprint":"1f700000035d00005a7a00007d760000"},"uri":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","target":[{"source":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","selector":[{"type":"TextPositionSelector","start":126623,"end":126691},{"type":"TextQuoteSelector","exact":"upper()和lower()字符串方法返回一个新字符串，其中原字符串的所有字母都被相应地转换为大写或小写。字符串中非字母字符保持不变。","prefix":"r()、lower()、isupper()和islower() ","suffix":" 在交互式环境中输入以下代码：  >>> spam = 'Hel"}]}]}
>```
>%%
>*%%PREFIX%%r()、lower()、isupper()和islower()%%HIGHLIGHT%% ==upper()和lower()字符串方法返回一个新字符串，其中原字符串的所有字母都被相应地转换为大写或小写。字符串中非字母字符保持不变。== %%POSTFIX%%在交互式环境中输入以下代码：  >>> spam = 'Hel*
>%%LINK%%[[#^12rbr1p5ptz|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^12rbr1p5ptz



>%%
>```annotation-json
>{"created":"2023-08-10T09:14:26.582Z","updated":"2023-08-10T09:14:26.582Z","document":{"title":"Python编程快速上手—让繁琐工作自动化 PDF中文高清晰完整版","link":[{"href":"urn:x-pdf:1f700000035d00005a7a00007d760000"},{"href":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf"}],"documentFingerprint":"1f700000035d00005a7a00007d760000"},"uri":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","target":[{"source":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","selector":[{"type":"TextPositionSelector","start":128216,"end":128429},{"type":"TextQuoteSelector","exact":"  isalpha()返回True，如果字符串只包含字母，并且非空；     isalnum()返回True，如果字符串只包含字母和数字，并且非空；     isdecimal()返回True，如果字符串只包含数字字符，并且非空；     isspace()返回True，如果字符串只包含空格、制表符和换行，并且非空；     istitle()返回True，如果字符串仅包含以大写字母开头、后面都是小写字母的单词。","prefix":"描述了字符串的特点。下面是一些常用的isX 字符串方法：   ","suffix":" 在交互式环境中输入以下代码：  >>> 'hello'.isa"}]}]}
>```
>%%
>*%%PREFIX%%描述了字符串的特点。下面是一些常用的isX 字符串方法： %%HIGHLIGHT%% ==isalpha()返回True，如果字符串只包含字母，并且非空；     isalnum()返回True，如果字符串只包含字母和数字，并且非空；     isdecimal()返回True，如果字符串只包含数字字符，并且非空；     isspace()返回True，如果字符串只包含空格、制表符和换行，并且非空；     istitle()返回True，如果字符串仅包含以大写字母开头、后面都是小写字母的单词。== %%POSTFIX%%在交互式环境中输入以下代码：  >>> 'hello'.isa*
>%%LINK%%[[#^i86d8pzu6v|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^i86d8pzu6v

[[Wiki - 字符串方法join()和split()]]


>%%
>```annotation-json
>{"created": "2023-08-10T 09:18 : 12.848Z","updated": "2023-08-10T 09:18 : 12.848Z","document":{"title": "Python 编程快速上手—让繁琐工作自动化 PDF 中文高清晰完整版","link":[{"href": "urn: x-pdf: 1f700000035d00005a7a00007d760000"},{"href": "vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96. pdf"}],"documentFingerprint": "1f700000035d00005a7a00007d760000"},"uri": "vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96. pdf","target":[{"source": "vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96. pdf","selector":[{"type": "TextPositionSelector","start": 130530,"end": 130723},{"type": "TextQuoteSelector","exact": ">>> ', '. join (['cats', 'rats', 'bats']) 'cats, rats, bats' >>> ' '. join (['My', 'name', 'is', 'Simon']) 'My name is Simon' >>> 'ABC'. join (['My', 'name', 'is', 'Simon']) 'MyABCnameABCisABCSimon' ","prefix": "列表中每个字符串连接而成。例如，在交互式环境中输入以下代码：  ","suffix": " 请注意，调用 join () 方法的字符串，被插入到列表参数中每个字"}]}]}
>```
>%%
>*%%PREFIX%%列表中每个字符串连接而成。例如，在交互式环境中输入以下代码：%%HIGHLIGHT%% ==>>> ', '. join (['cats', 'rats', 'bats']) 'cats, rats, bats' >>> ' '. join (['My', 'name', 'is', 'Simon']) 'My name is Simon' >>> 'ABC'. join (['My', 'name', 'is', 'Simon']) 'MyABCnameABCisABCSimon'== %%POSTFIX%%请注意，调用 join () 方法的字符串，被插入到列表参数中每个字*
>%%LINK%% [[#^izdkietf5g|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^izdkietf5g


>%%
>```annotation-json
>{"created":"2023-08-10T09:23:03.753Z","updated":"2023-08-10T09:23:03.753Z","document":{"title":"Python编程快速上手—让繁琐工作自动化 PDF中文高清晰完整版","link":[{"href":"urn:x-pdf:1f700000035d00005a7a00007d760000"},{"href":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf"}],"documentFingerprint":"1f700000035d00005a7a00007d760000"},"uri":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","target":[{"source":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","selector":[{"type":"TextPositionSelector","start":132099,"end":132248},{"type":"TextQuoteSelector","exact":"'Hello'.rjust(10)是说我们希望右对齐，将'Hello'放在一个长度为10 的字符串中。'Hello'有5 个字符，所以左边会加上5 个空格，得到一个10 个字符的字符串，实现'Hello'右对齐。 rjust()和ljust()方法的第二个可选参数将指定一个填充字符，取代空格字符。","prefix":"Hello'.ljust(10) 'Hello      '  ","suffix":"在交互式环境中输入以下代码：  >>> 'Hello'.rjus"}]}]}
>```
>%%
>*%%PREFIX%%Hello'.ljust(10) 'Hello      '%%HIGHLIGHT%% =='Hello'.rjust(10)是说我们希望右对齐，将'Hello'放在一个长度为10 的字符串中。'Hello'有5 个字符，所以左边会加上5 个空格，得到一个10 个字符的字符串，实现'Hello'右对齐。 rjust()和ljust()方法的第二个可选参数将指定一个填充字符，取代空格字符。== %%POSTFIX%%在交互式环境中输入以下代码：  >>> 'Hello'.rjus*
>%%LINK%%[[#^uericxnl7y8|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^uericxnl7y8

[[Wiki - 文本对齐方法]]

[[Wiki - pyperclip拷贝粘贴字符串]]

# 第二部分  自动化任务

## 第七章-模式匹配与正则表达式


不用正则表达式查找：但需要自己编写查找标准的函数

>%%
>```annotation-json
>{"created":"2023-08-10T09:46:17.509Z","updated":"2023-08-10T09:46:17.509Z","document":{"title":"Python编程快速上手—让繁琐工作自动化 PDF中文高清晰完整版","link":[{"href":"urn:x-pdf:1f700000035d00005a7a00007d760000"},{"href":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf"}],"documentFingerprint":"1f700000035d00005a7a00007d760000"},"uri":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","target":[{"source":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","selector":[{"type":"TextPositionSelector","start":145321,"end":145542},{"type":"TextQuoteSelector","exact":"message = 'Call me at 415-555-1011 tomorrow. 415-555-9999 is my office.' for i in range(len(message)):      chunk = message[i:i+12]      if isPhoneNumber(chunk):       print('Phone number found: ' + chunk) print('Done')","prefix":"eNumber.py 中最后4 个print()函数调用：   ","suffix":"   该程序运行时，输出看起来像这样：  Phone numbe"}]}]}
>```
>%%
>*%%PREFIX%%eNumber.py 中最后4 个print()函数调用：%%HIGHLIGHT%% ==message = 'Call me at 415-555-1011 tomorrow. 415-555-9999 is my office.' for i in range(len(message)):      chunk = message[i:i+12]      if isPhoneNumber(chunk):       print('Phone number found: ' + chunk) print('Done')== %%POSTFIX%%该程序运行时，输出看起来像这样：  Phone numbe*
>%%LINK%%[[#^6e6h7wj0y5u|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^6e6h7wj0y5u

Python 使用正则表达式`\d\d\d-\d\d\d-\d\d\d\d`，来匹配前面 isPhoneNumber () 函数匹配的同样文本：3 个数字、一个短横线、3 个数字、一个短横线、4 个数字。

正则表达式在 re 模块中

[[Artpatch - Python-正则表达式]]


>%%
>```annotation-json
>{"created":"2023-08-10T10:27:52.140Z","updated":"2023-08-10T10:27:52.140Z","document":{"title":"Python编程快速上手—让繁琐工作自动化 PDF中文高清晰完整版","link":[{"href":"urn:x-pdf:1f700000035d00005a7a00007d760000"},{"href":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf"}],"documentFingerprint":"1f700000035d00005a7a00007d760000"},"uri":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","target":[{"source":"vault:/_attachment/book/Python%E7%BC%96%E7%A8%8B%E5%BF%AB%E9%80%9F%E4%B8%8A%E6%89%8B%E2%80%94%E8%AE%A9%E7%B9%81%E7%90%90%E5%B7%A5%E4%BD%9C%E8%87%AA%E5%8A%A8%E5%8C%96.pdf","selector":[{"type":"TextPositionSelector","start":150669,"end":150955},{"type":"TextQuoteSelector","exact":"有时候，想匹配的模式是可选的。就是说，不论这段文本在不在，正则表达式都会认为匹配。字符?表明它前面的分组在这个模式中是可选的。例如，在交互式环境中输入以下代码：  >>> batRegex = re.compile(r'Bat(wo)?man') >>> mo1 = batRegex.search('The Adventures of Batman') >>> mo1.group() 'Batman'  >>> mo2 = batRegex.search('The Adventures of Batwoman') >>> mo2.group() 'Batwoman'","prefix":"就用倒斜杠转义，即\\|。 7.3.3    用问号实现可选匹配 ","suffix":"  正则表达式中的(wo)?部分表明，模式wo 是可选的分组。该"}]}]}
>```
>%%
>*%%PREFIX%%就用倒斜杠转义，即\|。 7.3.3    用问号实现可选匹配%%HIGHLIGHT%% ==有时候，想匹配的模式是可选的。就是说，不论这段文本在不在，正则表达式都会认为匹配。字符?表明它前面的分组在这个模式中是可选的。例如，在交互式环境中输入以下代码：  >>> batRegex = re.compile(r'Bat(wo)?man') >>> mo1 = batRegex.search('The Adventures of Batman') >>> mo1.group() 'Batman'  >>> mo2 = batRegex.search('The Adventures of Batwoman') >>> mo2.group() 'Batwoman'== %%POSTFIX%%正则表达式中的(wo)?部分表明，模式wo 是可选的分组。该*
>%%LINK%%[[#^s301269did8|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^s301269did8

## 第八章-读写文件


```Python
import os
```
 