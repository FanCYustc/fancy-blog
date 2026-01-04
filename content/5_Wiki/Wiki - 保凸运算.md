---
aliases:
  - 分式线性函数
  - 透视函数
info: 
date: 2025-03-04-星期二 15:03
update: 
tags:
  - wiki/year2025
  - wiki/month03
  - 凸优化
id: wiki20250304150341
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 保凸集运算

### 交集

两个凸集的交集是凸集 [[Wiki - 凸集]]

### 仿射函数

设 $S\subseteq\mathbf{R}^{n}$ 是凸的, 且 $f:\mathbb{R}^{n}\rightarrow\mathbb{R}^{m}$ 是仿射函数 [[Wiki - 仿射函数]]。那么,  

(i) S 在 $f$ 下的象  

$$
f(S)=\{f(x)|x\in S\}
$$  

是凸集.  

(ii) S在 $f$ 下的逆象/原象  

$$
f^{-1}(S)=\{x|f(x)\in S\}
$$  

是凸集.  

### 透视函数

透视函数称 $P:\mathbb{R}^{n+1}\rightarrow\mathbb{R}^{n}$  

$$
P(z,t)=z/t
$$  

为透视函数,其定义域为dom $P=\mathbf{R}^{n}\times\mathbf{R}_{++}.$  

此处 $\mathbf{R}_{++}=\{x\in\mathbf{R}\mid x>0\}.$  

透视函数对向量进行伸缩，使得最后一维分量为1并舍弃之。

其实就是[[Scientech - 几何学基础-射影几何]]  射影变换的推广

（i）如果 $C\subseteq$ dom $P$ 是凸集，则象  

$$
P(C)=\{P(x)|x\in C\}
$$  

是凸集.  

(ii)凸集在透视函数下的原象也是凸的:如果 $C\subseteq\mathbf{R}^{n}$ 是凸集，则  

$$
P^{-1}(C)=\left\{(x,t)\in\mathbf{R}^{n+1}|x/t\in C,t>0\right\}
$$  

是凸集. 

### 分式线性函数

设 $g:\mathbb{R}^{n}\to\mathbb{R}^{m+1}$ 为仿射的,即  

$$
g(x)={\left[\begin{array}{l}{A}\\ {c^{\top}}\end{array}\right]}x+{\left[\begin{array}{l}{b}\\ {d}\end{array}\right]}
$$  

其中 $A\in\mathbf{R}^{m\times n}$ ,$b\in R^{m}$, $c\in\mathbb{R}^{n}$ ， $d\in\mathbb{R}$ 函数 $f:\mathbf{R}^{n}\rightarrow\mathbf{R}^{m}\,f=P\circ g;$ 即  

$$
f(x)=(A x+b)/(c^{\top}x+d),\quad\mathrm{dom}f=\{x|c^{\top}x+d> 0\}
$$  

称为线性分式函数 (或投射函数).  是[[Wiki - 分式线性变换]]的推广

(i)如果 $C$ 是凸集且属于 $f$ 的定义域内（即 $c^{\top}x+d>0$ ， $x\in C)$ ，则它 的象 $f(C)$ 是凸集.  

(ii)如果 $C\subseteq\mathbf{R}^{m}$ 是凸集，则原象 $f^{-1}(C)$ 是凸集.  


## Pro 2 保凸函数运算


凸函数[[Wiki - 凸函数]]类在以下运算下保持封闭：
1. **非负加权求和**：$f(x) = \sum_{i=1}^k \alpha_i f_i(x)$，其中 $\alpha_i \geq 0$
2. **逐点上确界**：$f(x) = \sup_{i \in I} f_i(x)$
3. **仿射复合**：$f(Ax+b)$ [[Wiki - 仿射函数]]
4. **透视函数**：$g(x,t) = t f(x/t)$，其中 $t > 0$

### 复合函数

复合运算：对 $h : \mathbf{R} \rightarrow  \mathbf{R},g : {\mathbf{R}}^{n} \rightarrow  \mathbf{R}$
$f\left( x\right)  = h\left( {g\left( x\right) }\right) ,\;\operatorname{dom}f = \{ x \in  \operatorname{dom}g \mid  g\left( x\right)  \in  \operatorname{dom}h\}$
${f}^{\prime \prime }\left( x\right)  = {h}^{\prime \prime }\left( {g\left( x\right) }\right) {g}^{\prime }{\left( x\right) }^{2} + {h}^{\prime }\left( {g\left( x\right) }\right) {g}^{\prime \prime }\left( x\right)$
- 如果 $h$ 是凸函数且非减, $g$ 是凸函数,则 $f$ 是凸函数.
- 如果 $h$ 是凸函数且非增, $g$ 是凹函数,则 $f$ 是凸函数.
- 如果 $h$ 是凹函数且非减, $g$ 是凹函数,则 $f$ 是凹函数.
- 如果 $h$ 是凹函数且非增, $g$ 是凸函数,则 $f$ 是凹函数.

设$f\left( x\right)  = h\left( {g\left( x\right) }\right)  = h\left( {{g}_{1}\left( x\right) ,\ldots ,{g}_{k}\left( x\right) }\right)$，其中 $h : {\mathbf{R}}^{k} \rightarrow  \mathbf{R} \cup  \{  + \infty \} ,{g}_{i} : {\mathbf{R}}^{n} \rightarrow  \mathbf{R}.{g}^{\prime \prime }\left( x\right)  : n \times  \left( {nk}\right)$

${g}^{\prime }\left( x\right)  : k \times  n,{\nabla }^{2}h\left( {g\left( x\right) }\right)  : k \times  k,\nabla h\left( {g\left( x\right) }\right)  : k \times  1$

$$
{f}^{\prime \prime }\left( x\right)  = {g}^{\prime }{\left( x\right) }^{\top }{\nabla }^{2}h\left( {g\left( x\right) }\right) {g}^{\prime }\left( x\right)  + {g}^{\prime \prime }\left( x\right) \left( {{I}_{n} \otimes  \nabla h\left( {g\left( x\right) }\right) }\right)$$

- 如果 $h$ 是凸函数且在每维分量上 $h$ 非减, ${g}_{i}$ 是凸函数,则 $f$ 凸；
- 如果 $h$ 是凸函数且在每维分量上 $h$ 非增, ${g}_{i}$ 是凹函数,则 $f$ 凸；
- 如果 $h$ 是凹函数且在每维分量上 $h$ 非减, ${g}_{i}$ 是凹函数,则 $f$ 凹；
- 如果 $h$ 是凹函数且在每维分量上 $h$ 非增, ${g}_{i}$ 是凸函数, 则 $f$ 凹.

## Pro 3 

如果函数 $f$ 关于 (x, y) 是凸函数, 集合 $C$ 是非空凸集, 定义函数$g\left( x\right)  = \mathop{\inf }\limits_{{y \in  C}}f\left( {x,y}\right)$则函数 $g$ 关于 $x$ 是凸函数。
### Proof

 $epi\space g = \{ \left( {x,t}\right)  \mid 对某个 y \in  C 成立 \left( {x,y,t}\right)  \in  \operatorname{epi}f\}$
 
由于 epi $g$ [[Wiki - 上境图]]为凸集在其中一些分量上的投影, 因此它仍然是凸集.