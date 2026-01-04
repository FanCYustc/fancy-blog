---
aliases: 
info: 
date: 2024-06-13-星期四 20:31
update: 
tags:
  - wiki/year2024
  - wiki/month04
  - 随机过程/markov链
id: wiki20240613203139
banner: "![[astrowalk.gif]]"
---
---

## Def 1 

为了刻画 markov 链[[Wiki - markov链]]状态的常返，即一定会回来，需要定义描述的量 $f_{ii}$

$$N_k(n)=\#\{\nu:\:X_\nu=k,1\leq\nu\leq n\},\quad\forall\:n\geq1,$$
即 $N_k(n)$ 表示前 $n$ 步状态转移访问状态 $k$ 的**次数**. 再定义

$$f_{jk}=\mathrm{P}\left(N_{k}(\infty)>0\mid X_{0}=j\right),\\g_{jk}=\mathrm{P}\left(N_{k}(\infty)=\infty\mid X_{0}=j\right),$$

一个表示最终能够访问 k 的概率，一个表示无穷多次访问 k 的概率

## Pro 1

```ad-proposition
title: Propositon 1


$$
f_{jk} =\sum_{n=1}^{\infty}f_{jk}^{n}
$$

其中 $f_{jk}^{n}=P(在第n步首次访问k|X_{0}=j)$

$P_{jk}^{n}=\sum_{m=1}^{n}f_{jk}^{m}P_{kk}^{n-m}$ 

$g_{jk}=f_{jk}g_{kk}$

$g_{kk}=\lim_{ n \to \infty }(f_{kk})^{n}$

```

[[Wiki - markov链n步转移概率]]

### Proof

直观上去条件很好理解，取条件[[Wiki - 条件概率与独立性]]

## Def 2 常返

```ad-definition
title: Definition 2

对 markov 链，j 为常返的如果 $f_{kk}=1\leftrightarrow g_{kk}=1$

还等价于$\sum_{n=1}^{\infty}P_{kk}^{n}=\infty$

称为非常返的如果 $f_{kk}<1\leftrightarrow g_{kk}=0$

还等价于$\sum_{n=1}^{\infty}P_{kk}^{n}<\infty$

```

 [[Wiki - markov链]]

常返就代表运动总是会回到 j

### Proof

涉及到 $\sum P_{kk}^{n}$ 的条件等价性需要用到概率的生成函数以及 Abel 引理：

具体见胡太忠实用随机过程 PPT 第四章4.2

## Pro 2 常返是类性

```ad-proposition
title: Propositon 2

常返与非常返都是类性

```

[[Wiki - markov链的类]]

### Proof

由 $i\longleftrightarrow j$ 知存在 m, n 使得 $P_{ij}^{m}>0, P_{ji}^{n}>0$, 于是 $P_{jj}^{n+k+m}\geq P_{ji}^{n}P_{ii}^{k}P_{ij}^{m},\quad\forall k$. 所以

$$\sum_{k=1}^{\infty}P_{jj}^{k}\geq\sum_{k=1}^{\infty}P_{jj}^{n+k+m}\geq P_{ji}^{n}P_{ij}^{m}\sum_{k=1}^{\infty}P_{ii}^{k}=\infty.$$


## Pro 3 

由同常返也可以推等价：

```ad-proposition
title: Propositon 3

$k\to j,f_{kk}=1$，则 $j\leftrightarrow k,f_{jk}=1$

```

### Proof

因为 $g_{kk} =\sum_{i\in S}P_{ki}^{n}g_{ik}$

所以 $1-g_{kk} =\sum_{j\in S} P_{kj}^{n}(1-g_{jk})$

再由于 $k\to j$，$\exists P_{kj}^{n_{0}}>0$，所以 $g_{jk}=1=g_{kk}f_{jk}$

## The 1 

```ad-theorem
title: Theorem 1

对 markov 链，一个类如果是常返的就一定是闭的 

对于非常返，可以是不闭的；如果是闭的则一定含有**无穷多个状态**

```

[[Wiki - markov链的类]]


要是有限个状态还是闭的，类似抽屉原理，总有一个会无穷多次访问