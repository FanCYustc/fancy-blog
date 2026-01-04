---
aliases:
  - Jordan可测
info: 平面面积的定义
date: 2023-04-28-星期五 22:12
update: 2023-12-14-Thursday 09:17:59
tags:
  - wiki/year2023
  - wiki/month04
  - 实分析
id: wiki20230428221210
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

#几何学 

积分由一元推广到二维，需要对黎曼可积进行一些补充

两个目标：1、把积分区间分割成小矩形

2、定义面积

[[Wiki - 分割和加细分割]]

## Def 1 内外面积

```ad-definition
title: Definition 2

设 D 是二维平面的一个**有界集合**

$$
\begin{array}{*{20}{c}}{\sigma _T^{+ }\left( D \right) = \mathop \sum \limits_{{I_{ij}} \cap D \ne \phi } \sigma \left( {{I_{ij}}} \right)}\\{\sigma _T^{ - }\left( D \right) = \mathop \sum \limits_{I_{ij} \subset D} \sigma \left( {{I_{ij}}} \right)}\end{array}

$$

都是有限和，分别称为外面积和内面积。

```
## Pro 1 

```ad-proposition
title: Propositon 1

有这样的性质：$\pi_{2}$ 是分割 $\pi_{1}$ 的加细分割，则

$$
\sigma_{\pi_{1}}^{-}(D)\leq\sigma_{\pi_{2}}^{-}(D),\sigma_{\pi_{2}}^{+}(D)\leq \sigma_{\pi_{1}}^{+}(D)
$$
即分割越细，越往中间收敛

```


## Def3 Jordan 可测

```ad-definition
title: Definition 3

当
$$
\lim_{ \mid T\mid \to 0 } \sigma _T^{+ }\left( D \right)=\lim_{ \mid T\mid \to 0 } \sigma _T^{- }\left( D \right)
$$
那么称 D 是**Jordan 可测的**

```


## Def4 零测

```ad-definition
title: Definition 4

当 def3 中的极限为 0 时，称 D 为**零测的**

```


## Pro 2 边界零测与可测

```ad-theorem
title: Theorem 1

Jordan 可测的充要条件是边界为零测集

```

[[Wiki - 度量空间的内部外部#Definition 1]]

### Proof

先证引理：
```ad-lemma
title: Lemma 1

D 可测当且仅当存在一列分割 $\{\pi_{n}\}$，使得

$$
|\sigma^{+}_{\pi_{n}}(D)-\sigma_{\pi_{n}}^{-}(D)|\to 0 (n\to \infty)
$$


```
有了引理以后：

充分性：找一列子列，就比任意分割好证。由引理，因为边界零测，则有一列分割 $\{\pi_{n}\}$，$\lim_{ n \to \infty }\sigma_{\pi_{n}}^{+}(\partial D)=0$

$$\begin{aligned}
\sigma_{\pi_{n}}^{+}(D)-\sigma_{\pi_{n}}^{-}(D)& =\sum_{I_{kl}\in\partial_D\pi_n}\sigma(I_{kl})  \\
&\leqslant\sigma_{\pi_{n}}^{+}(\partial D)\rightarrow0,(n\rightarrow\infty).
\end{aligned}$$

其中 $\partial_D\pi=\{I_{kl}\in\pi\Big|I_{kl}\cap D\neq\varnothing,\quad I_{kl}\cap D^c\neq\varnothing\},$

必要性：构造分割使 $\sigma_{\pi}^{+}(\partial D)\leq \epsilon,\forall \epsilon$

**一个常见的技术**：由于边界可能不能被分割全包含进去，所以要将边上的分割适当扩大，内部的分割适当缩小。


我们适当地缩小每个包含于 $D$ 的矩形 $I_{ij}$ 得到矩形 $I_{ij}^{-}$, 满足如下关系与不等式：

$$
\bigcup_{I_{ij}\subset D}I_{ij}^{-}\subset\bigcup_{I_{ij}\subset D}I_{ij}^{\circ}\subset\bigcup_{I_{ij}\subset D}I_{ij}\subset D,
$$

$$
\sigma_{\pi}^{-}(D)-\sum_{I_{ij}\subset D}\sigma(I_{ij}^{-})<\varepsilon,
$$

对于不包含于 D 但有交的分割，扩大得到 $I_{ij}^{+}$，使得

$$
\sum_{I_{ij}\cap D\neq \varnothing} \sigma(I_{ij}^{+})-\sigma_{\pi}^{+}(D)<\epsilon
$$

此时有 $\overline{D}\subset \bigcup_{I_{ij} \cap D\neq \varnothing} I_{ij}^{+}$

所以有 
$$
\partial D=\overline{D} / D^{\circ} \subset \bigcup_{I_{ij}\cap D\neq\emptyset}I_{ij}\setminus\bigcup_{I_{ij}\subset D}I_{ij}^{\prime}.
$$

由引理，存在分割 $\pi$，使得 $\sigma_{\pi}^{+}(D)-\sigma_{\pi}^{-}(D)<\epsilon$，拼合 $I_{ij}^{-}$ 和 $I_{ij}^{+}$ 的顶点得到加细分割 $\pi'$，有

$$
\sigma_{\pi'}^{+}(\partial D)\leq \sum_{I_{ij}\cap D \neq \varnothing} \sigma(I_{ij}^{+})-\sum_{I_{ij}\subset D} \sigma(I_{ij}^{-} )<3\epsilon
$$

```ad-example
title: Example 1

e.g. $D=\{(x, y) \mid(x, y) \subset[0,1] \times[0,1], x, y \in Q\}$

D 没有内点， $\therefore \sigma_{T}(D)=0$

但 $\quad \sigma_T^{+}(D) \geqslant 1 \quad \therefore D 不是可测集$

```



```ad-example
title: Example 2

e.g. f 连续，$\Gamma(f)=\{(x,f(x))\mid x\in [a,b] \}$ 是零测集

Proof: $对| x_i-x_{i-1}|<\delta，| f\left(x_i\right)-f\left(x_{i-1}\right) \mid<\varepsilon$

$\therefore \sigma_1^{+}(\Gamma(t)) \leqslant \sum_{i=1}^n 2 \varepsilon \Delta x_i=2 \varepsilon(b-a) \quad\|T\|\to 0$ 时, $\varepsilon \rightarrow 0$

```




