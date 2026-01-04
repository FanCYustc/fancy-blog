---
aliases: 
info: 
date: 2024-11-13-星期三 10:59
update: 
tags:
  - wiki/year2024
  - 泛函分析/线性算子
  - wiki/month11
  - 凸优化
id: wiki20241113105921
banner: "![[astrowalk.gif]]"
---
---

## Def 1 分离

对**实向量空间**X，$A, B\subset X$， 称 $H_{f}^{r}$ [[Wiki - 超平面]]分离 A 和 B，是指

$$
\sup_{x\in A} f(x)\leq r\leq \inf_{y\in B} f(y)或\sup_{y\in B}f(y)\leq r\leq \inf_{x\in A}f(x)
$$

当两个小于等于号都是严格取不等时，称为 $H_{f}^{r}=f^{-1}(r)$ 严格分离 A 和 B
## The 1 


X 是实赋范空间，C 是有内点[[Wiki - 度量空间的内部外部|内点外点边界点]]的凸集 [[Wiki - 凸集]]，$x_{0}\notin C$，则 $\exists f\in X^{*}, r\in \mathbb{R}$，有 $H_{f}^{r}$ 分离 $x_{0}$ 和 C。

### Proof

不妨设 0 是 C 的内点，$P_C$ 是 C 的 Minkowski 泛函 [[Wiki - 度规|Minkowski泛函]]，由 0 是内点有 $P_C$ 是次线性泛函 [[Wiki - 次线性泛函]]，并且 $\bar{C} = \{x \in X: P_C (x) \leq 1\}$ 

$x_0 \notin C \Rightarrow P_C (x_0) \geq 1$，0 是 C 的内点 $\Rightarrow \exists \epsilon > 0$ s.t. $B (0, \epsilon) \subset C$，于是 $\forall x \in X, x \neq 0, \frac{\epsilon}{\|x\|} x \in B (0, \epsilon) \subset C$ 。进而 $P_C (\frac{\epsilon}{\|x\|} x) \leq 1, \forall 0 \neq x \in X$，也就是 $P_C (x) \leq \frac{1}{\epsilon} \|x\|, \forall x \in X$ 

令 $M = \text{span}\{x_0\}$，定义 $f_0: M \rightarrow \mathbb{R}, x = \lambda x_0 \mapsto \lambda P_C (x_0)$，则 $f_0 (x) \leq P_C (x), \forall x \in M$（因为是正齐次性），

由实 HBT [[Wiki - hahn-banach定理]] 可得存在 $f: X \rightarrow \mathbb{R}$ 满足 $f|_M = f_0$ 且 $f (x) \leq P_C (x), \forall x \in X$，进而 
$$
f (x_0) = f_0 (x_0) = P_C (x_0) \geq 1, f (x) \leq P_C (x) \leq 1, \forall x \in C
$$ 

因此 $H_{f}^{1}$ 分离 $x_0$ 和 C。只剩下证明 $f \in X^{*}$[[Wiki - 有界线性算子]]： 

$$
\begin{align}
f (x) \leq P_C (x) \leq \frac{1}{\epsilon} \|x\|, \forall x \in X \Rightarrow -f (x) \leq \frac{1}{\epsilon} \|x\| \\
\Rightarrow |f (x)| \leq \frac{1}{\epsilon} \|x\|, \forall x \in X \Rightarrow f \in X^*
\end{align}
$$

## The 2 凸集分离定理

X是实赋范空间[[Wiki - 赋范空间]]，

1、A是开[[Wiki - 度量空间的开集闭集]]凸集，B是凸集，$A\cap B=\emptyset$，则存在$H_{f}^{r}$闭，且分离A和B

2、A是闭凸集，B是紧凸集[[Wiki - 度量空间的紧致性]]，$A \cap B=\emptyset$，则存在$H_{f}^{r}$闭，且严格分离A和B

### proof

1、取$C=\{x-y: x\in A,y\in B\}=A-B$，则由于$C= \cup_{y\in B} (A-y)$且A是凸开集，所以C是凸开集，且$0\notin C$,所以由[[#The 1]]，存在$H_{f}^{r}$分离C和0。所以有

$$
\sup_{x-y\in C}f(x-y)= \sup_{x\in A}f(x)- \inf_{y\in B}f(y)\leq f(0)=0
$$
取$r= \frac{1}{2}(\sup_{x\in A}f(x)+\inf_{y\in B}f(y))$，有$H_{f}^{r}$分离A和B

2、令$\epsilon = \frac{1}{4} dist(A,B)>0$，取$A_{\epsilon}= A+B(0,\epsilon),B_{\epsilon}= B+B(0,\epsilon)$

$A_{\epsilon},B_{\epsilon}$都是开凸集，且不交，由1得存在$H_{f}^{r}$分离$A_{\epsilon},B_{\epsilon}$。于是$f(x+\epsilon z)\leq r\leq f(y+\epsilon z), \forall x\in A, y\in B, z\in B(0,1)$

所以$-f(z)=f(-z)\leq \frac{{f(y)-r}}{\epsilon}, \forall z\in B(0,1)$，所以$\sup_{z\in B(0,1)}f(z)=\|f\|\leq \frac{{f(y)-r}}{\epsilon}$

所以$r\leq \inf_{y\in B}f(y)- \epsilon\|f\|< \inf_{y\in B}f(y)$，同理可得$r\geq \sup_{x\in A}f(x) + \epsilon\|f\|> \sup_{x\in A}f(x)$，所以$H_{f}^{r}$严格分离A,B。

[[Wiki - 承托超平面]]

## Pro 1 ascoli 定理

X 是实赋范空间，C 是 X 的闭凸子集，$x_{0}\notin C$，则存在 $f\in X^{*},r\in \mathbb{R}$，有 $\sup_{x\in C}f(x)<r< f(x_{0})$

## Cal 2 

X是实赋范空间，M是X的子空间，则$\overline{M}\neq X\leftrightarrow \exists f\in X^{*},f\neq 0s.t.f(M)=\{0\}$；

换一种说法，$\overline{M}=X\leftrightarrow f\in X^{*},f(M)=\{0\}\to f=0$