---
aliases: 
info: 
date: 2024-11-13-星期三 10:27
update: 
tags:
  - wiki/year2024
  - wiki/month11
  - 泛函分析/线性算子
id: wiki20241113102712
banner: "![[astrowalk.gif]]"
---
---

![[Wiki - hahn-banach定理#The 1 HBT]]

 [[Wiki - 赋范空间]]
## Pro 1 

对赋范空间 X，$\forall x_{0}\in X,\exists f\in X^{*},\|f\|=1$ [[Wiki - 对偶空间]]，满足 $f (x_{0})=\|x_{0}\|$

### Proof

取 $M=span\{x_{0}\}$，定义线性泛函 $f_{0}: M\to \mathbb{K}, x=\lambda x_{0}\to\lambda\|x_{0}\|$，验证 $f_{0}\in  M^{*}, \|f_{0}\|=1$，由 HBT，存在 $f_{0}$ 在 X 上的延拓 f，有 $\|f\|=1, f (x_{0})=f_{0}(x_{0})=\|x_{0}\|$

## Cal 1 

对赋范空间 X，$X\neq \emptyset\to X^{*}\neq \emptyset$

## Cal 2 

对赋范空间 X，$x\neq y\in X$，则存在 $f\in X^{*}, f (x)\neq f(y)$

## Cal 3 

对赋范空间 X，若对 $\forall f\in X^{*}, f (x)=f (y), x, y\in X$，则有 $x=y$

## Pro 2 算子范数的对偶

X 为赋范空间，对 $x\in X$ 有

$$
\|x\|=\sup_{f\in X^{*},\|f\|=1} |f(x)|
$$

[[Wiki - 线性算子的范数]]

### Proof

一方面有 $|f (x)|\leq \|x\|,\|f\|=1$；另一方面，由 [[#Pro 1]]，存在 f 使得 $\|f\|=1, f (x)=\|x\|$

## Pro 3 

赋范空间 X，M 是 X 的子空间，$x_{0}\in X,dist(x_{0},M)=d>0$，则 $\exists f\in X^{*},\|f\|=1$ 满足 $f (M)=\{0\}, f(x_{0})=d$


 ### Proof 
 令 $\widetilde{M} \stackrel{\text{def}}{=} M \oplus \text{span}\{x_0\}$，定义 $f_0:\widetilde{M} \rightarrow \mathbb{K}, x = y + \lambda x_0 \mapsto \lambda d$ 
 
 于是 $f_0(M) = \{0\}$ 且 $f_0(x_0) = d$，而且对于 $\forall x = y + \lambda x_0$，其中 $y \in M$， 
 
 1、如果 $\lambda = 0$，则 $f_0(x) = 0$. 
 
 2、如果 $\lambda \neq 0$， $|f_0(x)| = |\lambda d| = |\lambda| \cdot d \leq |\lambda| \cdot \|x_0 + \frac{y}{\lambda}\| = \|y + \lambda x_0\| = \|x\|$. 
 
 于是 $f_0 \in \widetilde{M}^*$ 且 $\|f_0\| \leq 1$，由 HBT 可得存在 $f \in X^*$ 满足 $f|_{\widetilde{M}^*} = f_0$ 且 $\|f\| = \|f_0\| \leq 1$，则 $f(M) = \{0\}, f(x_0) = d$. 
 
 只需证明 $\|f\| \geq 1$. $d = \inf_{y \in M} \|x_0 - y\| \Rightarrow \forall n, \exists y_n \in M \text{ s.t. } \|x_0 - y_n\| < d + \frac{1}{n}$
 
  $\Rightarrow \frac{|f(x_0 - y_n)|}{\|x_0 - y_n\|} = \frac{|f(x_0)|}{\|x_0 - y_n\|} > \frac{d}{d + \frac{1}{n}} \rightarrow 1 \text{ as } n \rightarrow \infty$ $\Rightarrow \sup_n \frac{|f(x_0 - y_n)|}{\|x_0 - y_n\|} \geq 1$ $\Rightarrow \|f\| \geq 1$ 

## Pro 4 

X 是赋范空间，$M\subset X$，则 $x_{0}\in \overline{spanM}\leftrightarrow f (x_{0})=0 \forall f\in X^{*}with f (M)=\{0\}$

### Proof

$\to:$ 若 $x_{0}\in \overline{spanM}$， $\forall f\in X^{*}, f (M)=\{0\}$，由线性泛函的线性性和连续性，有 $f (spanM)=\{0\}\to f (\overline{spanM})=\{0\}$，所以 $f(x_{0})=0$

$\leftarrow:$ 反证假设 $x_{0}\notin \overline{spanM}$，则由闭集 [[Wiki - 度量空间的开集闭集]]， $dist(x_{0},\overline{spanM})=d>0$，由 [[#Pro 3]]，$\exists f\in X^{*},\|f\|=1$ 满足 $f (\overline{spanM})=\{0\},f(x_{0})=d$，矛盾

