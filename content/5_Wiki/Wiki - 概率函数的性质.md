---
aliases: 
info: 概率函数的性质
date: 2023-10-08-星期日 21:11
update: 
tags:
  - wiki/year2023
  - wiki/month10
  - 概率论
id: wiki20231008211109
banner: "![[astrowalk.gif]]"
---
---

## Pro 1 概率函数的性质

1. 非负性：任意事件 E 有 $P(E)\geq 0$
2. 规范性：$P(\Omega)=1$
3. 可列可加性：如果 $\{E_n,\:n\in\mathbb{N}\}$ 是一列两两不交的事件, 那么就应该有
$$\mathbf{P}\left(\bigcup_{n=1}^\infty E_n\right)=\sum_{n=1}^\infty\mathbf{P}(E_n).$$

4. $\mathbf{P}(\varnothing)=0.$
5. 有限可加性：如果 $\{E_k,\:k=1,2\dots,m\}$ 是一列两两不交的事件, 那么就应该有
$$\mathbf{P}\left(\bigcup_{n=1}^m E_n\right)=\sum_{n=1}^m\mathbf{P}(E_n).$$
6. 可减性：如果 $E_1\in\mathscr{F},\:E_2\in\mathscr{F}$, 并且 $E_1\supset E_2$, 则有

$$
\mathbf{P}(E_{1}-E_{2})=\mathbf{P}(E_{1})-\mathbf{P}(E_{2}).
$$
7. 单调性. 如果 $E_1\in\mathscr{F},\:E_2\in\mathscr{F}$, 并且 $E_1\supset E_2$, 则有

$$
\mathbf{P}(E_{1})\geqslant\mathbf{P}(E_{2}).
$$
8. $P(E^{c})=1-P(E)$
9. 加法定理：如果 $\{E_k,\:k=1,2\dots,n\}$ 是任意 n 个事件，则
$$\mathbf{P}\left(\bigcup\limits_{k=1}^nE_k\right)=\sum\limits_{k=1}^n\mathbf{P}(E_k)-\sum\limits_{1\leqslant i<j\leqslant n}\mathbf{P}(E_iE_j)+\sum\limits_{1\leqslant i<j<k\leqslant n}\mathbf{P}(E_iE_jE_k)+\cdots+(-1)^{n-1}\mathbf{P}(E_1E_2\cdots E_n)$$

10. 下连续性：如果 $\{E_n,\:n\in\mathbb{N}\}$ 是上升的事件序列, 即 $E_n\subset E_{n+1},\:n=1,2,\cdots$，则有

$$
\mathbf{P}\left(\bigcup_{n=1}^\infty E_n\right)=\lim_{n\to\infty}\mathbf{P}(E_n).
$$
11. 上连续性：如果 $\{E_n,\:n\in\mathbb{N}\}$ 是下降的事件序列, 即 $E_n\supset E_{n+1},\:n=1,2,\cdots$，则有
$$
\mathbf{P}\left(\bigcap\limits_{n=1}^\infty E_n\right)=\lim\limits_{n\to\infty}\mathbf{P}(E_n).
$$
12. 对一列事件
$$\mathbf{P}\left(\bigcup_{n=1}^\infty E_n\right)\leqslant\sum_{n=1}^\infty\mathbf{P}(E_n).$$

