---
aliases: 
info: 级数的cauchy重排定理
date: 2023-06-29-星期四 20:52
update: 2023-06-29-Thursday 21:01:59
tags: [wiki/year2023,wiki/month06]
id: wiki20230629205220
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## The1 Cauchy 重排定理：

```ad-theorem
title: Theorem 1

```

若级数绝对收敛 [[Wiki - 绝对收敛与条件收敛#Def1 绝对收敛]]，则对数列重排后依然收敛，且极限不变[[Wiki - 收敛正项级数的性质]]


[[Wiki - 无穷级数极限运算]]

### 证明：


$$\begin{array}{*{20}{c}}{a_n^{ + } = \left\{ {\begin{array}{*{20}{c}}{{a_n}({a_n} \ge 0)}\\{0({a_n} < 0)}\end{array}} \right.}\\{{a_n^-} = \left\{ {\begin{array}{*{20}{c}}{0({a_n} \ge 0)}\\{ - {a_n}({a_n} < 0)}\end{array}} \right.}\end{array}$$

$$\begin{array}{*{20}{c}}{{a_n} = a_n^{ + } - {a_n^-}}\\ \\
\left| {{a_n}} \right| = a_n^{+} +{a_n^{-}} \\
\end{array}$$拆成了**两个正项级数的组合**


由正项级数的性质（交换顺序不改变敛散性）[[Wiki - 收敛正项级数的性质]]   和级数加减运算来证 
[[Wiki - 无穷级数极限运算]]

**关心的主题：有界**

## Cal1 


$\sum\limits_{n=1}^{\infty}a_n$绝对收敛的充分必要条件是 $\sum\limits_{n=1}^\infty a_n^+和\sum\limits_{n=1}^\infty a_n^-$级数都收敛，但如果级数是条件收敛的，则两个级数$\sum\limits_{n=1}^{\infty}a_n^+ 和\sum\limits_{n=1}^{\infty}a_n^-$都发散到$+\infty$


### 证明：

第一个结论是显然的.对于第二个结论,因为 $\sum\limits_{n=1}^{\infty}|a_{n}|$ 发散,故 $\sum\limits_{n=1}^{\infty}a_n^+$ 和$\sum\limits_{n=1}^{\infty}a_n^{-}$不能都收敛,但是下列等式

$$

\sum_{n=1}^{\infty} a_{n}=\sum_{n=1}^{\infty} a_{n}^{+} +\sum_{n=1}^{\infty} a_{n}^{-}
$$

中三个级数不可能有两个收敛所以 $\sum\limits_{n=1}^\infty a_n^\pm$ 只能都发散

## Cal 2

若级数 $\sum a_{n}=a$ 收敛，且任意重排都收敛，那么 $\sum a_{n}$ 绝对收敛 [[Wiki - 绝对收敛与条件收敛]]

