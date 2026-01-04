---
aliases: 
info: Helly第一第二定理
date: 2023-12-04-星期一 10:26
update: 
tags:
  - wiki/year2023
  - wiki/month12
  - 概率论/极限理论
  - 概率论/随机变量
id: wiki20231204102619
banner: "![[astrowalk.gif]]"
---
---

## Lemma 1 

设 $\{F_n,F\}$ 为有界，单调增且右连续函数，则

$$
F_n\xrightarrow{w} F\Longleftrightarrow F_n(x)\to F(x),\quad x\in D,
$$

[[Wiki - 依分布收敛#Def 1 弱收敛]] 其中 $D$ 为 $C (F)$ 的某个稠密子集 

[[Wiki - 弱收敛#Pro 3]]
## The 1 Helly 第一定理

```ad-theorem
title: Theorem 1

设 $\{F_n,n\geq1\}$ 为有界，单调增且右连续函数序列，则 $\{F_n,n\geq1\}$ 是弱紧的，即存在 $\{F_n\}$ 的子列 $\{F_{n_k}\}$ 使得

$$
F_{n_k}\xrightarrow{w}F.
$$


```

[[Wiki - 分布函数]]
### Proof

利用对角线法（仿照 [[Wiki - 一致等度连续]]的证明）以及 The 1

其实就是一致有界且一致等度连续的函数列有收敛子列

## Lemma 2 嵌入定理

```ad-lemma
title: Lemma 2

设 $F_n\xrightarrow{d}F$, 则存在定义于同一概率空间上的 nv 序列 $\{X,X_n,n\geq1\}$, 使得 $F_{X_n}=F_n$, $F_X=F$, 且对 $\forall w\in\Omega$, 有 $X_n(w)\to X(w).$

```


即对任何依分布收敛的序列，都能找到对应的随机变量序列[[Wiki - 分布函数的逆]]


## The 2 Helly 第二定理

```ad-theorem
title: Theorem 2

设 $F_n\xrightarrow{d}F,g(x)$ 为**有界连续**函数，则

$$
\int_{\Re}g(x)dF_n(x)\longrightarrow\int_{\Re}g(x)dF(x).
$$


```

[[Wiki - 函数的连续性]]
