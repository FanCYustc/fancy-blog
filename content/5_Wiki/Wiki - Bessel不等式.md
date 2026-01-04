---
aliases: 
info: Bessel不等式
date: 2023-07-03-星期一 11:17
update: 
tags:
  - wiki/year2023
  - wiki/month07
  - fourier分析
id: wiki20230703111756
banner: "![[astrowalk.gif]]"
---
---
#数学分析/级数 

## The 1 bessel 不等式

[[Wiki - 平方可积的性质]]中，$\Delta_{n}\geq 0$

对于函数的 fourier 级数
          $$\begin{array}{*{20}{c}}{\frac{{a_0^2}}{2} + \mathop \sum \limits_{k = 1}^n \left( {a_k^2 + b_k^2} \right) \le \frac{1}{\pi }\int _{ - \pi }^\pi {f^2}\left( x \right)dx}\\{f \in {L^2}\left[ { - \pi ,\pi } \right]}\end{array}$$

解释：$S_n (x)$ 是 f 在

$$
\{1,\cos kx,\sin kx\dots\};k=1,2,\dots,n
$$
                                                                             
[[Wiki - 三角函数系]]

[[Wiki - 三角函数系的性质]]

张成的平面上的投影（因为它是距离最近的，在三维下画图很好理解）[[Wiki - 欧式空间的子空间|正交投影]]

## The 2 一般的 bessel 不等式

对于内积空间 $(X,\langle \cdot,\cdot \rangle)$，$\{e_{\alpha}\}_{\alpha\in A}$ 为规范正交集 [[Wiki - 内积空间的正交基#Def 1 正交集]]，则

$$
\sum_{\alpha\in A} |\langle x,e_{\alpha}\rangle|^{2} \leq \|x\|^{2}
$$

### Proof

需要证明， $\forall x\in X$，$\tilde{I}=\{\alpha\in I: \langle x, e_{\alpha}\rangle \neq 0\}$ 至多可数 [[Wiki - 可数集合]]

还需要证明求和与 $\tilde{I}$ 元素的排列顺序无关，就可以写成 $\sum_{\alpha\in I} \langle x, e_{\alpha} \rangle e_{\alpha}= \sum_{k=1}^{n} \langle x, e_{\alpha_{k}}\rangle e_{\alpha_{k}}$

[[Wiki - 正交投影]]

