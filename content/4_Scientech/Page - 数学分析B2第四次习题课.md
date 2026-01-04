---
aliases: 
info: 
date: 2023-04-08-星期六 14:59
update: 
tags: [page/year2023,page/month04]
id: page20230408145913
banner: "![[astroflow.gif]]"
annotation-target: "习题课4.pdf"
---
---
#数学分析/极限 

[[习题课4.pdf]]

### 1
必要性：
$$
\leftrightarrow f(x+\lambda(y-x))-f(x)\leq\lambda(f(y)-f(x))
$$
由微分中值定理
$$
LHS=\sum \frac{{\partial}}{\partial x_{i}}f(x+\lambda\theta(y-x))\cdot\lambda(y_{i}-x_{i})
$$
$$
=\sum\left( \frac{{\partial}}{\partial x_{i}}f(x)+\epsilon_{i} \right)\cdot\lambda(y_{i}-x_{i})
$$
令 $\lambda\to 0$, 由 f 连续性, $\epsilon_{i}\to_{0}$
$$
f(y)-f(x)\geq \sum \frac{{\partial f}}{\partial x_{i}}(x)(y_{i}-x_{i})=(y-x)\cdot \nabla f(x)
$$

充分性：
$$
\begin{array}{l}
f(x)\geq f(z)+(x-z)\cdot \nabla f(z)\\ 
f(y)\geq f(z)+(y-z)\nabla f(z)
\end{array}
$$
Z 待定

取 $z=\lambda(y-x)+x$
得
$$
\lambda f(x)+(1-\lambda)f(y)\geq f(z)+(\lambda(x-z)+(1-\lambda)(y-z))\nabla f(z)=f(\lambda x+(1-\lambda)y)
$$

### 2

曲线为隐函数 $F=f(x,y)-z=0$

所以 P, Q 的法向量为
$$
n(P)=(f_{1}(P),f_{2}(P),-1);n(Q)=(f_{1}(Q),f_{2}(Q),-1)
$$
We have $\mid n(P)\mid,\mid n(Q)\mid\geq 1$

We know $\phi\leq \frac {{\pi}} {2}\sin \phi,\phi \in\left[ 0, \frac{\pi}{2} \right]$

找 $\sin \phi$ 与距离的关系

$$
\begin{array}{l}
\sin^{2}\phi= \frac{{\mid n(P)\times n(Q)\mid}^{2}}{\mid n(P)\mid^{2}\mid n(Q)\mid^{2}} \\
\leq\mid n(P)\times n(Q)\mid^{2} \\
=(f_{x}(P)-f_{x}(Q))^{2}+(f_{y}(P)-f_{y}(Q))^{2}+(f_{x}(P)f_{y}(Q)-f_{y}(P)f_{x}(Q))^{2}
\end{array}
$$

利用二阶偏导有界---用微分中值

 $$
\mid f_{x}(P)-f_{x}(Q)\mid=\mid f_{x x}(R)(x_{P}-x_{Q})+f_{yy}(R)(y_{P}-y_{Q})\mid\leq 2M\rho
$$

一阶导有界：
把上式的 Q 变为固定的 $P_{0}$，对 $\forall P\in D$, $\mid f_{x}(P)-f_{x}(P_{0})\mid\leq 2M\space diam(D)$

So $f_{x},f_{y},f_{x x},f_{xy},f_{yy}<M'$


$$
\mid f_{x}(P)f_{y}(Q)-f_{y}(P)f_{x}(Q)\mid=\mid f_{x}(P)(f_{y}(Q)-f_{y}(P))+f_{y}(P)(f_{x}(P)-f_{x}(Q))\mid\leq 4M'^{2}\rho
$$

### 4
D 投影 H为 ABC 的内心
设 H 到 a, b, c 的距离为 x, y, z, 求条件极值

-》求出来是内心或旁心，再验证

### 5

固定 $B(x_{B},y_{B})$

转化为 $u=(x-x_{B})^{2}+(y-y_{B})^{2}$ 在 F (x, y)=0 的约束下，在 A $(x_{A},y_{A})$ 取极大值

求得
$(x_{A}-x_{B})F_{y}(A)=(y_{A}-y_{B})F_{x}(A)$
即 $(x_{A}-x_{B})dx+(y_{A}-y_{B})dy\mid_{A}=0$

同样在 B 处也成立

### 6

反证：不妨设存在 f (P)>0, 由 f 连续

所以存在 P 邻域为半径为 m 的小正方形，满足 $\forall Q\in U_{m,P},f(Q)>0$

将边长为 1 的正方形分为 n*n 的小正方形，2n<m,--用组合方法正每个小正方形内的积分都是 0

