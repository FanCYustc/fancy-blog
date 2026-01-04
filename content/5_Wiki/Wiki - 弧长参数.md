---
aliases: 
info: 弧长参数的定义，其导数的性质
date: 2023-03-19-星期日 21:19
update: 
tags: [wiki/year2023,wiki/month03]
id: wiki20230319211934
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Def1 弧长函数

[[Wiki - 连通区域#Definition3]]

设 $\text{L}$ 是正则曲线 $(\:|\boldsymbol{r}^{\prime}(t)|>0$ ), 在 $L$ 上取一动点 $M(t),$ 则从起点 A到动点 $M(t)$ 的弧 $\hat{AM}$ 的长度为

$$
s(t)=\int_{\alpha}^{t}|\boldsymbol{r}'(\tau)|\:\mathrm{d}\tau,\:t\in[\alpha,\:\beta].
$$

这是一个**变上限积分**给出的函数, 显然 $s(t)>0,\:s(\alpha)=0$，且

$$
\frac{\mathrm{d}s}{\mathrm{d}t}=\sqrt{x^{\prime}{}^{2}(t)+{y^{\prime}}^{2}(t)+{z^{\prime}}^{2}(t)}=|\boldsymbol{r}^{\prime}(t)|>0,
$$

即函数 $s(t)$ 是严格单调增的, 所以存在反函数 $t=t(s)$ 这样, 曲线可以以弧长作为参数

$$
\boldsymbol{r}=\boldsymbol{r}(t)=\boldsymbol{r}(t(s))=\boldsymbol{r}(s)
$$

或者

$$
x=x(s),\:y=y(s),\:z=z(s),
$$



## Pro1 弧长函数的性质

$$
{\frac{\mathrm{d}s}{\mathrm{d}t}}=|{\boldsymbol{r}}^{\prime}(t)|,{\frac{\mathrm{d}t}{\mathrm{d}s}}={\frac{1}{|{\boldsymbol{r}}^{\prime}(t)|}}
$$

就得到一个重要结论

$$
r'(s)=\frac{r'(t)}{|r'(t)|},
$$

即在自然参数方程表示中, $r\left(s\right)$ 对弧长 s 的微商, 是曲线 L 在点 $M\left(s\right)$ 处的单位切向量, 并指向弧长增加的方向. 写成分量即是

$$
|r'(s)|^2=\left(\frac{\mathrm dx}{\mathrm d s}\right)^2+\left(\frac{\mathrm dy}{\mathrm d s}\right)^2+\left(\frac{\mathrm dz}{\mathrm d s}\right)^2+\left(\frac{\mathrm dz}{\mathrm d s}\right)^2=1
$$


### 应用

对 F 的一个等值面，存在 $\mathrm{r}(t)$ 满足 $F(x(t),y(t))\equiv C$.

则 $0=\frac{d}{dt}(F (x, y))=F_{x}x' (t)+F_{y}y' (t)=\nabla F|_{r (t)}\cdot \vec{r}'(t)$
[[Wiki - 梯度]]

换为弧长参数，$\phi(s)=F(x(s),y(s))$

有 $\frac {{d\phi}} {ds}=\nabla F|_{r (s)}\cdot\vec{r}'(s)\leq\mid \nabla F\mid$.

e.g.电场的等势面，取曲线为电场线，其 $\vec{r}'(s)$ 处处与 $\nabla F$ 平行，与等势面在交点的切线垂直

