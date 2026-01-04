---
aliases: 
info: 向量值函数运算
date: 2023-03-19-星期日 20:12
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230319201231
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## 例子
$\mathbb{r}(t)=x(t)\mathbb{i}+y(t)\mathbb{j}+z(t)\mathbb{k}$
则 $r'(t)=\frac{{dx}}{dt}(t)\mathbb{i}+{\frac{dy}{dt}}(t)\mathbb{j}+\frac{{dz}}{dt}(t)\mathbb{k}$.


对一般的，表示为雅各比矩阵 [[Wiki - 雅各比矩阵]]

## 运算法则

Suppose $\boldsymbol{a}(t),\boldsymbol{b}(t)$ 是向量值函数，f (t) 是数量函数，则

$$
\begin{aligned}
&1^{\circ}\frac{\mathrm{d}}{\mathrm{d}t}(f\boldsymbol{a})=f\frac{\mathrm{d}\boldsymbol{a}}{\mathrm{d}t}+\frac{\mathrm{d}f}{\mathrm{d}t}\boldsymbol{a}, \\
&2^{\circ}\frac{\mathrm{d}}{\mathrm{d}t}(\boldsymbol{a}\cdot\boldsymbol{b})=\frac{\mathrm{d}\boldsymbol{a}}{\mathrm{d}t}\cdot\boldsymbol{b}+\boldsymbol{a}\cdot\frac{\mathrm{d}\boldsymbol{b}}{\mathrm{d}t}, \\
&3^{\circ}\frac{\mathrm{d}}{\mathrm{d}t}(\boldsymbol{a}\times\boldsymbol{b})=\frac{\mathrm{d}\boldsymbol{a}}{\mathrm{d}t}\times\boldsymbol{b}+\boldsymbol{a}\times\frac{\mathrm{d}\boldsymbol{b}}{\mathrm{d}t}.
\end{aligned}
$$
