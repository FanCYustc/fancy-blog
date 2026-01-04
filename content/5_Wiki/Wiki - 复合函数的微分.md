---
aliases:
  - 链式法则
info: 复合函数可微判定,链式法则
date: 2023-03-19-星期日 19:52
update: 2023-03-19-Sunday 19:58:11
tags:
  - wiki/year2023
  - wiki/month03
id: wiki20230319195216
banner: "![[astrowalk.gif]]"
---
---
#数学分析/多变量微积分 

## Pro1
$$
\begin{array}{l}
设  u=f(\xi, \zeta)  在区域  \widetilde{D}  中可微,\\  \xi=\phi(x, y), \zeta=\psi(x, y)  在区域  D  中 可微,\\ 则复合函数  u=f(\phi(x, y), \psi(x, y))  在  D  中可微.
\end{array}
$$
证明写成微分形式证剩下的各种小量加起来是 $o(\sqrt{ \Delta\xi^{2}+\Delta\zeta^{2}})$.

## 链式法则

设 $u = f\left( {\xi ,\zeta }\right)$ 在区域 $\widetilde{D}$ 中可微, $\xi  = \varphi \left( {x,y}\right) ,\zeta  = \psi \left( {x,y}\right)$ 在区域 $D$ 中可微, 则复合函数 $u = f\left( {\varphi \left( {x,y}\right) ,\psi \left( {x,y}\right) }\right)$ 在 $D$ 中偏导数满足下列链式法则

$$
\frac{\partial u}{\partial x} = \frac{\partial u}{\partial \xi }\frac{\partial \xi }{\partial x} + \frac{\partial u}{\partial \zeta }\frac{\partial \zeta }{\partial x};
\frac{\partial u}{\partial y} = \frac{\partial u}{\partial \xi }\frac{\partial \xi }{\partial y} + \frac{\partial u}{\partial \zeta }\frac{\partial \zeta }{\partial y}$$

写成微分形式更加直观 [[Wiki - 映射的微分]]

