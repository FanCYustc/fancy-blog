---
aliases: 
info: 克拉默法则
date: 2023-05-15-星期一 23:28
update: 
tags: [wiki/year2023,wiki/month05]
id: wiki20230515232822
banner: "![[astrowalk.gif]]"
---
---
#线性代数/行列式 


## Pro1 克拉默法则

当系数矩阵  $\boldsymbol{A}=\left (a_{i j}\right)_{n \times n}$  的**行列式不等于零**时[[Wiki - 行列式与可逆]], 方程组

$$
\left\{\begin{array}{l}
a_{11} x_{1}+a_{12} x_{2}+\cdots+a_{1 n} x_{n}=b_{1}, \\
a_{21} x_{1}+a_{22} x_{2}+\cdots+a_{2 n} x_{n}=b_{2}, \\
\cdots \cdots \cdots \cdots \\
a_{n 1} x_{1}+a_{n 2} x_{2}+\cdots++a_{n n} x_{n}=b_{n}
\end{array}\right.
$$

有唯一解

$$
\left (x_{1}, x_{2}, \cdots, x_{n}\right)=\left (\frac{\Delta_{1}}{\Delta}, \frac{\Delta_{2}}{\Delta}, \cdots, \frac{\Delta_{n}}{\Delta}\right),
$$

其中  $\Delta=\operatorname{det}(\boldsymbol{A}), \Delta_{i}$  是将  $\boldsymbol{A}$  的第  i  列换成  $\boldsymbol{b}=\left (b_{1}, b_{2}, \cdots, b_{n}\right)^{\mathrm{T}}$ 后所得方阵的行列式,  $i=1, 2, \cdots, n$ 。

[[Scientech - 线性代数-线性方程组]]

对应满秩时有唯一解