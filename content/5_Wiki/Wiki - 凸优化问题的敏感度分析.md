---
aliases: 
info: 
date: 2025-04-28-星期一 17:01
update: 
tags:
  - wiki/year2025
  - wiki/month04
  - 凸优化
id: wiki20250428170105
banner: "![[astrowalk.gif]]"
---
---
对凸优化问题
![[Wiki - 凸优化问题标准形式#Def 1 凸优化问题]]

考虑扰动问题
$$
\begin{align}
\min \quad & f_{0}(x) \\
s.t.& f_{i}(x)\leq u_{i},i=1,\dots,m \\
 & h_{j}(x)= v_{j},j=1,\dots,p 
\end{align}
$$

设 $p^{*}(u,v)$ 为现在的最优值

假设强对偶性成立且对偶问题[[Wiki - Lagrange对偶问题|强对偶与弱对偶]]最优值可以达到. 设 $\left ( {{\lambda }^{ \star  },{\nu }^{ \star  }} \right)$ 是未被扰动的问题的对偶问题的最优解, 那么我们有

$$
{p}^{ \star  }\left( {u,v}\right)  \geq  {p}^{ \star  }\left( {0,0}\right)  - {\lambda }^{\star \top }u - {\nu }^{\star \top }v
$$


