---
aliases: 
info: 数量场的曲线积分的定义
date: 2023-06-23-星期五 21:42
update: 
tags: [wiki/year2023,wiki/month06]
id: wiki20230623214204
banner: "![[astrowalk.gif]]"
---
---

#数学分析/曲线积分和曲面积分   

## Def1 第一型曲线积分

设 L 是三维空间中一条光滑 (或逐段光滑) 曲线段[[Wiki - 隐式曲线和曲面]], $\phi(x,y,z)$ 是定义在曲线 $L$ 上的数量场 (或函数）. 作 $L$ 的任意分割：$M_0，M_1，…，M_n,$ 并记每段 $M_{i-1}M_i$ 的弧长为 $\Delta s_i,$ 最大长度为 $\lambda=\operatorname*{max}\{|\Delta s_{i}|1=1,\cdots,n\}$ 在每段弧上 $\widehat{M_{i-1}M_i}$ 任取一点 $N_i(\xi_i,\eta_i,\zeta_i)$. 如果下列和式的极限

$$
\lim\limits_{\lambda\to0}\sum\limits_{i=1}^n\phi(\xi_i,\eta_i,\zeta_i)\Delta s_i,
$$

是一个有限数, 且与点 $N_i(\xi_i,\eta_i,\zeta_i)$ 的选择无关, 则称函数 $\phi(x,y,z)$ 在曲线上可积, 极限值称为**数量场在曲线上的积分**, 或称为第一型曲线积分, 记为

$$
\int_L\phi(x,y,z)\mathrm{d}s.
$$





