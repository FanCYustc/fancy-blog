---
aliases: 
info: Abel求和，Abel引理
date: 2023-06-29-星期四 21:11
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629211141
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 


## Pro1 Abel 求和：

[[Wiki - 级数的部分和]]

$$\mathop \sum \limits_{k = 1}^n {a_k}{b_k} = {A_n}{b_n} + \mathop \sum \limits_{k = 1}^{n - 1} {A_k}\left( {{b_k} - {b_{k + 1}}} \right)$$

## Cal1 Abel 引理：

设 $b_{1}\geqslant b_2\geqslant\cdots\geqslant b_n$ 或者 $b_1\leqslant b_2\leqslant\cdots\leqslant b_n,$ 记 $A_k=a_1 + a_2+\cdots+a_k$ 如果 $|A_k|\leqslant M,k=1,2,\cdots,n,$ 那么有

$$

\left|\sum\limits_{k=1}^n a_k b_k\right|\leqslant M(|b_1|+2|b_n|).

$$

### 证明：


$$\begin{array}{*{20}{c}}{\left| {\sum {a_k}{b_k}} \right| \le \left| {{A_n}} \right| \times \left| {{b_n}} \right| + \mathop \sum \limits_{k = 1}^{n - 1} \left| {{A_k}} \right| \times \left| {{b_k} - {b_{k - 1}}} \right|}\\{ \le M\left( {\mathop \sum \limits_{k = 1}^{n - 1} \left| {{b_k} - {b_{k - 1}}} \right| + \left| {{b_n}} \right|} \right) = M\left( {\left| {{b_1} - {b_n}} \right| + \left| {{b_n}} \right|} \right)}\\{ \le M\left( {\left| {{b_1}} \right| + 2  \left| {{b_n}} \right|} \right)}\end{array}$$
