---
aliases:
  - coverage of a sequence
info: 数列极限的定义、性质
date: 2023-01-04-星期三 10:43
update: 
tags:
  - wiki/year2023
  - wiki/month01
  - 数学分析/数列
  - 收敛
  - 数学分析/极限
id: wiki20230104104316
banner: "![[astrowalk.gif]]"
---
---
#### 定义：
Let $(a_n)$ be a sequence and $\ell\in$R. Then $a_n$ **converges to** $\ell$, **tends to** $\ell$, or $a_n \to \ell$ , if for all $\varepsilon > 0$, there is some $N \in N$ such that whenever $n > N$, we have $|a_n - \ell| < \varepsilon$. In symbols, this says
  $$
    (\forall \varepsilon > 0)(\exists N)(\forall n\geq N)\,|a_n - \ell| < \varepsilon.
$$
  We say $\ell$ is the **limit** of $(a_n)$.



数列极限通过 [[Wiki - 一致收敛]]来定义

>[!info]+
> 设 $x_n$ 为一数列，如果存在常数a 对于任意给定的正数ε，总存在正整数N，使得当 $n>N$ 时不等式 $|x_n-a|<ε$ 都成立，那么就称常数a是数列 $x_n$ 的极限，数列 $x_n$ 收敛于a
> 如果不存在这样的常数a,则数列没有极限
## 收敛数列性质
对于收敛于a的数列 $x_n$ 有以下性质
1. 极限**唯一**
2. 一定有界
3. 保号性：若a>0或a<0, 则存在正整数N, 当n>N时, 都有 $x_n>0$ 或 $x_n<0$
4. $x_n$ 的任意子数列也收敛于a

