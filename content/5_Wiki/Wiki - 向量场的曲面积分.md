---
aliases: 
info: 向量场曲面积分计算
date: 2023-06-29-星期四 10:33
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230629103322
banner: "![[astrowalk.gif]]"
---
---
#数学分析/曲线积分和曲面积分 

## 向量场曲面积分计算
                  $$\int \int \vec v\cdot d\vec s = \int \mathop \int \limits_S \vec v\cdot\vec nds$$

n 是曲面的法向量[[Wiki - 参数曲面的切平面和法向量场]]

                 $$\begin{array}{*{20}{c}}{\vec n\cdot d S = {\rm{cos}}\alpha dS\vec i + {\rm{cos}}\beta dS\vec j + {\rm{cos}}\gamma dS\vec k}\\{\left\{ {\begin{array}{*{20}{c}}{cosadS = dydz}\\{{\rm{cos}}\beta dS = dzdx}\\{{\rm{cos}}\gamma ds = dxdy}\end{array}} \right.}\\{\mathop \smallint \limits_S \vec v\cdot\vec ndS = \mathop \smallint \limits_S \left( {Pdydz + Qdzdx + Rdxdy} \right)}\end{array}$$

设 u, v 是正向参数 [[Wiki - 曲面的定向]]

```ad-note

注意**不求绝对值**

```

```ad-theorem


$$
\begin{aligned}

\\

\mathop{\mathrm{d}\boldsymbol{S}}&={\boldsymbol{n}}\mathrm{d}S={\frac{{\boldsymbol{r}}_{u}^{\prime}\times{\boldsymbol{r}}_{v}^{\prime}}{|{\boldsymbol{r}}_{u}^{\prime}\times{\boldsymbol{r}}_{v}^{\prime}|}}\mathrm{d}S=({\boldsymbol{r}}_{u}^{\prime}\times{\boldsymbol{r}}_{v}^{\prime})\mathrm{d}u\mathrm{d}v \\

\iint_{\boldsymbol{S}}\boldsymbol{v\cdot\mathrm{d}\boldsymbol{S}}& =\iint_S(\boldsymbol{v\cdot n})\mathrm{d}S \\

&=\iint_D(\boldsymbol{v}\cdot\boldsymbol{r}_u'\times\boldsymbol{r}_v')\mathrm{d}u\mathrm{d}v \\

&=\iint_D\begin{vmatrix}P&Q&R\\ x'_u&y'_u&z'_u\\ x'_v&y'_v&z'_v\end{vmatrix}\mathrm{d}u\mathrm{d}v \\

&=\iint_{D}\left(P\frac{\partial(y,z)}{\partial(u,v)}+Q\frac{\partial(z,x)}{\partial(u,v)}+R\frac{\partial(x,y)}{\partial (u,v)}\right)\mathrm{d}u\mathrm{d}v.

\end{aligned}
$$


```

[[Wiki - 曲面的面积]]

转换为二重积分[[Wiki - 二重累次积分]]