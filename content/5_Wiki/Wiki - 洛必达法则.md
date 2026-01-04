---
aliases: 
info: 
date: 2024-06-29-星期六 23:30
update: 
tags:
  - wiki/year2022
  - wiki/month10
  - 数学分析/微分
id: wiki20240629233024
banner: "![[astrowalk.gif]]"
---
---

[[Wiki - 函数的导数]]

[[Wiki - 无穷小的比较]]

洛必达法则是利用导数来计算具有不定型的极限的方法。该法则以法国数学家纪尧姆·德·洛必达的名字命名，但实际上是由瑞士数学家约翰·伯努利所发现。

洛必达法则可以求出特定函数趋近于某数的极限值。令 $c\in \bar{\mathbb{R}}$（扩展实数），两函数 $f(x), g(x)$ 在以 $x=c$ 为端点的开区间可微，
$$
\lim_{x\to c}\frac{f'(x)}{g'(x)}\in \bar{\mathbb{R}}
$$
并且 $g'(x)\neq 0$。

如果下式其中一者成立
$$
\lim_{x\to c}f(x)=\lim_{x\to c}g(x)=0
$$
$$
\lim_{x\to c}|f(x)|=\lim_{x\to c}|g(x)|=\infty
$$
则称欲求的极限为**未定式** 
$$
\lim_{x\to c}\frac{f(x)}{g(x)}
$$


此时洛必达法则表明：
$$
\lim_{x\to c}\frac{f(x)}{g(x)}=\lim_{x\to c}\frac{f'(x)}{g'(x)}
$$

对于不符合上述分数形式的未定式，可以通过运算转为分数形式，再以本法则求其值。以下列出数例：



**(1)** 当
$$
\lim_{x\to c}f(x)g(x)
$$
满足条件
$$
\lim_{x\to c}f(x) = 0, \lim_{x\to c}g(x) = \infty
$$
$$
\lim_{x\to c}g(x) = 0, \lim_{x\to c}f(x) = \infty
$$
其中一者成立时，可以将未定式转为以下分数形式之一：
$$
\lim_{x\to c}\frac{f(x)}{1/g(x)}
$$
或
$$
\lim_{x\to c}\frac{g(x)}{1/f(x)}
$$

**(2)** 当
$$
\lim_{x\to c}(f(x)-g(x))
$$
满足条件
$$
\lim_{x\to c}f(x) = \infty, \lim_{x\to c}g(x) = \infty
$$
时，可以将未定式转为以下分数形式：
$$
\lim_{x\to c}\frac{1/g(x) - 1/f(x)}{1/(f(x)g(x))}
$$

**(3)** 当
$$
\lim_{x\to c}f(x)^{g(x)}
$$
满足条件
$$
\lim_{x\to c}f(x) = 0^{+}, \lim_{x\to c}g(x) = 0

\lim_{x\to c}f(x) = \infty, \lim_{x\to c}g(x) = 0
$$
其中一者成立时，可以将未定式转为以下分数形式：
$$
\lim_{x\to c}\exp\left(\lim_{x\to c}\frac{g(x)}{1/\ln f(x)}\right)
$$

**(4)** 当 
$$
\lim_{x\to c}f(x)^{g(x)}
$$
满足条件
$$
\lim_{x\to c}f(x) = 1, \lim_{x\to c}g(x) = \infty
$$
时，可以将未定式转为以下分数形式：
$$
\lim_{x\to c}\exp\left(\lim_{x\to c}\frac{\ln f(x)}{1/g(x)}\right)$$


注意：不能在数列形式下直接用洛必达法则，因为对于离散变量是无法求导数的。但此时有形式类近的 [[Wiki - Stolz引理]]

