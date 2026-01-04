---
aliases:
  - 伯努利实验
info: 伯努利随机变量的定义性质
date: 2023-09-21-星期四 14:42
update: 
tags:
  - wiki/year2023
  - wiki/month09
  - 概率论/随机变量
id: wiki20230921144249
banner: "![[astrowalk.gif]]"
---
---

## Def 1 bernoulli 随机变量

用示性函数 X 表示 bernoulli 实验中的随机事件

## Def 2 独立和

$A_{1},A_{2}$ 是定义在同一概率空间的两个相互独立的随机事件，$X=I_{A_{1}},X_{2}=I_{A_{2}}$ 是同一概率空间上两个不同的 bernoulli 随机变量 [[Book - 概率论与数理统计#第一章-事件的概率]]。

定义 
$$X(\omega)=X_1(\omega)+X_2(\omega)=\begin{cases}&0,&\omega\in A_1^\mathrm{c}A_2^\mathrm{c},\\&1,&\omega\in A_1A_2^\mathrm{c}\cup A_1^\mathrm{c}A_2,\\&2,&\omega\in A_1A_2.\end{cases}$$

称为 bernoulli 事件的独立和

其分布律[[Wiki - 分布函数]]为

$$\left.\left(\begin{array}{ccc}0&1&2\\q_1q_2&p_1q_2+q_1p_2&p_1p_2\end{array}\right.\right).$$

$q_{i}=1-p_{i}$

