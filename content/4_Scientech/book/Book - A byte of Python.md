---
aliases: Python简明教程
year: 
category: 计算机
rate: 0
info: 
date: 2023-03-18-星期六 10:54:16
update: 
tags: [book/year2023, book/month03,Python]
id: book20230318105416
banner: "![[astrogate.gif]]"
annotation-target: "byte-of-python-chinese-edition.pdf"
---
---

[[byte-of-python-chinese-edition.pdf]]

[[Artpatch - Python-简单语句]]

[[Artpatch - Python-结构化程序设计]]

[[Artpatch - Python-数据按组存储]]

[[Artpatch - Python-模块化程序设计]]



>%%
>```annotation-json
>{"created":"2023-03-18T02:57:13.574Z","text":"如果每个语句占一行Python默认不用加分号","updated":"2023-03-18T02:57:13.574Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":30686,"end":30737},{"type":"TextQuoteSelector","exact":"如果你希望在一行物理行中指定多行逻辑行，那么你必须通过使用分号( ; )来明确表明逻辑行或语句的结束。","prefix":"：Python 鼓励每一行使用一句独立语句从而使得代码更加可读。","suffix":"下面是一个例子：i = 5print(i)实际上等同于i = 5"}]}]}
>```
>%%
>*%%PREFIX%%：Python 鼓励每一行使用一句独立语句从而使得代码更加可读。%%HIGHLIGHT%% ==如果你希望在一行物理行中指定多行逻辑行，那么你必须通过使用分号( ; )来明确表明逻辑行或语句的结束。== %%POSTFIX%%下面是一个例子：i = 5print(i)实际上等同于i = 5*
>%%LINK%%[[#^0p14xdsi0vog|show annotation]]
>%%COMMENT%%
>如果每个语句占一行Python默认不用加分号
>%%TAGS%%
>
^0p14xdsi0vog


>%%
>```annotation-json
>{"created":"2023-03-18T02:58:25.942Z","text":"与C的不同，缩进代替了{}","updated":"2023-03-18T02:58:25.942Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":31357,"end":31396},{"type":"TextQuoteSelector","exact":"放置在一起的语句必须拥有相同的缩进。每一组这样的语句被称为 块（block）。","prefix":"行的缩进级别，而后者又可用于确定语句的分组。56基础41这意味着","suffix":"我们将会在后文章节的案例中了解块这一概念是多么重要。有一件事你需"}]}]}
>```
>%%
>*%%PREFIX%%行的缩进级别，而后者又可用于确定语句的分组。56基础41这意味着%%HIGHLIGHT%% ==放置在一起的语句必须拥有相同的缩进。每一组这样的语句被称为 块（block）。== %%POSTFIX%%我们将会在后文章节的案例中了解块这一概念是多么重要。有一件事你需*
>%%LINK%%[[#^0xbkdcwsxb9|show annotation]]
>%%COMMENT%%
>与C的不同，缩进代替了{}
>%%TAGS%%
>
^0xbkdcwsxb9


>%%
>```annotation-json
>{"created":"2023-03-18T03:33:34.006Z","text":"用def ……：进行函数定义，形参实参传递类似C，但不用定义变量类型","updated":"2023-03-18T03:33:34.006Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":44188,"end":44242},{"type":"TextQuoteSelector","exact":"def say_hello():    # 该块属于这一函数    print('hello world')","prefix":"出这其实非常简单：案例（保存为  function1.py ）：","suffix":"# 函数结束say_hello()  # 调用函数say_hel"}]}]}
>```
>%%
>*%%PREFIX%%出这其实非常简单：案例（保存为  function1.py ）：%%HIGHLIGHT%% ==def say_hello():    # 该块属于这一函数    print('hello world')== %%POSTFIX%%# 函数结束say_hello()  # 调用函数say_hel*
>%%LINK%%[[#^w9ggbcj0ik|show annotation]]
>%%COMMENT%%
>用def ……：进行函数定义，形参实参传递类似C，但不用定义变量类型
>%%TAGS%%
>
^w9ggbcj0ik


>%%
>```annotation-json
>{"created":"2023-03-18T03:39:15.587Z","text":"即C语言中的static变量","updated":"2023-03-18T03:39:15.587Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":45816,"end":45924},{"type":"TextQuoteSelector","exact":"如果你想给一个在程序顶层的变量赋值（也就是说它不存在于任何作用域中，无论是函数还是类），那么你必须告诉 Python 这一变量并非局部的，而是全局（Global）的。我们需要通过  global  语句来完成这件事。","prefix":"际上不受先前调用的函数中的局部变量的影响。 global  语句","suffix":"因为在不使用  global  语句的情况下，不可能为一个定义于"}]}]}
>```
>%%
>*%%PREFIX%%际上不受先前调用的函数中的局部变量的影响。 global  语句%%HIGHLIGHT%% ==如果你想给一个在程序顶层的变量赋值（也就是说它不存在于任何作用域中，无论是函数还是类），那么你必须告诉 Python 这一变量并非局部的，而是全局（Global）的。我们需要通过  global  语句来完成这件事。== %%POSTFIX%%因为在不使用  global  语句的情况下，不可能为一个定义于*
>%%LINK%%[[#^tt8d0f10va|show annotation]]
>%%COMMENT%%
>即C语言中的static变量
>%%TAGS%%
>
^tt8d0f10va


>%%
>```annotation-json
>{"created":"2023-03-18T03:48:05.576Z","text":"当少一个参数时就用默认的赋值，如果调用时赋值了参数以调用时的为准","updated":"2023-03-18T03:48:05.576Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":46534,"end":46571},{"type":"TextQuoteSelector","exact":"你可以通过在函数定义时附加一个赋值运算符（ = ）来为参数指定默认参数值。","prefix":"用户不想为他们提供值的情况。默认参数值可以有效帮助解决这一情况。","suffix":"要注意到，默认参数值应该是常数。更确切地说，默认参数值应该是不可"}]}]}
>```
>%%
>*%%PREFIX%%用户不想为他们提供值的情况。默认参数值可以有效帮助解决这一情况。%%HIGHLIGHT%% ==你可以通过在函数定义时附加一个赋值运算符（ = ）来为参数指定默认参数值。== %%POSTFIX%%要注意到，默认参数值应该是常数。更确切地说，默认参数值应该是不可*
>%%LINK%%[[#^3lna432wd63|show annotation]]
>%%COMMENT%%
>当少一个参数时就用默认的赋值，如果调用时赋值了参数以调用时的为准
>%%TAGS%%
>
^3lna432wd63


>%%
>```annotation-json
>{"created":"2023-03-18T03:49:35.230Z","updated":"2023-03-18T03:49:35.230Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":46674,"end":46813},{"type":"TextQuoteSelector","exact":"ef say(message, times=1):    print(message * times)say('Hello')say('World', 5)输出：$ python function_default.pyHelloWorldWorldWorldWorldWorld","prefix":"保存为  function_default.py ）：函数62d","suffix":"它是如何工作的名为  say  的函数用以按照给定的次数打印一串"}]}]}
>```
>%%
>*%%PREFIX%%保存为  function_default.py ）：函数62d%%HIGHLIGHT%% ==ef say(message, times=1):    print(message * times)say('Hello')say('World', 5)输出：$ python function_default.pyHelloWorldWorldWorldWorldWorld== %%POSTFIX%%它是如何工作的名为  say  的函数用以按照给定的次数打印一串*
>%%LINK%%[[#^u8ewrrj6vq|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^u8ewrrj6vq


>%%
>```annotation-json
>{"created":"2023-03-18T09:25:42.854Z","updated":"2023-03-18T09:25:42.854Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":49884,"end":49920},{"type":"TextQuoteSelector","exact":"函数的第一行逻辑行中的字符串是该函数的 文档字符串（DocString）","prefix":"印两个数值中的最大数。    这两个数都应该是整数它是如何工作的","suffix":"。这里要注意文档字符串也适用于后面相关章节将提到的模块（Modu"}]}]}
>```
>%%
>*%%PREFIX%%印两个数值中的最大数。    这两个数都应该是整数它是如何工作的%%HIGHLIGHT%% ==函数的第一行逻辑行中的字符串是该函数的 文档字符串（DocString）== %%POSTFIX%%。这里要注意文档字符串也适用于后面相关章节将提到的模块（Modu*
>%%LINK%%[[#^mbki05g96jf|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^mbki05g96jf


>%%
>```annotation-json
>{"created":"2023-03-18T09:25:58.376Z","updated":"2023-03-18T09:25:58.376Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":50066,"end":50136},{"type":"TextQuoteSelector","exact":"我们可以通过使用函数的  __doc__ （注意其中的双下划綫）属性（属于函数的名称）来获取函数  print_max  的文档字符串属性。","prefix":"在此强烈建议你在你所有重要功能的所有文档字符串中都遵循这一约定。","suffix":"只消记住 Python 将所有东西都视为一个对象，这其中自然包括"}]}]}
>```
>%%
>*%%PREFIX%%在此强烈建议你在你所有重要功能的所有文档字符串中都遵循这一约定。%%HIGHLIGHT%% ==我们可以通过使用函数的  __doc__ （注意其中的双下划綫）属性（属于函数的名称）来获取函数  print_max  的文档字符串属性。== %%POSTFIX%%只消记住 Python 将所有东西都视为一个对象，这其中自然包括*
>%%LINK%%[[#^r08kizik6yf|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^r08kizik6yf


>%%
>```annotation-json
>{"created":"2023-03-18T09:30:08.890Z","updated":"2023-03-18T09:30:08.890Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":51654,"end":51713},{"type":"TextQuoteSelector","exact":"通过  import  语句导入  sys  模块。基本上，这句代码将转化为我们告诉 Python我们希望使用这一模块","prefix":"/site-packages']它是如何工作的模块69首先，我们","suffix":"。 sys  模块包含了与 Python 解释器及其环境相关的功"}]}]}
>```
>%%
>*%%PREFIX%%/site-packages']它是如何工作的模块69首先，我们%%HIGHLIGHT%% ==通过  import  语句导入  sys  模块。基本上，这句代码将转化为我们告诉 Python我们希望使用这一模块== %%POSTFIX%%。 sys  模块包含了与 Python 解释器及其环境相关的功*
>%%LINK%%[[#^14bjenz8hs7j|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^14bjenz8hs7j


>%%
>```annotation-json
>{"created":"2023-03-18T09:31:54.598Z","updated":"2023-03-18T09:31:54.598Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":51991,"end":52067},{"type":"TextQuoteSelector","exact":"sys  模块中的  argv  变量通过使用点号予以指明，也就是  sys.argv  这样的形式。它清晰地表明了这一名称是  sys  模块的一部分","prefix":"在这里需要注意的是，初始化工作只需在我们第一次导入模块时完成。 ","suffix":"。这一处理方式的另一个优点是这个名称不会与你程序中的其它任何一个"}]}]}
>```
>%%
>*%%PREFIX%%在这里需要注意的是，初始化工作只需在我们第一次导入模块时完成。%%HIGHLIGHT%% ==sys  模块中的  argv  变量通过使用点号予以指明，也就是  sys.argv  这样的形式。它清晰地表明了这一名称是  sys  模块的一部分== %%POSTFIX%%。这一处理方式的另一个优点是这个名称不会与你程序中的其它任何一个*
>%%LINK%%[[#^f7pbxexi7fh|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^f7pbxexi7fh


>%%
>```annotation-json
>{"created":"2023-03-19T02:09:41.049Z","updated":"2023-03-19T02:09:41.049Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":53256,"end":53342},{"type":"TextQuoteSelector","exact":"如果你希望直接将  argv  变量导入你的程序（为了避免每次都要输入  sys. ），那么你可以通过使用  from sys import argv  语句来实现这一点。","prefix":".pyc  文件将不会被创建。 from..import  语句","suffix":"警告：一般来说，你应该尽量避免使用  from...import"}]}]}
>```
>%%
>*%%PREFIX%%.pyc  文件将不会被创建。 from..import  语句%%HIGHLIGHT%% ==如果你希望直接将  argv  变量导入你的程序（为了避免每次都要输入  sys. ），那么你可以通过使用  from sys import argv  语句来实现这一点。== %%POSTFIX%%警告：一般来说，你应该尽量避免使用  from...import*
>%%LINK%%[[#^nbivy49n0aj|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^nbivy49n0aj


>%%
>```annotation-json
>{"created":"2023-03-19T02:12:08.929Z","text":"类似#include功能。.py文件可以互相作为调用包，不像C需要.h头文件","updated":"2023-03-19T02:12:08.929Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":54462,"end":54477},{"type":"TextQuoteSelector","exact":"import mymodule","prefix":"下。另一个模块（保存为  mymodule_demo.py ）：","suffix":"mymodule.say_hi()print('Version'"}]}]}
>```
>%%
>*%%PREFIX%%下。另一个模块（保存为  mymodule_demo.py ）：%%HIGHLIGHT%% ==import mymodule== %%POSTFIX%%mymodule.say_hi()print('Version'*
>%%LINK%%[[#^4mn77p7fguo|show annotation]]
>%%COMMENT%%
>类似#include功能。.py文件可以互相作为调用包，不像C需要.h头文件
>%%TAGS%%
>
^4mn77p7fguo


>%%
>```annotation-json
>{"created":"2023-03-19T02:21:11.050Z","updated":"2023-03-19T02:21:11.050Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":55251,"end":55373},{"type":"TextQuoteSelector","exact":" dir()  函数能够返回由对象所定义的名称列表。 如果这一对象是一个模块，则该列表会包括函数内所定义的函数、类与变量。该函数接受参数。 如果参数是模块名称，函数将返回这一指定模块的名称列表。 如果没有提供参数，函数将返回当前模块的名称列表。","prefix":"import this 来了解更多内容。 dir  函数内置的 ","suffix":"案例：2模块73$ python>>> import sys# "}]}]}
>```
>%%
>*%%PREFIX%%import this 来了解更多内容。 dir  函数内置的%%HIGHLIGHT%% ==dir()  函数能够返回由对象所定义的名称列表。 如果这一对象是一个模块，则该列表会包括函数内所定义的函数、类与变量。该函数接受参数。 如果参数是模块名称，函数将返回这一指定模块的名称列表。 如果没有提供参数，函数将返回当前模块的名称列表。== %%POSTFIX%%案例：2模块73$ python>>> import sys#*
>%%LINK%%[[#^h1stlu93wpd|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^h1stlu93wpd


>%%
>```annotation-json
>{"created":"2023-03-19T02:21:55.242Z","text":"__init__.py表明包的身份","updated":"2023-03-19T02:21:55.242Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":56354,"end":56390},{"type":"TextQuoteSelector","exact":"包是指一个包含模块与一个特殊的  __init__.py  文件的文件夹","prefix":"块的话，应该怎么办？这便是包（Packages）应当登场的时刻。","suffix":"，后者向 Python 表明这一文件夹是特别的，因为其包含了 P"}]}]}
>```
>%%
>*%%PREFIX%%块的话，应该怎么办？这便是包（Packages）应当登场的时刻。%%HIGHLIGHT%% ==包是指一个包含模块与一个特殊的  __init__.py  文件的文件夹== %%POSTFIX%%，后者向 Python 表明这一文件夹是特别的，因为其包含了 P*
>%%LINK%%[[#^tay9k6kdv1a|show annotation]]
>%%COMMENT%%
>__init__.py表明包的身份
>%%TAGS%%
>
^tay9k6kdv1a

[[Artpatch - Python-数据按组存储]]



>%%
>```annotation-json
>{"created":"2023-03-19T02:29:31.437Z","text":"len()用于计算列表长度","updated":"2023-03-19T02:29:31.437Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":58211,"end":58225},{"type":"TextQuoteSelector","exact":" len(shoplist)","prefix":"arrot', 'banana']print('I have',","suffix":", 'items to purchase.')print('Th"}]}]}
>```
>%%
>*%%PREFIX%%arrot', 'banana']print('I have',%%HIGHLIGHT%% ==len(shoplist)== %%POSTFIX%%, 'items to purchase.')print('Th*
>%%LINK%%[[#^nxgs5087o3b|show annotation]]
>%%COMMENT%%
>len()用于计算列表长度
>%%TAGS%%
>
^nxgs5087o3b


>%%
>```annotation-json
>{"created":"2023-03-19T02:58:47.478Z","updated":"2023-03-19T02:58:47.478Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":59837,"end":59875},{"type":"TextQuoteSelector","exact":"元组的一大特征类似于字符串，它们是不可变的，也就是说，你不能编辑或更改元组。","prefix":"近似地看作列表，但是元组不能提供列表类能够提供给你的广泛的功能。","suffix":"元组是通过特别指定项目来定义的，在指定项目时，你可以给它们加上括"}]}]}
>```
>%%
>*%%PREFIX%%近似地看作列表，但是元组不能提供列表类能够提供给你的广泛的功能。%%HIGHLIGHT%% ==元组的一大特征类似于字符串，它们是不可变的，也就是说，你不能编辑或更改元组。== %%POSTFIX%%元组是通过特别指定项目来定义的，在指定项目时，你可以给它们加上括*
>%%LINK%%[[#^zpspbe8517|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^zpspbe8517


>%%
>```annotation-json
>{"created":"2023-03-19T03:33:48.902Z","updated":"2023-03-19T03:33:48.902Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":61757,"end":61828},{"type":"TextQuoteSelector","exact":"在字典中，你可以通过使用符号构成  d = {key : value1 , key2 : value2}  这样的形式，来成对地指定键值与值。","prefix":"字典中的值。基本上这段话也可以翻译为你只能使用简单对象作为键值。","suffix":"在这里要注意到成对的键值与值之间使用冒号分隔，而每一对键值与值则"}]}]}
>```
>%%
>*%%PREFIX%%字典中的值。基本上这段话也可以翻译为你只能使用简单对象作为键值。%%HIGHLIGHT%% ==在字典中，你可以通过使用符号构成  d = {key : value1 , key2 : value2}  这样的形式，来成对地指定键值与值。== %%POSTFIX%%在这里要注意到成对的键值与值之间使用冒号分隔，而每一对键值与值则*
>%%LINK%%[[#^tj8ashc9ig|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^tj8ashc9ig


>%%
>```annotation-json
>{"created":"2023-03-19T03:34:38.268Z","text":"在没有数据类型时，{}在print中表示变量位置","updated":"2023-03-19T03:34:38.268Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":62254,"end":62324},{"type":"TextQuoteSelector","exact":"print('\\nThere are {} contacts in the address-book\\n'.format(len(ab)))","prefix":"'])# 删除一对键值—值配对del ab['Spammer']","suffix":"for name, address in ab.items():"}]}]}
>```
>%%
>*%%PREFIX%%'])# 删除一对键值—值配对del ab['Spammer']%%HIGHLIGHT%% ==print('\nThere are {} contacts in the address-book\n'.format(len(ab)))== %%POSTFIX%%for name, address in ab.items():*
>%%LINK%%[[#^9w7jyq3t68f|show annotation]]
>%%COMMENT%%
>在没有数据类型时，{}在print中表示变量位置
>%%TAGS%%
>
^9w7jyq3t68f


>%%
>```annotation-json
>{"created":"2023-03-19T03:35:29.100Z","text":"类似把C中的define功能变成了一个组","updated":"2023-03-19T03:35:29.100Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":62031,"end":62181},{"type":"TextQuoteSelector","exact":"ab = {    'Swaroop': 'swaroop@swaroopch.com',    'Larry': 'larry@wall.org',    'Matsumoto': 'matz@ruby-lang.org',    'Spammer': 'spammer@hotmail.com'}","prefix":"y ）：# “ab”是地址（Address）簿（Book）的缩写","suffix":"print(\"Swaroop's address is\", ab"}]}]}
>```
>%%
>*%%PREFIX%%y ）：# “ab”是地址（Address）簿（Book）的缩写%%HIGHLIGHT%% ==ab = {    'Swaroop': 'swaroop@swaroopch.com',    'Larry': 'larry@wall.org',    'Matsumoto': 'matz@ruby-lang.org',    'Spammer': 'spammer@hotmail.com'}== %%POSTFIX%%print("Swaroop's address is", ab*
>%%LINK%%[[#^z6tl8hnsy4c|show annotation]]
>%%COMMENT%%
>类似把C中的define功能变成了一个组
>%%TAGS%%
>
^z6tl8hnsy4c


>%%
>```annotation-json
>{"created":"2023-03-19T03:36:46.771Z","updated":"2023-03-19T03:36:46.771Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":62407,"end":62451},{"type":"TextQuoteSelector","exact":"# 添加一对键值—值配对ab['Guido'] = 'guido@python.org'","prefix":"{} at {}'.format(name, address))","suffix":"if 'Guido' in ab:    print(\"\\nGu"}]}]}
>```
>%%
>*%%PREFIX%%{} at {}'.format(name, address))%%HIGHLIGHT%% ==# 添加一对键值—值配对ab['Guido'] = 'guido@python.org'== %%POSTFIX%%if 'Guido' in ab:    print("\nGu*
>%%LINK%%[[#^9iphy2en09q|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^9iphy2en09q


>%%
>```annotation-json
>{"created":"2023-03-19T03:38:35.369Z","updated":"2023-03-19T03:38:35.369Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":65071,"end":65128},{"type":"TextQuoteSelector","exact":" shoplist[-1]  指的是序列的最后一个项目， shoplist[-2]  将获取序列中倒数第二个项目。","prefix":"也可以使用负数，在这种情况下，位置计数将从队列的末尾开始。因此，","suffix":"你需要通过指定序列名称来进行序列操作，在指定时序列名称后面可以跟"}]}]}
>```
>%%
>*%%PREFIX%%也可以使用负数，在这种情况下，位置计数将从队列的末尾开始。因此，%%HIGHLIGHT%% ==shoplist[-1]  指的是序列的最后一个项目， shoplist[-2]  将获取序列中倒数第二个项目。== %%POSTFIX%%你需要通过指定序列名称来进行序列操作，在指定时序列名称后面可以跟*
>%%LINK%%[[#^j6fc1ybax0c|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^j6fc1ybax0c


>%%
>```annotation-json
>{"created":"2023-03-19T03:39:53.441Z","text":"倒序的快捷办法","updated":"2023-03-19T03:39:53.441Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":65867,"end":65919},{"type":"TextQuoteSelector","exact":"shoplist[::-1]['banana', 'carrot', 'mango', 'apple']","prefix":"list[::3]['apple', 'banana']>>> ","suffix":"你会注意到当步长为 2 时，我们得到的是第 0、2、4....."}]}]}
>```
>%%
>*%%PREFIX%%list[::3]['apple', 'banana']>>>%%HIGHLIGHT%% ==shoplist[::-1]['banana', 'carrot', 'mango', 'apple']== %%POSTFIX%%你会注意到当步长为 2 时，我们得到的是第 0、2、4.....*
>%%LINK%%[[#^fhw90s8z3cr|show annotation]]
>%%COMMENT%%
>倒序的快捷办法
>%%TAGS%%
>
^fhw90s8z3cr


>%%
>```annotation-json
>{"created":"2023-03-19T03:40:17.173Z","updated":"2023-03-19T03:40:17.173Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":66064,"end":66094},{"type":"TextQuoteSelector","exact":"集合（Set）是简单对象的无序集合（Collection）。","prefix":"列的一大优点在于你可以使用同样的方式访问元组、列表与字符串。集合","suffix":"当集合中的项目存在与否比起次序或其出现次数更加重要时，我们就会使"}]}]}
>```
>%%
>*%%PREFIX%%列的一大优点在于你可以使用同样的方式访问元组、列表与字符串。集合%%HIGHLIGHT%% ==集合（Set）是简单对象的无序集合（Collection）。== %%POSTFIX%%当集合中的项目存在与否比起次序或其出现次数更加重要时，我们就会使*
>%%LINK%%[[#^04b3oeg2ngxw|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^04b3oeg2ngxw


>%%
>```annotation-json
>{"created":"2023-03-19T03:46:29.198Z","text":"需要用切片来使mylist复制shoplist的内容","updated":"2023-03-19T03:46:29.198Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":66753,"end":66935},{"type":"TextQuoteSelector","exact":"mylist = shoplist# 我购买了第一项项目，所以我将其从列表中删除del shoplist[0]print('shoplist is', shoplist)print('mylist is', mylist)# 注意到 shoplist 和 mylist 二者都# 打印出了其中都没有 apple 的同样的列表，以此我们确认# 它们指向的是同一个对象","prefix":"'banana']# mylist 只是指向同一对象的另一种名称","suffix":"print('Copy by making a full sli"}]}]}
>```
>%%
>*%%PREFIX%%'banana']# mylist 只是指向同一对象的另一种名称%%HIGHLIGHT%% ==mylist = shoplist# 我购买了第一项项目，所以我将其从列表中删除del shoplist[0]print('shoplist is', shoplist)print('mylist is', mylist)# 注意到 shoplist 和 mylist 二者都# 打印出了其中都没有 apple 的同样的列表，以此我们确认# 它们指向的是同一个对象== %%POSTFIX%%print('Copy by making a full sli*
>%%LINK%%[[#^bzobu7v7q3s|show annotation]]
>%%COMMENT%%
>需要用切片来使mylist复制shoplist的内容
>%%TAGS%%
>
^bzobu7v7q3s


>%%
>```annotation-json
>{"created":"2023-03-19T03:51:00.471Z","updated":"2023-03-19T03:51:00.471Z","document":{"title":"简明 Python 教程","link":[{"href":"urn:x-pdf:62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},{"href":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf"}],"documentFingerprint":"62653435313937373131616636313264383033626664663238616637333534386566393936613837633532393763373932623466393038313065323534346236"},"uri":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","target":[{"source":"vault:/_attachment/book/byte-of-python-chinese-edition.pdf","selector":[{"type":"TextPositionSelector","start":67750,"end":68219},{"type":"TextQuoteSelector","exact":"name = 'Swaroop'if name.startswith('Swa'):    print('Yes, the string starts with \"Swa\"')if 'a' in name:    print('Yes, it contains the string \"a\"')if name.find('war') != -1:    print('Yes, it contains the string \"war\"')delimiter = '_*_'mylist = ['Brazil', 'Russia', 'India', 'China']print(delimiter.join(mylist))输出：$ python ds_str_methods.pyYes, the string starts with \"Swa\"Yes, it contains the string \"a\"Yes, it contains the string \"war\"Brazil_*_Russia_*_India_*_China","prefix":" ds_str_methods.py ）：# 这是一个字符串对象","suffix":"它是如何工作的数据结构87在这里，我们会看见一此操作中包含了好多"}]}]}
>```
>%%
>*%%PREFIX%%ds_str_methods.py ）：# 这是一个字符串对象%%HIGHLIGHT%% ==name = 'Swaroop'if name.startswith('Swa'):    print('Yes, the string starts with "Swa"')if 'a' in name:    print('Yes, it contains the string "a"')if name.find('war') != -1:    print('Yes, it contains the string "war"')delimiter = '_*_'mylist = ['Brazil', 'Russia', 'India', 'China']print(delimiter.join(mylist))输出：$ python ds_str_methods.pyYes, the string starts with "Swa"Yes, it contains the string "a"Yes, it contains the string "war"Brazil_*_Russia_*_India_*_China== %%POSTFIX%%它是如何工作的数据结构87在这里，我们会看见一此操作中包含了好多*
>%%LINK%%[[#^yypwuaz5boo|show annotation]]
>%%COMMENT%%
>
>%%TAGS%%
>
^yypwuaz5boo
