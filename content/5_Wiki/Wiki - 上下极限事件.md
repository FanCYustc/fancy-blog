---
aliases: []
info: 上下极限事件的定义
date: 2023-09-04-星期一 10:26
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/随机事件
id: wiki20230904102604
banner: "![[astrowalk.gif]]"
---
---

类比数列

$$
\lim_{ n \to \infty }\sup a_{n}=\lim_{ n \to \infty }(\sup_{k\geq n}a_{n})  
$$
## Def 1 上极限事件

对事件族 $\{A_{k}\}$
$$
\lim\limits_{n\to\infty}\sup\limits_{k\geq n}A_n=\bigcap\limits_{k=1}^\infty\bigcup\limits_{n=k}^\infty A_n;
$$

称为上极限事件, 表示有有无穷多个 $A_{k}$ 包含上极限事件 $\omega$

## Def 2 下极限事件

对事件族 $\{A_{k}\}$

$$
\lim_{ n \to \infty }\inf A_{n} = \bigcup_{k=1}^{\infty}\bigcap_{n=k}^{\infty}A_{n}
$$

称为下极限事件，表示除有限个 $A_{k}$，其余都包含 $\omega$ 事件


## Pro 1

事件列有极限当且仅当上下极限事件的集合相同

$$
\lim_{ n \to \infty }\sup A_{n}=\lim_{ n \to \infty } \inf A_{n} 
$$
记为 $\lim_{ n \to \infty }A_{n}$

## Cal 1

若集合列单增[[Wiki - Halmos定理|单调类]]，则极限存在且
$$
\lim_{ n \to \infty } A_{n}=\bigcup_{n=1}^{\infty}A_{n} 
$$
若单调减，则极限存在且
$$
\lim_{ n \to \infty } A_{n}=\bigcap_{n=1}^{\infty}A_{n} 
$$
### Proof

$$
\lim_{ n \to \infty }\sup A_{n}=\bigcap_{n=1}^{\infty}\bigcup_{k\geq n}A_{k}=\bigcap_{n=1}^{\infty}\bigcup_{k=1}^{\infty} A_{k}=\bigcup_{n=1}^{\infty}A_{n}
$$
下极限同上

