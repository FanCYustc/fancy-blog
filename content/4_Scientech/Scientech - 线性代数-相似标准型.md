---
aliases: 
info: 23秋线性代数B2第4章
date: 2023-11-22-星期三 11:13
update: 
tags:
  - scientech/year2023
  - scientech/month11
  - 线性代数/矩阵
  - 线性代数/线性空间
  - 线性代数/相似标准型
id: scientech20231122111345
banner: "![[astrofishing.gif]]"
---
---

# 第四章-相似标准型

[第四章课件](E:\课程资料\线性代数B2\线性代数B2-4.pdf)

三种角度解释：
1、矩阵的相似变换
2、空间分解
3、多项式矩阵相似

## 4.1 Jordan 标准型

此时讨论的都是复数域上的方阵

先不证只记住相似于 Jordan 标准型

[[Wiki - Jordan标准型]]

知道 Jordan 标准型的形式，若尔当块有好几种可能，如何求出唯一对应的那种？

[[Wiki - Jordan标准型的求法]]

### 4.2 空间分解定理

下面考虑如何证明 Jordan 标准型的存在  唯一性？

### 不变子空间

[[Wiki - 限制变换和商变换]]

[[Wiki - 不变子空间]]

[[Wiki - 广义特征向量]]

[[Wiki - 相似于Jordan标准型]]

### 空间分解

[[Wiki - 广义特征向量]]

有根子空间分解对应到矩阵上，就是说明了矩阵可以相似于上三角矩阵

[[Wiki - 矩阵相似于上三角矩阵]]

现在有 $V=W_{\lambda_{1}}\oplus W_{\lambda_{2}}\dots\oplus W_{\lambda_{s}}$ 但离若尔当标准型还有一些距离，可不可以继续优化？

[[Wiki - 幂零变换]]

[[Wiki - 循环子空间]]

利用循环子空间要分解 $W_{\lambda_{i}}=C_{i1}\oplus C_{i2}\dots\oplus C_{im_{i}}$

每一个 $C_{ij}$ 其实就会在一组基下对应一个 Jordan 块

$$
J=\begin{pmatrix}
0&1 \\
& \ddots&1 \\
&&0
\end{pmatrix}
$$

要 $\mathscr{A}(x_{1},x_{2},\dots,x_{n})=(x_{1},\dots,x_{n})J$，即 $\mathscr{A}x_{1}=0,\mathscr{A}(x_{2})=x_{1},\dots$
所以每个 $C= <x_{n},\mathscr{A}(x_{n}),\dots,\mathscr{A}^{n-1}(x_{n})>$

由于循环子空间与其生成的向量有关，这里重新定义最小多项式

[[Wiki - 向量关于线性变换的最小多项式]]

[[Wiki - 根子空间分解]]这样，不仅证明了 Jordan 标准型的存在唯一性，也给出了相似于 Jordan 标准型时的基向量

对于一般的线性变换，可知 $\mathscr{A}-\lambda \mathscr{I}|_{G(\lambda,\mathscr{A})}$ 上是幂零变换，套用前面的结论

## 4.3 多项式矩阵相抵

### 多项式矩阵

前面是从几何的角度证明 Jordan 标准型相似。下面从代数的角度给一种证明

[[Wiki - 多项式矩阵]]

[[Wiki - 多项式矩阵可逆]]

### 多项式矩阵相抵

[[Wiki - 多项式矩阵相抵]]

得到了相抵标准型 Smith 标准型

自然的问题是 Smith 标准型是否唯一？

考虑 $A(\lambda)$ 的任意 k 阶子式

$$
A(\lambda)\begin{pmatrix}
i_{1}& \dots & i_{k} \\
j_{1}& \dots &j_{k}
\end{pmatrix}
$$

由 [[Wiki - 矩阵乘积的行列式]]，

$$
A(\lambda)\begin{pmatrix}
i_{1} & \dots &i_{k} \\
j_{1}& \dots & j_{k}
\end{pmatrix}=\sum_{p_{i},q_{i}}P(\lambda)\begin{pmatrix}
i_{1} & \dots &i_{k} \\
p_{1} & \dots & p_{k}
\end{pmatrix}\begin{pmatrix}
D(\lambda) & 0 \\
0& 0
\end{pmatrix}
\begin{pmatrix}
p_{1} & \dots & p_{k} \\
q_{1} &\dots &q_{k} 
\end{pmatrix}
Q(\lambda)\begin{pmatrix}
q_{1} &\dots &q_{k} \\
j_{1} &\dots & j_{k}
\end{pmatrix}
$$

只需考虑 A 的子式非零的情况，则 $k<r, 1\leq i_{1}<\dots< i_{k}\leq r, 1\leq j_{1}<\dots< j_{k}\leq r$

由于 Smith 标准型有 $\forall 1\leq p_{1}<\dots<p_{k}\leq r$
$$
d_{1}(\lambda)d_{2}(\lambda)\dots d_{k}(\lambda)| d_{p_{1}}(\lambda)\dots d_{p_{k}}(\lambda)
$$
可以得到 Smith 标准型的

$$
d_{1}(\lambda)\dots d_{k}(\lambda)|A(\lambda)\begin{pmatrix}
i_{1} & \dots &i_{k} \\
j_{1} &\dots & j_{k}
\end{pmatrix}
$$

记所有非零 k 阶子式的最大公因子为 $D_{k}(\lambda)$

试证 $D_{k}(\lambda)=d_{1}(\lambda)\dots d_{k}(\lambda)$，这样就有 $d_{k}(\lambda)= \frac{D_{k}(\lambda)}{D_{k-1}(\lambda)}$ 就唯一确定了

[[Wiki - 多项式矩阵的行列式因子]]

[[Wiki - 多项式矩阵的不变因子]]

理论上是这样，但要是求每个行列式因子来求 Smith 标准型太麻烦，具体情况还要具体求

[[Wiki - 多项式矩阵的初等因子组]]

[[Wiki - 矩阵的相抵与相似]]

从初等因子组给出了相似于 Jordan 标准型的另一种证法

[[Wiki - 相似于Jordan标准型]]

## 4.4 实方阵的实相似

实方阵比较好计算，有没有可能适当变换 Jordan 块，变成实方阵标准型

[[Wiki - 实方阵的实相似]]

