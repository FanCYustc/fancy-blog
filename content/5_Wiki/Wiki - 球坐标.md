---
aliases: 
info: 球坐标，与直角坐标的变换
date: 2023-04-06-星期四 23:05
update: 
tags: [wiki/year2023,wiki/month04]
id: wiki20230406230523
banner: "![[astrowalk.gif]]"
---
---
#几何学 
#数学分析 

## Def1
对半径为 r 的球面定义球坐标
$\vec{r}(\theta,\phi)=(r\sin \theta \cos \phi,r\sin\theta \sin \phi,r\cos\theta)$

## Pro1
可以验证性质
$$
\det \frac{\partial(x,y,z)}{\partial(r,\theta,\phi)}=r^{2}\sin\theta
$$
[[Wiki - 雅各比矩阵]]

[[Wiki - 曲面的面积]]

## Pro2

对于球坐标

$$
\nabla=\mathrm{e_{r}} \frac{\partial}{\partial r} +\frac{1}{r} e_{\theta} \frac{\partial}{\partial\theta} + \frac{1}{r\sin\theta} e_{\phi} \frac{\partial}{\partial \phi}
$$

[[Wiki - 梯度]]


