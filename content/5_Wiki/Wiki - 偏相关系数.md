---
aliases: 
info: 
date: 2024-09-23-星期一 10:09
update: 
tags:
  - wiki/year2024
  - wiki/month09
  - 回归分析
  - 相关
id: wiki20240923100953
banner: "![[astrowalk.gif]]"
---
---

## Def 1 偏相关系数

对于随机变量 x, y 和干扰随机变量 $\boldsymbol{z}$，$x^{\perp},y^{\perp}$ 代表对 $\boldsymbol{z}$ 去相关化的随机变量，定义关于 $\boldsymbol{z}$ 的偏相关系数为
$$
\rho_{xy\bullet \boldsymbol{z}}= \frac{{Cov(x^{\perp},y^{\perp})}}{\sqrt{ Var[x^{\perp}]Var[y^{\perp}] }}= \frac{{\Sigma_{xy\bullet \boldsymbol{z}}}}{\sqrt{ \Sigma_{x x\bullet \boldsymbol{z}}\Sigma_{yy\bullet \boldsymbol{z}} }}
$$
其中 $\Sigma_{xy\bullet \boldsymbol{z}}= \Sigma_{xy}- \Sigma_{x\boldsymbol{z}}\Sigma_{zz}^{-1}\Sigma_{zy}$


[[Wiki - 精度矩阵]]