---
aliases: 
info: 二重可积的判定，计算
date: 2023-04-28-星期五 22:30
update: 
tags:
  - wiki/year2023
  - wiki/month04
  - 数学分析/积分
id: wiki20230428223054
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Def1 二重可积的概念

在某种意义下，单变量的达布和与黎曼可积与面积的上下和与可测对应


黎曼和定义与单变量一致

$\mid T\mid=max\{diam \space D_{i}\}$

若对 $\forall \epsilon>0$ $\exists \delta>0$ 只要 $\mid T\mid<\delta$
$$
\mid \sum_{i=1}^{n}f(\xi_{i},\eta_{i})\sigma(D_{i})-A\mid<\epsilon
$$
则称函数 f 在 D 上**可积**

## Pro1 可积必有界
  
可积函数必有界

## Def2 达布和

```ad-definition
title: Definition 1

设分割 $\pi=\{I_{kl}\}$，记 $M_{kl}(f)=\sup_{P\in I_{kl}}f (P), m_{kl}(f)= \inf_{P\in I_{kl}}f(P)$

定义 
$$
\overline{S_{\pi}}= \sum_{I_{kl}\in \pi}M_{kl}(f)\sigma(I_{kl})
$$
为 darboux 上和
$$
\underline{S_{\pi}}(f)= \sum_{I_{kl}\in \pi}m_{kl}(f)\sigma(I_{kl})
$$
为 darboux 下和

```

 [[Wiki - 平面区域的面积]]

振幅同单变量积分

## Pro2 达布上下和差趋于 0

```ad-proposition
title: Propositon 1

f 在 D 可积等价于
$$
\mathop {\lim }\limits_{\left| T \right| \to 0} \left( {\bar S\left( {f,T} \right) - \underline{S}\left( {f,T} \right)} \right) = 0
$$


```

### Proof

需要证明两种定义的等价

Riemann 和推 darboux 和好推：$a-\epsilon< \sum f(\xi_{ij})\sigma(I_{ij})<a+\epsilon$，对有限个段里函数取上下确界即证

Darboux 和推 Riemann 和比较麻烦：如果函数 $f$ 的上下积分相等，记 $a=\underline{S}(f)=\overline{S}(f)$, 对任意 $\varepsilon>0$, **存在**一个分割 $\pi$ 使得

$$
\overline{S}_{\pi}(f)-\underline{S}_{\pi}(f)<\varepsilon.
$$
**困难的地方就在于由上确界得到的是存在分割，但 Riemann 和是对任意分割**

解决办法：分情况讨论，对包含在原 $\pi$ 里面的放缩，对与原分割边界有交的限缩。

需要一个引理：

```ad-lemma

设 D 是一个有界的平面矩形，$\pi^{\prime}=\{I_{ij}^{\prime}\}$ 是平面的一个固定分割，对任意的分割 $\pi_1=\{I_{kl}\}$, 记

$$
\pi_1'=\left\{I_{kl}\in\pi_1\:\bigg|\:I_{kl}\subset D,\:\textit{但不存在}I_{ij}^{\prime}\in\pi^{\prime}\textit{使得}I_{kl}\subset I_{ij}^{\prime}\right\}.
$$

对任意正数 $\varepsilon$, 存在 $\delta>0$, 若 $\|\pi_1\|<\delta$, 就有

$$
\sum_{I_{kl}\in\pi_{1}^{\prime}}\sigma(I_{kl})<\varepsilon.
$$


```

现在分割 $\pi$ 固定，则由引理，任意分割 $\pi_{1}$， $\mid\mid\pi_{1}\mid\mid<\delta$ 时引理成立。现在有

$$
|\sum_{I_{kl}\in \pi_{1}} f(\xi_{kl})\sigma(I_{kl})-a|\leq \overline{S_{\pi_{1}}}(f)-\underline{S_{\pi_{1}}}(f)
$$
其中 $a=\overline{S}(f)=\underline{S}(f)$

另一方面有

$$\begin{aligned}
\overline{S}_{\pi_{1}}(f)-\underline{S}_{\pi_{1}}(f)& =\sum_{I_{kl}\in\pi_1}(M_{kl}-m_{kl})\sigma(I_{kl})  \\
&\begin{aligned}&=\sum_{\exists I_{ij}^{\prime}\in\pi,I_{kl}\subset I_{ij}^{\prime}}(M_{kl}-m_{kl})\sigma(I_{kl})+\sum_{I_{kl}\in\pi_{1}^{\prime}}(M_{kl}-m_{kl})\sigma(I_{kl})\end{aligned} \\
&\leqslant\sum_{I_{ij}^{\prime}\cap D\neq\varnothing}(M_{ij}-m_{ij})\sigma(I_{ij}^{\prime})+2\varepsilon\sup|f| \\
&\leqslant\left(\overline{S}_{\pi}(f)-\underline{S}_{\pi}(f)\right)+2\varepsilon\sup|f| \\
&\leqslant(1+2\sup|f|)\varepsilon,
\end{aligned}$$

